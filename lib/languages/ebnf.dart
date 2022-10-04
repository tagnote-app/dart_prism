// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\(\\*[\\s\\S]*?\\*\\)';
  const definition_8 = '"[^"\\r\\n]*"|\'[^\'\\r\\n]*\'';
  const definition_9 = '\\?[^?\\r\\n]*\\?';
  const definition_11 = '^([\\t ]*)[a-z]\\w*(?:[ \\t]+[a-z]\\w*)*(?=\\s*=)';
  const definition_5 = '\\b[a-z]\\w*(?:[ \\t]+[a-z]\\w*)*\\b';
  const definition_6 = '\\([:/]|[:/]\\)|[.,;()[\\]{}]';
  const definition_7 = '[-=|*/!]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    aliases: ['class-name'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['rule', 'keyword'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'special': [definition_3],
    'definition': [definition_4],
    'rule': [GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_6))],
    'operator': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'ebnf',
    definition_0,
  );
}

final languageEbnf = _create();
