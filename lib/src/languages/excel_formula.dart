// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  final definition_34 = Grammar();
  final definition_20 = Grammar();
  const definition_11 = '(\\bN\\(\\s*)"(?:[^"]|"")*"(?=\\s*\\))';
  const definition_12 = '"(?:[^"]|"")*"(?!")';
  const definition_13 =
      '(?:\'[^\']*\'|(?:[^\\s()[\\]{}<>*?"\';,\$&]*\\[[^^\\s()[\\]{}<>*?"\']+\\])?\\w+)!';
  const definition_22 = '!\$';
  const definition_23 = '\'';
  const definition_31 = '[^[\\]]+\$';
  const definition_33 = '\\[[^[\\]]+\\]\$';
  const definition_35 = '[[\\]]';
  const definition_26 = '[\\s\\S]+';
  const definition_16 = '\\b[A-Z]\\w*(?=\\()';
  const definition_18 =
      '\\\$?\\b(?:[A-Z]+\\\$?\\d+:\\\$?[A-Z]+\\\$?\\d+|[A-Z]+:\\\$?[A-Z]+|\\d+:\\\$?\\d+)\\b';
  const definition_27 = ':';
  const definition_28 = '\\\$?[A-Z]+\\\$?\\d+';
  const definition_29 = '\\\$?[A-Z]+';
  const definition_30 = '\\\$?\\d+';
  const definition_21 =
      '\\b[A-Z]+\\d+\\b|\\\$[A-Za-z]+\\\$?\\d+\\b|\\b[A-Za-z]+\\\$\\d+\\b';
  const definition_7 = '(?:\\b\\d+(?:\\.\\d+)?|\\B\\.\\d+)(?:e[+-]?\\d+)?\\b';
  const definition_8 = '\\b(?:FALSE|TRUE)\\b';
  const definition_9 = '[-+*/^%=&,]|<[=>]?|>=?';
  const definition_10 = '[[\\]();{}|]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    aliases: ['string'],
    inside: definition_15,
    global: true,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_31),
    aliases: ['function'],
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_33),
    inside: definition_34,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    aliases: ['builtin'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    aliases: ['selector'],
    inside: definition_20,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_21),
    aliases: ['selector'],
  );
  definition_34.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_35))],
  });
  definition_15.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_22))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_23))],
    'sheet': [definition_24],
    'file': [definition_25],
    'path': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_20.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_27))],
    'cell': [
      GrammarToken(pattern: RegExp(definition_28, caseSensitive: false))
    ],
    'column': [
      GrammarToken(pattern: RegExp(definition_29, caseSensitive: false))
    ],
    'row': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'reference': [definition_3],
    'function-name': [definition_4],
    'range': [definition_5],
    'cell': [definition_6],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'excel-formula',
    definition_0,
    aliases: ['xlsx', 'xls'],
  );
}

final languageExcelFormula = _create();
