// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '::.+';
  const definition_2 =
      '@proof\\b|\\b(?:according|aggregate|all|and|antonym|are|as|associativity|assume|asymmetry|attr|be|begin|being|by|canceled|case|cases|clusters?|coherence|commutativity|compatibility|connectedness|consider|consistency|constructors|contradiction|correctness|def|deffunc|define|definitions?|defpred|do|does|end|environ|equals|ex|exactly|existence|for|from|func|given|hence|hereby|holds|idempotence|identity|iff?|implies|involutiveness|irreflexivity|is|it|let|means|mode|non|not|notations?|now|of|or|otherwise|over|per|pred|prefix|projectivity|proof|provided|qua|reconsider|redefine|reduce|reducibility|reflexivity|registrations?|requirements|reserve|sch|schemes?|section|selector|set|sethood|st|struct|such|suppose|symmetry|synonym|take|that|the|then|theorems?|thesis|thus|to|transitivity|uniqueness|vocabular(?:ies|y)|when|where|with|wrt)\\b';
  const definition_8 = '\\\$(?:10|\\d)';
  const definition_4 = '\\b\\w+(?=:)';
  const definition_5 = '(?:\\b|-)\\d+\\b';
  const definition_6 = '\\.\\.\\.|->|&|\\.?=';
  const definition_7 = '\\(#|#\\)|[,:;\\[\\](){}]';
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_8),
    aliases: ['variable'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'keyword': [GrammarToken(pattern: RegExp(definition_2))],
    'parameter': [definition_3],
    'variable': [GrammarToken(pattern: RegExp(definition_4))],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'mizar',
    definition_0,
  );
}

final languageMizar = _create();
