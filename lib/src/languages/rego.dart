// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  const definition_1 = '#.*';
  const definition_10 =
      '(^|[^\\\\.])(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|`[^`]*`|\\b[a-z_]\\w*\\b)(?=\\s*:(?!=))';
  const definition_11 = '(^|[^\\\\])"(?:\\\\.|[^\\\\"\\r\\n])*"|`[^`]*`';
  const definition_4 =
      '\\b(?:as|default|else|import|not|null|package|set(?=\\s*\\()|some|with)\\b';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_12 =
      '\\b[a-z_]\\w*\\b(?:\\s*\\.\\s*\\b[a-z_]\\w*\\b)*(?=\\s*\\()';
  const definition_14 = '\\b\\w+\\b(?=\\s*\\.)';
  const definition_15 = '\\.';
  const definition_7 = '-?\\b\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?\\b';
  const definition_8 = '[-+*/%|&]|[<>:=]=?|!=|\\b_\\b';
  const definition_9 = '[,;.\\[\\]{}()]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false),
    inside: definition_13,
  );
  definition_13.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_14))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'property': [definition_2],
    'string': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [definition_6],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'rego',
    definition_0,
  );
}

final languageRego = _create();
