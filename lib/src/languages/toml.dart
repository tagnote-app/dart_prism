// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_9 = '#.*';
  const definition_10 =
      '(^[\\t ]*\\[\\s*(?:\\[\\s*)?)(?:[\\w-]+|\'[^\'\\n\\r]*\'|"(?:\\\\.|[^\\\\"\\r\\n])*")(?:\\s*\\.\\s*(?:[\\w-]+|\'[^\'\\n\\r]*\'|"(?:\\\\.|[^\\\\"\\r\\n])*"))*(?=\\s*\\])';
  const definition_12 =
      '(^[\\t ]*|[{,]\\s*)(?:[\\w-]+|\'[^\'\\n\\r]*\'|"(?:\\\\.|[^\\\\"\\r\\n])*")(?:\\s*\\.\\s*(?:[\\w-]+|\'[^\'\\n\\r]*\'|"(?:\\\\.|[^\\\\"\\r\\n])*"))*(?=\\s*=)';
  const definition_14 =
      '"""(?:\\\\[\\s\\S]|[^\\\\])*?"""|\'\'\'[\\s\\S]*?\'\'\'|\'[^\'\\n\\r]*\'|"(?:\\\\.|[^\\\\"\\r\\n])*"';
  const definition_17 =
      '\\b\\d{4}-\\d{2}-\\d{2}(?:[T\\s]\\d{2}:\\d{2}:\\d{2}(?:\\.\\d+)?(?:Z|[+-]\\d{2}:\\d{2})?)?\\b';
  const definition_19 = '\\b\\d{2}:\\d{2}:\\d{2}(?:\\.\\d+)?\\b';
  const definition_6 =
      '(?:\\b0(?:x[\\da-zA-Z]+(?:_[\\da-zA-Z]+)*|o[0-7]+(?:_[0-7]+)*|b[10]+(?:_[10]+)*))\\b|[-+]?\\b\\d+(?:_\\d+)*(?:\\.\\d+(?:_\\d+)*)?(?:[eE][+-]?\\d+(?:_\\d+)*)?\\b|[-+]?\\b(?:inf|nan)\\b';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_8 = '[.,=[\\]{}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['class-name'],
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    aliases: ['number'],
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['number'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'table': [definition_2],
    'key': [definition_3],
    'string': [definition_4],
    'date': [
      definition_15,
      definition_16,
    ],
    'number': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'toml',
    definition_0,
  );
}

final languageToml = _create();
