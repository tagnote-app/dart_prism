// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_15 = '#.*';
  const definition_16 = '\\B`[^\\s`\'",.:;#\\/\\\\()<>\\[\\]{}]\\b';
  const definition_17 = '("|\')(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_18 =
      '(^|[^/])\\/(?!\\/)(?:\\[[^\\n\\r\\]]*\\]|\\\\.|[^/\\\\\\r\\n\\[])+\\/(?=\\s*(?:\$|[\\r\\n,.;})]))';
  const definition_5 =
      '(?:=>|->)|\\b(?:case|catch|class|else|exit|finally|if|raise|return|switch|try)\\b';
  const definition_6 = '@|\\bSystem\\b';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_8 = '\\b\\d{4}-\\d{2}-\\d{2}\\b';
  const definition_9 = '\\b\\d{2}:\\d{2}:\\d{2}\\b';
  const definition_10 = '\\b\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\b';
  const definition_11 =
      ':[^\\d\\s`\'",.:;#\\/\\\\()<>\\[\\]{}][^\\s`\'",.:;#\\/\\\\()<>\\[\\]{}]*';
  const definition_12 = '[+-]?\\b(?:\\d+\\.\\d+|\\d+)\\b';
  const definition_13 = '(?:\\.{2,3})|[`,.:;=\\/\\\\()<>\\[\\]{}]';
  const definition_14 =
      '[^\\d\\s`\'",.:;#\\/\\\\()<>\\[\\]{}][^\\s`\'",.:;#\\/\\\\()<>\\[\\]{}]*';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'char': [definition_2],
    'string': [definition_3],
    'regex': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'builtin': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'date': [GrammarToken(pattern: RegExp(definition_8))],
    'time': [GrammarToken(pattern: RegExp(definition_9))],
    'datetime': [GrammarToken(pattern: RegExp(definition_10))],
    'symbol': [GrammarToken(pattern: RegExp(definition_11))],
    'number': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
    'reference': [GrammarToken(pattern: RegExp(definition_14))],
  });

  return LanguageProto(
    'rip',
    definition_0,
  );
}

final languageRip = _create();
