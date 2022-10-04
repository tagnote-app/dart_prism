// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_15 =
      '("|\')(?:\\\\(?:\\r\\n?|\\n|.)|(?!\\1)[^\\\\\\r\\n])*\\1(?=\\s*:)';
  const definition_16 =
      '(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*:)';
  const definition_11 =
      '("|\')(?:\\\\(?:\\r\\n?|\\n|.)|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_12 = '\\/\\/.*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_4 =
      '[+-]?\\b(?:NaN|Infinity|0x[a-fA-F\\d]+)\\b|[+-]?(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[eE][+-]?\\d+\\b)?';
  const definition_5 = '[{}[\\],]';
  const definition_6 = ':';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_13 = '\\bnull\\b';
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['unquoted'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['keyword'],
  );
  definition_0.addAllTokens({
    'property': [
      definition_9,
      definition_10,
    ],
    'string': [definition_2],
    'comment': [definition_3],
    'number': [GrammarToken(pattern: RegExp(definition_4))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_5))],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'null': [definition_8],
  });

  return LanguageProto(
    'json5',
    definition_0,
    requiredDependencies: ['json'],
  );
}

final languageJson5 = _create();
