{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Matching( SenseChoice(..),Fields(..),DepTree(..),Prop,Stat(..),
                 category, node, label, pos, equal_choice, best
               ) where

import PGF2
import Foreign
import Foreign.C

#include "em_core.h"

newtype SenseChoice = SenseChoice (Ptr ())
newtype Fields  = Fields  (Ptr ())
newtype DepTree = DepTree (Ptr ()) deriving Storable
data Stat = S {-# UNPACK #-} !CInt {-# UNPACK #-} !CInt
newtype Prop = Prop (SenseChoice -> Fields -> DepTree -> IO Stat)

category :: Cat -> [Prop] -> (Cat,SenseChoice -> Fields -> DepTree -> IO Stat)
category cat props = (cat,check props)
  where
    check []          = \choice fields dtree -> stat 0 1
    check (Prop p:ps) = \choice fields dtree -> do (S res1 c1) <- p choice fields dtree
                                                   (S res2 c2) <- check ps choice fields dtree
                                                   stat (res1+res2) (c1+c2)

node :: [Prop] -> Prop
node props = Prop $ \choice fields (DepTree ptr) -> do
  n_children <- (#peek DepTree, n_children) ptr
  let children = ptr `plusPtr` (#offset DepTree, child)
  match choice fields 0 n_children children
  where
    match choice fields i n children
      | i >= n    = stat 0 1
      | otherwise = do ptr   <- peek (children `plusPtr` (i*sizeOf children))
                       stat1 <- check props choice fields ptr
                       stat2 <- match choice fields (i+1) n children
                       best stat1 stat2

    best s1@(S res1 _) s2@(S res2 _)
      | res1 > res2 = return $! s1
      | otherwise   = return $! s2

    check []          = \choice fields ptr -> stat 0 1
    check (Prop p:ps) = \choice fields ptr -> do (S res1 c1) <- p choice fields (DepTree ptr)
                                                 (S res2 c2) <- check ps choice fields ptr
                                                 stat (res1+res2) (c1+c2)

label :: String -> Prop
label l = Prop $ \choice fields dtree  -> do
  res <- withCString l (dtree_match_label fields dtree)
  stat res 1

foreign import ccall unsafe dtree_match_label :: Fields -> DepTree -> CString -> IO CInt

pos :: String -> Prop
pos l = Prop $ \choice fields dtree -> do
  res <- withCString l (dtree_match_pos fields dtree)
  stat res 1

foreign import ccall unsafe dtree_match_pos :: Fields -> DepTree -> CString -> IO CInt

equal_choice :: Prop
equal_choice = Prop $ \choice fields dtree  -> do
  res <- dtree_match_same_choice choice dtree
  stat res 1

foreign import ccall unsafe dtree_match_same_choice :: SenseChoice -> DepTree -> IO CInt

stat res c = return $! S res c

best :: [Prop] -> Prop
best = foldl1 best
  where
    best (Prop f) (Prop g) = Prop $ \choice fields dtree -> do
      s1@(S res1 _) <- f choice fields dtree
      s2@(S res2 _) <- g choice fields dtree
      if res1 > res2
        then return $ s1
        else return $ s2


