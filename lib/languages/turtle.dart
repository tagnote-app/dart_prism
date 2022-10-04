// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_14 = Grammar();
  final definition_17 = Grammar();
  final definition_19 = Grammar();
  final definition_30 = Grammar();
  final definition_23 = Grammar();
  const definition_11 = '#.*';
  const definition_12 =
      '"""(?:(?:""?)?(?:[^"\\\\]|\\\\.))*"""|\'\'\'(?:(?:\'\'?)?(?:[^\'\\\\]|\\\\.))*\'\'\'';
  const definition_15 =
      '"(?:[^\\\\"\\r\\n]|\\\\.)*"|\'(?:[^\\\\\'\\r\\n]|\\\\.)*\'';
  const definition_16 =
      '<(?:[^\\x00-\\x20<>"{}|^`\\\\]|\\\\(?:u[\\da-fA-F]{4}|U[\\da-fA-F]{8}))*>';
  const definition_24 = '[<>]';
  const definition_18 =
      '(?:(?![-.\\d\\xB7])[-.\\w\\xB7\\xC0-\\uFFFD]+)?:(?:(?![-.])(?:[-.:\\w\\xC0-\\uFFFD]|%[\\da-f]{2}|\\\\.)+)?';
  const definition_28 = '([^:]*:)[\\s\\S]+';
  const definition_29 = '[\\s\\S]+';
  const definition_31 = ':';
  const definition_6 = '[+-]?\\b\\d+(?:\\.\\d*)?(?:e[+-]?\\d+)?';
  const definition_7 = '[{}.,;()[\\]]|\\^\\^';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_20 = '(?:\\ba|@prefix|@base)\\b|=';
  const definition_21 = '\\b(?:base|graph|prefix)\\b';
  const definition_22 = '@[a-z]+(?:-[a-z\\d]+)*';
  const definition_27 = '@';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    aliases: ['string'],
    inside: definition_14,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    inside: definition_17,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    inside: definition_19,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_29),
    inside: definition_30,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    inside: definition_23,
  );
  definition_14.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_11))],
  });
  definition_17.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_30.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_31))],
  });
  definition_19.addAllTokens({
    'local-name': [definition_25],
    'prefix': [definition_26],
  });
  definition_23.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'multiline-string': [definition_2],
    'string': [definition_3],
    'url': [definition_4],
    'function': [definition_5],
    'number': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_20)),
      GrammarToken(pattern: RegExp(definition_21, caseSensitive: false)),
    ],
    'tag': [definition_10],
  });

  return LanguageProto(
    'turtle',
    definition_0,
    aliases: ['trig'],
  );
}

final languageTurtle = _create();
