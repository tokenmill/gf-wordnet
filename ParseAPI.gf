--# -path=.:alltenses

concrete ParseAPI of Parse = CatAPI, WordNetAPI ** {

lincat 
  ListAP, ListAdv, ListAdV, ListCN, ListIAdv, ListNP, ListRS, ListS, 
  Digit, Dig, QVP, Sub10, Sub100, Sub1000, Sub1000000, Sub1000000000,
  Mark, RNP, RNPList, CNN, VPI, VPS, VPI2, VPS2, ListComp, ListDAP, ListImp, ListVPI, ListVPI2, 
  ListVPS, ListVPS2, ListDAP, Language, Timeunit, Hour, Weekday, Month, Monthday, Year,
  Inflection, Definition, Document, Tag = Term ;

lin AAnter = mkTerm "anteriorAnt" ;
lin ASimul = mkTerm (hideOpt "simultaneousAnt") ;
lin AdAP ada_1 ap_2 = mkTerm "mkAP" ada_1 (flatIfTerm ap_2) ;
lin AdAdv ada_1 adv_2 = mkTerm "mkAdv" ada_1 adv_2 ;
lin AdNum adn_1 card_2 = mkTerm "mkCard" adn_1 card_2 ;
lin AdVVP adv_1 vp_2 = mkTerm "mkVP" adv_1 vp_2 ;
lin AdVVPSlash adv_1 vpslash_2 = mkTerm "mkVPSlash" adv_1 vpslash_2 ;
lin AddAdvQVP qvp_1 iadv_2 = mkTerm "mkQVP" qvp_1 iadv_2 ;
lin AdjCN ap_1 cn_2 = mkTerm "mkCN" ap_1 cn_2 ;
lin AdjOrd ord_1 = mkTerm "mkAP" ord_1 ;
lin AdnCAdv cadv_1 = mkTerm "mkAdN" cadv_1 ;
lin AdvAP ap_1 adv_2 = mkTerm "mkAP" ap_1 adv_2 ;
lin AdvCN cn_1 adv_2 = mkTerm "mkCN" cn_1 adv_2 ;
lin AdvIAdv iadv_1 adv_2 = mkTerm "mkIAdv" iadv_1 adv_2 ;
lin AdvIP ip_1 adv_2 = mkTerm "mkIP" ip_1 adv_2 ;
lin AdvNP np_1 adv_2 = mkTerm "mkNP" np_1 adv_2 ;
lin AdvQVP vp_1 iadv_2 = mkTerm "mkQVP" vp_1 iadv_2 ;
lin AdvS adv_1 s_2 = mkTerm "mkS" adv_1 s_2 ;
lin AdvSlash clslash_1 adv_2 = mkTerm "mkClSlash" clslash_1 adv_2 ;
lin AdvVP vp_1 adv_2 = mkTerm "mkVP" vp_1 adv_2 ;
lin AdvVPSlash vpslash_1 adv_2 = mkTerm "mkVPSlash" vpslash_1 adv_2 ;
lin ApposCN cn_1 np_2 = mkTerm "mkCN" cn_1 np_2 ;
lin BaseAP ap_1 ap_2 = mkFlat (mkTerm "mkListAP" ap_1 ap_2) ;
lin BaseAdv adv_1 adv_2 = mkFlat (mkTerm "mkListAdv" adv_1 adv_2) ;
lin BaseCN cn_1 cn_2 = mkTerm "mkListCN" cn_1 cn_2 ;
lin BaseIAdv iadv_1 iadv_2 = mkTerm "mkListIAdv" iadv_1 iadv_2 ;
lin BaseNP np_1 np_2 =mkFlat (mkTerm "mkListNP" np_1 np_2) ;
lin BaseRS rs_1 rs_2 = mkTerm "mkListRS" rs_1 rs_2 ;
lin BaseS s_1 s_2 = mkFlat (mkTerm "mkListS" s_1 s_2) ;
lin CAdvAP cadv_1 ap_2 np_3 = mkTerm "mkAP" cadv_1 ap_2 np_3 ;
lin CleftAdv adv_1 s_2 = mkTerm "mkCl" adv_1 s_2 ;
lin CleftNP np_1 rs_2 = mkTerm "mkCl" np_1 rs_2 ;
lin CompAP ap_1 = mkFlat (mkTerm "mkComp" (flatIfTerm ap_1)) ;
lin CompAdv adv_1 = mkFlat (mkTerm "mkComp" adv_1) ;
lin CompCN cn_1 = mkFlat (mkTerm "mkComp" (flatIfTerm cn_1)) ;
lin CompIAdv iadv_1 = mkTerm "mkIComp" iadv_1 ;
lin CompIP ip_1 = mkTerm "mkIComp" ip_1 ;
lin CompNP np_1 = mkFlat (mkTerm "mkComp" np_1) ;
lin ComplA2 a2_1 np_2 = mkTerm "mkAP" a2_1 np_2 ;
lin ComplN2 n2_1 np_2 = mkTerm "mkCN" (flatIfTerm n2_1) np_2 ;
lin ComplN3 n3_1 np_2 = mkFlat (mkTerm "mkN2" n3_1 np_2) ;
lin ComplSlash vpslash_1 np_2 = mkFlat (mkTerm "mkVP" (flatIfTerm vpslash_1) np_2) ;
lin ComplSlashIP vpslash_1 ip_2 = mkTerm "mkQVP" vpslash_1 ip_2 ;
lin ComplVA va_1 ap_2 = mkFlat (mkTerm "mkVP" va_1 (flatIfTerm ap_2)) ;
lin ComplVQ vq_1 qs_2 = mkTerm "mkVP" vq_1 qs_2 ;
lin ComplVS vs_1 s_2 = mkTerm "mkVP" vs_1 s_2 ;
lin ComplVV _ _ vv_1 vp_2 = mkFlat (mkTerm "mkVP" vv_1 vp_2) ;
lin ConjAP conj_1 listap_2 = mkTerm "mkAP" conj_1 (flatIfTerm listap_2) ;
lin ConjAdv conj_1 listadv_2 = mkTerm "mkAdv" conj_1 (flatIfTerm listadv_2) ;
lin ConjCN conj_1 listcn_2 = mkTerm "mkCN" conj_1 listcn_2 ;
lin ConjIAdv conj_1 listiadv_2 = mkTerm "mkIAdv" conj_1 listiadv_2 ;
lin ConjNP conj_1 listnp_2 = mkTerm "mkNP" conj_1 (flatIfTerm listnp_2) ;
lin ConjRS conj_1 listrs_2 = mkTerm "mkRS" conj_1 listrs_2 ;
lin ConjS conj_1 lists_2 = mkTerm "mkS" conj_1 (flatIfTerm lists_2) ;
lin ConsAP ap_1 listap_2 = mkTerm "mkListAP" ap_1 listap_2 ;
lin ConsAdv adv_1 listadv_2 = mkTerm "mkListAdv" adv_1 listadv_2 ;
lin ConsCN cn_1 listcn_2 = mkTerm "mkListCN" cn_1 listcn_2 ;
lin ConsIAdv iadv_1 listiadv_2 = mkTerm "mkListIAdv" iadv_1 listiadv_2 ;
lin ConsNP np_1 listnp_2 = mkTerm "mkListNP" np_1 listnp_2 ;
lin ConsRS rs_1 listrs_2 = mkTerm "mkListRS" rs_1 listrs_2 ;
lin ConsS s_1 lists_2 = mkTerm "mkListS" s_1 lists_2 ;
lin D_0 = mkTerm "n0_Dig" ;
lin D_1 = mkTerm "n1_Dig" ;
lin D_2 = mkTerm "n2_Dig" ;
lin D_3 = mkTerm "n3_Dig" ;
lin D_4 = mkTerm "n4_Dig" ;
lin D_5 = mkTerm "n5_Dig" ;
lin D_6 = mkTerm "n6_Dig" ;
lin D_7 = mkTerm "n7_Dig" ;
lin D_8 = mkTerm "n8_Dig" ;
lin D_9 = mkTerm "n9_Dig" ;
lin DefArt = mkTerm "the_Quant" ;
lin DetCN det_1 cn_2 = mkTerm "mkNP" (flatIfTerm det_1) (flatIfTerm cn_2) ;
lin DetQuant quant_1 num_2 = mkFlat (mkTerm "mkDet" quant_1 num_2) ;
lin DetQuantOrd quant_1 num_2 ord_3 = mkTerm "mkDet" quant_1 num_2 ord_3 ;
lin EmbedQS qs_1 = mkTerm "mkSC" qs_1 ;
lin EmbedS s_1 = mkTerm "mkSC" s_1 ;
lin EmbedVP vp_1 = mkTerm "mkSC" vp_1 ;
lin ExistIP ip_1 = mkTerm "mkQCl" ip_1 ;
lin ExistNP np_1 = mkTerm "mkCl" np_1 ;
lin ExtAdvS adv_1 s_2 = mkTerm "mkS" adv_1 s_2 ;
lin FunRP prep_1 np_2 rp_3 = mkTerm "mkRP" prep_1 np_2 rp_3 ;
lin GenericCl vp_1 = mkTerm "genericCl" vp_1 ;
lin IDig dig_1 = mkTerm "mkDigits" (mkTerm "\"999999\"") ; -- mkTerm "mkDigits" dig_1 ;
lin IIDig dig_1 digits_2 = mkTerm "mkDigits" (mkTerm "\"999\"") ; -- mkTerm "mkDigits" dig_1 digits_2 ;
lin IdRP = mkTerm "which_RP" ;
lin IdetCN idet_1 cn_2 = mkTerm "mkIP" idet_1 cn_2 ;
lin IdetIP idet_1 = mkTerm "mkIP" idet_1 ;
lin IdetQuant iquant_1 num_2 = mkTerm "mkIDet" iquant_1 num_2 ;
lin ImpP3 np_1 vp_2 = mkTerm "mkUtt" np_1 vp_2 ;
lin ImpPl1 vp_1 = mkTerm "lets_Utt" vp_1 ;
lin ImpVP vp_1 = mkTerm "mkImp" vp_1 ;
lin ImpersCl vp_1 = mkTerm "mkCl" vp_1 ;
lin IndefArt = mkTerm "a_Quant" ;
lin MassNP cn_1 = mkTerm "mkNP" cn_1 ;
lin NoPConj = mkTerm (hide "NoPConj") ;
lin NoVoc = mkTerm (hide "NoVoc") ;
lin NumCard card_1 = mkTerm "mkNum" card_1 ;
lin NumDigits digits_1 = mkTerm "mkCard" digits_1 ;
lin NumNumeral numeral_1 = mkTerm "mkCard" numeral_1 ;
lin NumPl = mkTerm "pluralNum" ;
lin NumSg = mkTerm (hideOpt "singularNum") ;
lin OrdDigits digits_1 = mkTerm "mkOrd" digits_1 ;
lin OrdNumeral numeral_1 = mkTerm "mkOrd" numeral_1 ;
lin OrdSuperl a_1 = mkTerm "mkOrd" a_1 ;
lin PConjConj conj_1 = mkTerm "mkPConj" conj_1 ;
lin PNeg = mkTerm "negativePol" ;
lin PPos = mkTerm (hideOpt "positivePol") ;
lin PhrUtt pconj_1 utt_2 voc_3 = mkFlat (mkTerm "mkPhr" pconj_1 utt_2 voc_3) ;
lin PositA a_1 = mkFlat (mkTerm "mkAP" a_1) ;
lin PositAdAAdj a_1 = mkTerm "mkAdA" a_1 ;
lin PositAdvAdj a_1 = mkTerm "mkAdv" a_1 ;
lin PossPron pron_1 = mkTerm "mkQuant" pron_1 ;
lin PredSCVP sc_1 vp_2 = mkTerm "mkCl" sc_1 vp_2 ;
lin PredVP np_1 vp_2 = mkTerm "mkCl" np_1 (flatIfTerm vp_2) ;
lin PredetNP predet_1 np_2 = mkTerm "mkNP" predet_1 np_2 ;
lin PrepIP prep_1 ip_2 = mkTerm "mkIAdv" prep_1 ip_2 ;
lin PrepNP prep_1 np_2 = mkTerm "mkAdv" prep_1 np_2 ;
lin ProgrVP vp_1 = mkTerm "progressiveVP" vp_1 ;
lin QuestCl cl_1 = mkTerm "mkQCl" cl_1 ;
lin QuestIAdv iadv_1 cl_2 = mkTerm "mkQCl" iadv_1 cl_2 ;
lin QuestIComp icomp_1 np_2 = mkTerm "mkQCl" icomp_1 np_2 ;
lin QuestQVP ip_1 qvp_2 = mkTerm "mkQCl" ip_1 qvp_2 ;
lin QuestSlash ip_1 clslash_2 = mkTerm "mkQCl" ip_1 clslash_2 ;
lin QuestVP ip_1 vp_2 = mkTerm "mkQCl" ip_1 (flatIfTerm vp_2) ;
lin ReflA2 a2_1 = mkTerm "reflAP" a2_1 ;
lin RelCN cn_1 rs_2 = mkTerm "mkCN" cn_1 rs_2 ;
lin RelCl cl_1 = mkTerm "mkRCl" cl_1 ;
lin RelNP np_1 rs_2 = mkTerm "mkNP" np_1 rs_2 ;
lin RelS s_1 rs_2 = mkTerm "mkS" s_1 rs_2 ;
lin RelSlash rp_1 clslash_2 = mkTerm "mkRCl" rp_1 clslash_2 ;
lin RelVP rp_1 vp_2 = mkTerm "mkRCl" rp_1 (flatIfTerm vp_2) ;
lin SSubjS s_1 subj_2 s_3 = mkTerm "mkS" s_1 subj_2 s_3 ;
lin SentAP ap_1 sc_2 = mkTerm "mkAP" ap_1 sc_2 ;
lin SentCN cn_1 sc_2 = mkTerm "mkCN" cn_1 sc_2 ;
lin Slash2V3 v3_1 np_2 = mkTerm "mkVPSlash" v3_1 np_2 ;
lin Slash3V3 v3_1 np_2 = mkFlat (mkSwapTerm "mkVPSlash" v3_1 np_2) ;
lin SlashPrep cl_1 prep_2 = mkTerm "mkClSlash" cl_1 prep_2 ;
lin SlashV2A v2a_1 ap_2 = mkFlat (mkSwapTerm "mkVPSlash" v2a_1 ap_2) ;
lin SlashV2Q v2q_1 qs_2 = mkFlat (mkSwapTerm "mkVPSlash" v2q_1 qs_2) ;
lin SlashV2S v2s_1 s_2 = mkFlat (mkSwapTerm "mkVPSlash" v2s_1 s_2) ;
lin SlashV2V _ _ v2v_1 vp_2 = mkFlat (mkSwapTerm "mkVPSlash" v2v_1 vp_2) ; -- TODO
lin SlashV2VNP v2v_1 np_2 _ _ vpslash_3 = mkTerm "mkVPSlash" v2v_1 np_2 vpslash_3 ; -- TODO
lin SlashV2a v2_1 = mkFlat (mkTerm "mkVPSlash" v2_1) ;
lin SlashVP np_1 vpslash_2 = mkTerm "mkClSlash" np_1 vpslash_2 ;
lin SlashVS np_1 vs_2 sslash_3 = mkTerm "mkClSlash" np_1 vs_2 sslash_3 ;
lin SlashVV vv_1 vpslash_2 = mkTerm "mkVPSlash" vv_1 vpslash_2 ;
lin SubjS subj_1 s_2 = mkTerm "mkAdv" subj_1 s_2 ;
lin TCond = mkTerm "conditionalTense" ;
lin TFut = mkTerm "futureTense" ;
lin TPast = mkTerm "pastTense" ;
lin TPres = mkTerm (hideOpt "presentTense") ;
lin TTAnt tense_1 ant_2 = mkTerm "mkTense" tense_1 ant_2 ;
lin Use2N3 n3_1 = mkTerm "mkN2" n3_1 ;
lin Use3N3 n3_1 = mkTerm "mkN2" n3_1 ;
lin UseA2 a2_1 = mkTerm "mkAP" a2_1 ;
lin UseCl temp_1 pol_2 cl_3 = mkTerm "mkS" (flatTerm temp_1) pol_2 cl_3 ;
lin UseComp comp_1 = mkFlat (mkTerm "mkVP" (flatIfTerm comp_1)) ;
lin UseComparA a_1 = mkTerm "mkAP" a_1 ;
lin UseN n_1 = mkFlat (mkTerm "mkCN" n_1) ;
lin UsePN pn_1 = mkTerm "mkNP" pn_1 ;
lin UsePron pron_1 = mkTerm "mkNP" pron_1 ;
lin UseQCl temp_1 pol_2 qcl_3 = mkTerm "mkQS" (flatTerm temp_1) pol_2 qcl_3 ;
lin UseRCl temp_1 pol_2 rcl_3 = mkTerm "mkRS" (flatTerm temp_1) pol_2 rcl_3 ;
lin UseSlash temp_1 pol_2 clslash_3 = mkTerm "mkSSlash" temp_1 pol_2 clslash_3 ;
lin UseV v_1 = mkFlat (mkTerm "mkVP" v_1) ;
lin UttAP ap_1 = mkTerm "mkUtt" ap_1 ;
lin UttAdv adv_1 = mkTerm "mkUtt" adv_1 ;
lin UttCN cn_1 = mkTerm "mkUtt" cn_1 ;
lin UttCard card_1 = mkTerm "mkUtt" card_1 ;
lin UttIAdv iadv_1 = mkTerm "mkUtt" iadv_1 ;
lin UttIP ip_1 = mkTerm "mkUtt" ip_1 ;
lin UttImpPl pol_1 imp_2 = mkTerm "mkUtt" (mkTerm "pluralImpForm") pol_1 imp_2 ;
lin UttImpPol pol_1 imp_2 = mkTerm "mkUtt" (mkTerm "politeImpForm") pol_1 imp_2 ;
lin UttImpSg pol_1 imp_2 = mkTerm "mkUtt" pol_1 imp_2 ;
lin UttInterj interj_1 = mkTerm "mkUtt" interj_1 ;
lin UttNP np_1 = mkTerm "mkUtt" np_1 ;
lin UttQS qs_1 = mkFlat (mkTerm "mkUtt" qs_1) ;
lin UttS s_1 = mkFlat (mkTerm "mkUtt" s_1) ;
lin UttVP vp_1 = mkTerm "mkUtt" vp_1 ;
lin VocNP np_1 = mkTerm "mkVoc" np_1 ;
lin AdAdV ada adv = mkTerm "AdAdV" ada adv;
lin AdjAsCN ap = mkTerm "AdjAsCN" ap;
lin AdjAsNP ap = mkTerm "AdjAsNP" ap;
lin AdjDAP dap ap = mkTerm "AdjDAP" dap ap;
lin AdvAdv adv adv = mkTerm "AdvAdv" adv adv;
lin AdvImp adv imp = mkTerm "AdvImp" adv imp;
lin AdvRAP ap prep rnp = mkTerm "AdvRAP" ap prep rnp;
lin AdvRNP np prep rnp = mkTerm "AdvRNP" np prep rnp;
lin AdvRVP vp prep rnp = mkTerm "AdvRVP" vp prep rnp;
lin ApposNP np np = mkTerm "ApposNP" np np;
lin BareN2 n2 = mkTerm "BareN2" n2;
lin BaseAdV adv_1 adv_2 = mkTerm "BaseAdV" adv_1 adv_2;
lin BaseCNN num_1 cn_1 num_2 cn_2 = mkTerm "BaseCNN" num_1 cn_1 num_2 cn_2;
lin BaseComp comp_1 comp_2 = mkTerm "BaseComp" comp_1 comp_2;
lin BaseDAP dap_1 dap_2 = mkTerm "BaseDAP" dap_1 dap_2;
lin BaseImp imp_1 imp_2 = mkTerm "BaseImp" imp_1 imp_2;
lin BaseVPI vpi_1 vpi_2 = mkTerm "BaseVPI" vpi_1 vpi_2;
lin BaseVPI2 vpi2_1 vpi2_2 = mkTerm "BaseVPI2" vpi2_1 vpi2_2;
lin BaseVPS vps_1 vps_2 = mkTerm "BaseVPS" vps_1 vps_2;
lin BaseVPS2 vps2_1 vps2_2 = mkTerm "BaseVPS2" vps2_1 vps2_2;
lin Base_nr_RNP np rnp = mkTerm "Base_nr_RNP" np rnp;
lin Base_rn_RNP rnp np = mkTerm "Base_rn_RNP" rnp np;
lin Base_rr_RNP rnp_1 rnp_2 = mkTerm "Base_rr_RNP" rnp_1 rnp_2;
lin ByVP vp = mkTerm "ByVP" vp;
lin CompBareCN cn = mkTerm "CompBareCN" cn;
lin CompIQuant iquant = mkTerm "CompIQuant" iquant;
lin CompQS qs = mkTerm "CompQS" qs;
lin CompS s = mkTerm "CompS" s;
lin CompVP ant pol vp = mkTerm "CompVP" ant pol vp;
lin ComparA a np = mkTerm "ComparA" a np;
lin ComparAdv pol cadv adv comp = mkTerm "ComparAdv" pol cadv adv comp;
lin ComplBareVS vs s = mkTerm "ComplBareVS" vs s;
lin ComplDirectVQ vq utt = mkTerm "ComplDirectVQ" vq utt;
lin ComplDirectVS vs utt = mkTerm "ComplDirectVS" vs utt;
lin ComplSlashPartLast vpslash np = mkTerm "ComplSlashPartLast" vpslash np;
lin ComplVPI2 vpi2 np = mkTerm "ComplVPI2" vpi2 np;
lin ComplVPIVV vv vpi = mkTerm "ComplVPIVV" vv vpi;
lin ComplVPS2 vps2 np = mkTerm "ComplVPS2" vps2 np;
lin CompoundAP n a = mkTerm "CompoundAP" n a;
lin CompoundN n1 n2 = mkTerm "CompoundN" n1 n2;
lin ConjAdV conj listadv = mkTerm "ConjAdV" conj listadv;
lin ConjComp conj listcomp = mkTerm "ConjComp" conj listcomp;
lin ConjDet conj listdap = mkTerm "ConjDet" conj listdap;
lin ConjImp conj listimp = mkTerm "ConjImp" conj listimp;
lin ConjRNP conj rnplist = mkTerm "ConjRNP" conj rnplist;
lin ConjVPI conj listvpi = mkTerm "ConjVPI" conj listvpi;
lin ConjVPI2 conj listvpi2 = mkTerm "ConjVPI2" conj listvpi2;
lin ConjVPS conj listvps = mkTerm "ConjVPS" conj listvps;
lin ConjVPS2 conj listvps2 = mkTerm "ConjVPS2" conj listvps2;
lin ConsAdV adv listadv = mkTerm "ConsAdV" adv listadv;
lin ConsComp comp listcomp = mkTerm "ConsComp" comp listcomp;
lin ConsDAP dap listdap = mkTerm "ConsDAP" dap listdap;
lin ConsImp imp listimp = mkTerm "ConsImp" imp listimp;
lin ConsVPI vpi listvpi = mkTerm "ConsVPI" vpi listvpi;
lin ConsVPI2 vpi2 listvpi2 = mkTerm "ConsVPI2" vpi2 listvpi2;
lin ConsVPS vps listvps = mkTerm "ConsVPS" vps listvps;
lin ConsVPS2 vps2 listvps2 = mkTerm "ConsVPS2" vps2 listvps2;
lin Cons_nr_RNP np rnplist = mkTerm "Cons_nr_RNP" np rnplist;
lin Cons_rr_RNP rnp rnplist = mkTerm "Cons_rr_RNP" rnp rnplist;
lin CountNP det np = mkTerm "CountNP" det np;
lin DetCNN quant conj cnn = mkTerm "DetCNN" quant conj cnn;
lin DetDAP det = mkTerm "DetDAP" det;
lin EmbedPresPart vp = mkTerm "EmbedPresPart" vp;
lin EmptyRelSlash clslash = mkTerm "EmptyRelSlash" clslash;
lin EnoughAP ap ant pol vp = mkTerm "EnoughAP" ap ant pol vp;
lin EnoughAdv adv = mkTerm "EnoughAdv" adv;
lin ExclMark = mkTerm "ExclMark";
lin ExistIPAdv ip adv = mkTerm "ExistIPAdv" ip adv;
lin ExistMassCN cn = mkTerm "ExistMassCN" cn;
lin ExistNPAdv np adv = mkTerm "ExistNPAdv" np adv;
lin ExistPluralCN cn = mkTerm "ExistPluralCN" cn;
lin ExistsNP np = mkTerm "ExistsNP" np;
lin ExtAdvAP ap adv = mkTerm "ExtAdvAP" ap adv;
lin ExtAdvNP np adv = mkTerm "ExtAdvNP" np adv;
lin ExtAdvVP vp adv = mkTerm "ExtAdvVP" vp adv;
lin ExtRelNP np rs = mkTerm "ExtRelNP" np rs;
lin FocusAdV adv s = mkTerm "FocusAdV" adv s;
lin FocusAdv adv s = mkTerm "FocusAdv" adv s;
lin FocusComp comp np = mkTerm "FocusComp" comp np;
lin FocusObj np sslash = mkTerm "FocusObj" np sslash;
lin FrontComplDirectVQ np vq utt = mkTerm "FrontComplDirectVQ" np vq utt;
lin FrontComplDirectVS np vs utt = mkTerm "FrontComplDirectVS" np vs utt;
lin FullStop = mkTerm "FullStop";
lin GenIP ip = mkTerm "GenIP" ip;
lin GenModIP num ip cn = mkTerm "GenModIP" num ip cn;
lin GenModNP num np cn = mkTerm "GenModNP" num np cn;
lin GenRP num cn = mkTerm "GenRP" num cn;
lin GerundAdv vp = mkTerm "GerundAdv" vp;
lin GerundCN vp = mkTerm "GerundCN" vp;
lin GerundNP vp = mkTerm "GerundNP" vp;
lin IAdvAdv adv = mkTerm "IAdvAdv" adv;
lin ICompAP ap = mkTerm "ICompAP" ap;
lin InLanguage language = mkTerm "InLanguage" language;
lin InOrderToVP ant pol vp = mkTerm "InOrderToVP" ant pol vp;
lin InflectionA a = mkTerm "InflectionA" a;
lin InflectionA2 a2 = mkTerm "InflectionA2" a2;
lin InflectionAdv adv = mkTerm "InflectionAdv" adv;
lin InflectionN n = mkTerm "InflectionN" n;
lin InflectionN2 n2 = mkTerm "InflectionN2" n2;
lin InflectionN3 n3 = mkTerm "InflectionN3" n3;
lin InflectionPrep prep = mkTerm "InflectionPrep" prep;
lin InflectionV v = mkTerm "InflectionV" v;
lin InflectionV2 v2 = mkTerm "InflectionV2" v2;
lin InflectionV2A v2a = mkTerm "InflectionV2A" v2a;
lin InflectionV2Q v2q = mkTerm "InflectionV2Q" v2q;
lin InflectionV2S v2s = mkTerm "InflectionV2S" v2s;
lin InflectionV2V v2v = mkTerm "InflectionV2V" v2v;
lin InflectionV3 v3 = mkTerm "InflectionV3" v3;
lin InflectionVA va = mkTerm "InflectionVA" va;
lin InflectionVQ vq = mkTerm "InflectionVQ" vq;
lin InflectionVS vs = mkTerm "InflectionVS" vs;
lin InflectionVV vv = mkTerm "InflectionVV" vv;
lin MkDefinition s1 s2 = mkTerm "MkDefinition" (mkTerm s1) (mkTerm s2) ;
lin MkDefinitionEx s1 s2 s3 = mkTerm "MkDefinitionEx" (mkTerm s1) (mkTerm s2) (mkTerm s3);
lin MkDocument definition inflection s = mkTerm "MkDocument" definition inflection (mkTerm s);
lin MkTag inflection = mkTerm "MkTag" inflection;
lin MkVPI vp = mkTerm "MkVPI" vp;
lin MkVPI2 vpslash = mkTerm "MkVPI2" vpslash;
lin MkVPS temp pol vp = mkTerm "MkVPS" temp pol vp;
lin MkVPS2 temp pol vpslash = mkTerm "MkVPS2" temp pol vpslash;
lin NoDefinition s = mkTerm "NoDefinition" (mkTerm s);
lin NumLess num = mkTerm "NumLess" num;
lin NumMore num = mkTerm "NumMore" num;
lin OrdNumeralSuperl numeral a = mkTerm "OrdNumeralSuperl" numeral a;
lin PartNP cn np = mkTerm "PartNP" cn np;
lin PassAgentVPSlash vpslash np = mkTerm "PassAgentVPSlash" vpslash np;
lin PassVPSlash vpslash = mkTerm "PassVPSlash" vpslash;
lin PastPartAP vpslash = mkTerm "PastPartAP" vpslash;
lin PastPartAgentAP vpslash np = mkTerm "PastPartAgentAP" vpslash np;
lin PhrUttMark pconj utt voc mark = mkTerm "PhrUttMark" pconj utt voc mark;
lin PositAdVAdj a = mkTerm "PositAdVAdj" a;
lin PossCNN_RNP quant conj cnn rnp = mkTerm "PossCNN_RNP" quant conj cnn rnp;
lin PossNP cn np = mkTerm "PossNP" cn np;
lin PossPronRNP pron num cn rnp = mkTerm "PossPronRNP" pron num cn rnp;
lin PredAPVP ap vp = mkTerm "PredAPVP" ap vp;
lin PredVPS np vps = mkTerm "PredVPS" np vps;
lin PredetRNP predet rnp = mkTerm "PredetRNP" predet rnp;
lin PrepCN prep cn = mkTerm "PrepCN" prep cn;
lin PresPartAP vp = mkTerm "PresPartAP" vp;
lin ProgrVPSlash vpslash = mkTerm "ProgrVPSlash" vpslash;
lin QuestMark = mkTerm "QuestMark";
lin RecipVPSlash vpslash = mkTerm "RecipVPSlash" vpslash;
lin RecipVPSlashCN vpslash cn = mkTerm "RecipVPSlashCN" vpslash cn;
lin ReflPoss num cn = mkTerm "ReflPoss" num cn;
lin ReflPossCNN conj cnn = mkTerm "ReflPossCNN" conj cnn;
lin ReflPron = mkTerm "ReflPron";
lin ReflVPSlash vpslash rnp = mkTerm "ReflVPSlash" vpslash rnp;
lin SelfAdVVP vp = mkTerm "SelfAdVVP" vp;
lin SelfAdvVP vp = mkTerm "SelfAdvVP" vp;
lin SelfNP np = mkTerm "SelfNP" np;
lin SlashBareV2S v2s s = mkTerm "SlashBareV2S" v2s s;
lin StrandQuestSlash ip clslash = mkTerm "StrandQuestSlash" ip clslash;
lin StrandRelSlash rp clslash = mkTerm "StrandRelSlash" rp clslash;
lin TimeNP np = mkTerm "TimeNP" np;
lin UseACard acard = mkTerm "UseACard" acard;
lin UseAdAACard ada acard = mkTerm "UseAdAACard" ada acard;
lin UseDAP dap = mkTerm "UseDAP" dap;
lin UseDAPFem dap = mkTerm "UseDAPFem" dap;
lin UseDAPMasc dap = mkTerm "UseDAPMasc" dap;
lin UttAPFem ap = mkTerm "UttAPFem" ap;
lin UttAPMasc ap = mkTerm "UttAPMasc" ap;
lin UttAccIP ip = mkTerm "UttAccIP" ip;
lin UttAccNP np = mkTerm "UttAccNP" np;
lin UttAdV adv = mkTerm "UttAdV" adv;
lin UttDatIP ip = mkTerm "UttDatIP" ip;
lin UttDatNP np = mkTerm "UttDatNP" np;
lin UttVPS p vps = mkTerm "UttVPS" p vps;
lin UttVPShort vp = mkTerm "UttVPShort" vp;
lin VPSlashPrep vp prep = mkTerm "VPSlashPrep" vp prep;
lin WithoutVP vp = mkTerm "WithoutVP" vp;
lin afrikaans_Language = mkTerm "afrikaans_Language";
lin amharic_Language = mkTerm "amharic_Language";
lin april_Month = mkTerm "april_Month";
lin arabic_Language = mkTerm "arabic_Language";
lin august_Month = mkTerm "august_Month";
lin bottle_of_CN np = mkTerm "bottle_of_CN" np;
lin bulgarian_Language = mkTerm "bulgarian_Language";
lin catalan_Language = mkTerm "catalan_Language";
lin chinese_Language = mkTerm "chinese_Language";
lin cup_of_CN np = mkTerm "cup_of_CN" np;
lin danish_Language = mkTerm "danish_Language";
lin dayMonthAdv monthday month = mkTerm "dayMonthAdv" monthday month;
lin dayMonthYearAdv monthday month year = mkTerm "dayMonthYearAdv" monthday month year;
lin day_Timeunit = mkTerm "day_Timeunit";
lin december_Month = mkTerm "december_Month";
lin dutch_Language = mkTerm "dutch_Language";
lin eightHour = mkTerm "eightHour";
lin eighteenHour = mkTerm "eighteenHour";
lin elevenHour = mkTerm "elevenHour";
lin english_Language = mkTerm "english_Language";
lin estonian_Language = mkTerm "estonian_Language";
lin february_Month = mkTerm "february_Month";
lin few_X_short_of_Y np cn cn = mkTerm "few_X_short_of_Y" np cn cn;
lin fifteenHour = mkTerm "fifteenHour";
lin finnish_Language = mkTerm "finnish_Language";
lin fiveHour = mkTerm "fiveHour";
lin fourHour = mkTerm "fourHour";
lin fourteenHour = mkTerm "fourteenHour";
lin french_Language = mkTerm "french_Language";
lin friday_Weekday = mkTerm "friday_Weekday";
lin gen_Quant = mkTerm "gen_Quant";
lin german_Language = mkTerm "german_Language";
lin glass_of_CN np = mkTerm "glass_of_CN" np;
lin greek_Language = mkTerm "greek_Language";
lin has_age_VP card = mkTerm "has_age_VP" card;
lin have_name_Cl np np = mkTerm "have_name_Cl" np np;
lin hebrew_Language = mkTerm "hebrew_Language";
lin hindi_Language = mkTerm "hindi_Language";
lin hour_Timeunit = mkTerm "hour_Timeunit";
lin how_far_QCl np = mkTerm "how_far_QCl" np;
lin how_old_QCl np = mkTerm "how_old_QCl" np;
lin hungry_VP = mkTerm "hungry_VP";
lin ill_VP = mkTerm "ill_VP";
lin intMonthday n = mkTerm "intMonthday" (mkTerm n);
lin intYear n = mkTerm "intYear" (mkTerm n);
lin is_right_VP = mkTerm "is_right_VP";
lin is_wrong_VP = mkTerm "is_wrong_VP";
lin italian_Language = mkTerm "italian_Language";
lin january_Month = mkTerm "january_Month";
lin japanese_Language = mkTerm "japanese_Language";
lin july_Month = mkTerm "july_Month";
lin june_Month = mkTerm "june_Month";
lin languageCN language = mkTerm "languageCN" language;
lin languageNP language = mkTerm "languageNP" language;
lin latin_Language = mkTerm "latin_Language";
lin latvian_Language = mkTerm "latvian_Language";
lin maltese_Language = mkTerm "maltese_Language";
lin march_Month = mkTerm "march_Month";
lin married_Cl np np = mkTerm "married_Cl" np np;
lin may_Month = mkTerm "may_Month";
lin minute_Timeunit = mkTerm "minute_Timeunit";
lin monday_Weekday = mkTerm "monday_Weekday";
lin monthAdv month = mkTerm "monthAdv" month;
lin monthN month = mkTerm "monthN" month;
lin monthPN month = mkTerm "monthPN" month;
lin monthYearAdv month year = mkTerm "monthYearAdv" month year;
lin month_Timeunit = mkTerm "month_Timeunit";
lin n2 = mkTerm "n2";
lin n3 = mkTerm "n3";
lin n4 = mkTerm "n4";
lin n5 = mkTerm "n5";
lin n6 = mkTerm "n6";
lin n7 = mkTerm "n7";
lin n8 = mkTerm "n8";
lin n9 = mkTerm "n9";
lin n_units_AP card cn a = mkTerm "n_units_AP" card cn a;
lin n_units_of_NP card cn np = mkTerm "n_units_of_NP" card cn np;
lin nepali_Language = mkTerm "nepali_Language";
lin nineHour = mkTerm "nineHour";
lin nineteenHour = mkTerm "nineteenHour";
lin norwegian_Language = mkTerm "norwegian_Language";
lin november_Month = mkTerm "november_Month";
lin num sub1000000000 = mkTerm "num" sub1000000000;
lin october_Month = mkTerm "october_Month";
lin oneHour = mkTerm "oneHour";
lin persian_Language = mkTerm "persian_Language";
lin polish_Language = mkTerm "polish_Language";
lin pot0 digit = mkTerm "pot0" digit;
lin pot01 = mkTerm "pot01";
lin pot0as1 sub10 = mkTerm "pot0as1" sub10;
lin pot1 digit = mkTerm "pot1" digit;
lin pot110 = mkTerm "pot110";
lin pot111 = mkTerm "pot111";
lin pot1as2 sub100 = mkTerm "pot1as2" sub100;
lin pot1plus digit sub10 = mkTerm "pot1plus" digit sub10;
lin pot1to19 digit = mkTerm "pot1to19" digit;
lin pot2 sub10 = mkTerm "pot2" sub10;
lin pot21 = mkTerm "pot21";
lin pot2as3 sub1000 = mkTerm "pot2as3" sub1000;
lin pot2plus sub10 sub100 = mkTerm "pot2plus" sub10 sub100;
lin pot3 sub1000 = mkTerm "pot3" sub1000;
lin pot31 = mkTerm "pot31";
lin pot3as4 sub1000000 = mkTerm "pot3as4" sub1000000;
lin pot3plus sub1000 sub1000 = mkTerm "pot3plus" sub1000 sub1000;
lin pot4 sub1000 = mkTerm "pot4" sub1000;
lin pot41 = mkTerm "pot41";
lin pot4plus sub1000 sub1000000 = mkTerm "pot4plus" sub1000 sub1000000;
lin punjabi_Language = mkTerm "punjabi_Language";
lin ready_VP = mkTerm "ready_VP";
lin romanian_Language = mkTerm "romanian_Language";
lin russian_Language = mkTerm "russian_Language";
lin saturday_Weekday = mkTerm "saturday_Weekday";
lin scared_VP = mkTerm "scared_VP";
lin second_Timeunit = mkTerm "second_Timeunit";
lin september_Month = mkTerm "september_Month";
lin sevenHour = mkTerm "sevenHour";
lin seventeenHour = mkTerm "seventeenHour";
lin sindhi_Language = mkTerm "sindhi_Language";
lin sixHour = mkTerm "sixHour";
lin sixteenHour = mkTerm "sixteenHour";
lin spanish_Language = mkTerm "spanish_Language";
lin sunday_Weekday = mkTerm "sunday_Weekday";
lin swahili_Language = mkTerm "swahili_Language";
lin swedish_Language = mkTerm "swedish_Language";
lin tenHour = mkTerm "tenHour";
lin thai_Language = mkTerm "thai_Language";
lin that_RP = mkTerm "that_RP";
lin thirsty_VP = mkTerm "thirsty_VP";
lin thirteenHour = mkTerm "thirteenHour";
lin threeHour = mkTerm "threeHour";
lin thursday_Weekday = mkTerm "thursday_Weekday";
lin timeHour hour = mkTerm "timeHour" hour;
lin timeHourMinute hour card = mkTerm "timeHourMinute" hour card;
lin timeunitAdv card timeunit = mkTerm "timeunitAdv" card timeunit;
lin tired_VP = mkTerm "tired_VP";
lin tuesday_Weekday = mkTerm "tuesday_Weekday";
lin turkish_Language = mkTerm "turkish_Language";
lin twelveHour = mkTerm "twelveHour";
lin twentyFourHour = mkTerm "twentyFourHour";
lin twentyHour = mkTerm "twentyHour";
lin twentyOneHour = mkTerm "twentyOneHour";
lin twentyThreeHour = mkTerm "twentyThreeHour";
lin twentyTwoHour = mkTerm "twentyTwoHour";
lin twoHour = mkTerm "twoHour";
lin urdu_Language = mkTerm "urdu_Language";
lin weather_adjCl ap = mkTerm "weather_adjCl" ap;
lin wednesday_Weekday = mkTerm "wednesday_Weekday";
lin week_Timeunit = mkTerm "week_Timeunit";
lin weekdayHabitualAdv weekday = mkTerm "weekdayHabitualAdv" weekday;
lin weekdayLastAdv weekday = mkTerm "weekdayLastAdv" weekday;
lin weekdayN weekday = mkTerm "weekdayN" weekday;
lin weekdayNextAdv weekday = mkTerm "weekdayNextAdv" weekday;
lin weekdayPN weekday = mkTerm "weekdayPN" weekday;
lin weekdayPunctualAdv weekday = mkTerm "weekdayPunctualAdv" weekday;
lin whatSgFem_IP = mkTerm "whatSgFem_IP";
lin whatSgNeut_IP = mkTerm "whatSgNeut_IP";
lin what_name_QCl np = mkTerm "what_name_QCl" np;
lin yearAdv year = mkTerm "yearAdv" year;
lin year_Timeunit = mkTerm "year_Timeunit";
lin youFem_Pron = mkTerm "youFem_Pron";
lin youPolPlFem_Pron = mkTerm "youPolPlFem_Pron";
lin youPolPl_Pron = mkTerm "youPolPl_Pron";

}
