// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_18 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_19 = '(^|[^\\\\:])\\/\\/.*';
  const definition_13 = '\'(?:\\\\.|[^\'\\\\\\r\\n]){0,10}\'';
  const definition_14 = '(^|[^\\\\])"(?:\\\\.|[^"\\\\\\r\\n])*"|`[^`]*`';
  const definition_4 =
      '\\b(?:break|case|chan|const|continue|default|defer|else|fallthrough|for|func|go(?:to)?|if|import|interface|map|package|range|return|select|struct|switch|type|var)\\b';
  const definition_5 = '\\b(?:_|false|iota|nil|true)\\b';
  const definition_6 = '\\b\\w+(?=\\()';
  const definition_15 = '\\b0(?:b[01_]+|o[0-7_]+)i?\\b';
  const definition_16 =
      '\\b0x(?:[a-f\\d_]+(?:\\.[a-f\\d_]*)?|\\.[a-f\\d_]+)(?:p[+-]?\\d+(?:_\\d+)*)?i?(?!\\w)';
  const definition_17 =
      '(?:\\b\\d[\\d_]*(?:\\.[\\d_]*)?|\\B\\.\\d[\\d_]*)(?:e[+-]?[\\d_]+)?i?(?!\\w)';
  const definition_8 =
      '[*\\/%^!=]=?|\\+[=+]?|-[=-]?|\\|[=|]?|&(?:=|&|\\^=?)?|>(?:>=?|=)?|<(?:<=?|=|-)?|:=|\\.\\.\\.';
  const definition_9 = '[{}[\\];(),.:]';
  const definition_10 =
      '\\b(?:append|bool|byte|cap|close|complex|complex(?:64|128)|copy|delete|error|float(?:32|64)|imag|u?int(?:8|16|32|64)?|len|make|new|panic|print(?:ln)?|real|recover|rune|string|uintptr)\\b';
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
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
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [
      definition_11,
      definition_12,
    ],
    'char': [definition_2],
    'string': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_15, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_16, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_17, caseSensitive: false)),
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
    'builtin': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'go',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageGo = _create();
