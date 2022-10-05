// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_9 = '(^|[^\\\\])"(?:\\\\.|[^\\\\"\\r\\n])*"(?=\\s*:)';
  const definition_10 = '(^|[^\\\\])"(?:\\\\.|[^\\\\"\\r\\n])*"(?!\\s*:)';
  const definition_11 = '\\/\\/.*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_4 = '-?\\b\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?\\b';
  const definition_5 = '[{}[\\],]';
  const definition_6 = ':';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_12 = '\\bnull\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['keyword'],
  );
  definition_0.addAllTokens({
    'property': [definition_1],
    'string': [definition_2],
    'comment': [definition_3],
    'number': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_5))],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'null': [definition_8],
  });

  return LanguageProto(
    'json',
    definition_0,
    aliases: ['webmanifest'],
  );
}

final languageJson = _create();
