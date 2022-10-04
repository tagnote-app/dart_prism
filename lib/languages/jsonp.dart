// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_10 = '(^|[^\\\\])"(?:\\\\.|[^\\\\"\\r\\n])*"(?=\\s*:)';
  const definition_11 = '(^|[^\\\\])"(?:\\\\.|[^\\\\"\\r\\n])*"(?!\\s*:)';
  const definition_12 = '\\/\\/.*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_4 = '-?\\b\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?\\b';
  const definition_5 =
      '(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*\\()';
  const definition_6 = '[{}[\\]();,.]';
  const definition_7 = ':';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_13 = '\\bnull\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['keyword'],
  );
  definition_0.addAllTokens({
    'property': [definition_1],
    'string': [definition_2],
    'comment': [definition_3],
    'number': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_6))],
    'operator': [GrammarToken(pattern: RegExp(definition_7))],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'null': [definition_9],
  });

  return LanguageProto(
    'jsonp',
    definition_0,
    requiredDependencies: ['json'],
  );
}

final languageJsonp = _create();
