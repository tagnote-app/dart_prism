// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  const definition_12 = ';.*';
  const definition_19 =
      '(^[\\t ]*)#(?:comments-start|cs)[\\s\\S]*?^[ \\t]*#(?:ce|comments-end)';
  const definition_14 = '(^[\\t ]*#include\\s+)(?:<[^\\r\\n>]+>|"[^\\r\\n"]+")';
  const definition_15 = '(["\'])(?:\\1\\1|(?!\\1)[^\\r\\n])*\\1';
  const definition_20 = '([%\$@])\\w+\\1';
  const definition_17 = '(^[\\t ]*)#[\\w-]+';
  const definition_5 = '\\b\\w+(?=\\()';
  const definition_6 = '[\$@]\\w+';
  const definition_7 =
      '\\b(?:Case|Const|Continue(?:Case|Loop)|Default|Dim|Do|Else(?:If)?|End(?:Func|If|Select|Switch|With)|Enum|Exit(?:Loop)?|For|Func|Global|If|In|Local|Next|Null|ReDim|Select|Static|Step|Switch|Then|To|Until|Volatile|WEnd|While|With)\\b';
  const definition_8 = '\\b(?:0x[\\da-f]+|\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?)\\b';
  const definition_9 = '\\b(?:False|True)\\b';
  const definition_10 = '<[=>]?|[-+*\\/=&>]=?|[?^]|\\b(?:And|Not|Or)\\b';
  const definition_11 = '[\\[\\]().,:]';
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_19, multiLine: true),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14, multiLine: true),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    inside: definition_16,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17, multiLine: true),
    lookbehind: true,
    aliases: ['keyword'],
  );
  definition_16.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_20))],
  });
  definition_0.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_12)),
      definition_13,
    ],
    'url': [definition_2],
    'string': [definition_3],
    'directive': [definition_4],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'variable': [GrammarToken(pattern: RegExp(definition_6))],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'autoit',
    definition_0,
  );
}

final languageAutoit = _create();
