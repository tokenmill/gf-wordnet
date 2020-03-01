--# -path=.:../abstract:../common:../api
concrete ParseRus of Parse =
  NounRus - [PPartNP, UseN2, RelNP, DetNP], --*
  VerbRus - [PassV2, ReflVP, ComplVV, SlashV2V, SlashVV, SlashV2VNP, UseCopula], --*
  AdjectiveRus - [ReflA2,CAdvAP],
  AdverbRus - [ComparAdvAdj,ComparAdvAdjS,AdnCAdv],
  SentenceRus - [EmbedVP],
  QuestionRus,
  RelativeRus,
  ConjunctionRus,
  PhraseRus - [UttAP,UttVP],
  IdiomRus,
  TenseX,
  WordNetRus,
  DocumentationRus
  ** {

flags
  case_sensitive = off;
} ;
