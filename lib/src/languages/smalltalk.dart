// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  final definition_18 = Grammar();
  const definition_12 = '"(?:""|[^"])*"';
  const definition_13 = '\\\$.';
  const definition_14 = '\'(?:\'\'|[^\'])*\'';
  const definition_4 = '#[\\da-z]+|#(?:-|([+\\/\\\\*~<>=@%|&?!])\\1?)|#(?=\\()';
  const definition_15 = '(\\[\\s*):[^\\[|]*\\|';
  const definition_21 = ':[\\da-z]+';
  const definition_22 = '\\|';
  const definition_17 = '\\|[^|]+\\|';
  const definition_23 = '[\\da-z]+';
  const definition_7 = '\\b(?:new|nil|self|super)\\b';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_19 = '\\d+r-?[\\dA-Z]+(?:\\.[\\dA-Z]+)?(?:e-?\\d+)?';
  const definition_20 = '\\b\\d+(?:\\.\\d+)?(?:e-?\\d+)?';
  const definition_10 = '[<=]=?|:=|~[~=]|\\/\\/?|\\\\\\\\|>[>=]?|[!^+\\-*&|,@]';
  const definition_11 = '[.;:?\\[\\](){}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    inside: definition_16,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17),
    inside: definition_18,
  );
  definition_16.addAllTokens({
    'variable': [
      GrammarToken(pattern: RegExp(definition_21, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_22))],
  });
  definition_18.addAllTokens({
    'variable': [
      GrammarToken(pattern: RegExp(definition_23, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_22))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'char': [definition_2],
    'string': [definition_3],
    'symbol': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'block-arguments': [definition_5],
    'temporary-variables': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [
      GrammarToken(pattern: RegExp(definition_19)),
      GrammarToken(pattern: RegExp(definition_20)),
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'smalltalk',
    definition_0,
  );
}

final languageSmalltalk = _create();
