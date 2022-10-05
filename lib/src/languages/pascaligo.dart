// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_21 = Grammar();
  const definition_1 = '\\(\\*[\\s\\S]+?\\*\\)|\\/\\/.*';
  const definition_11 = '(["\'`])(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1|\\^[a-z]';
  const definition_20 =
      '(\\btype\\s+\\w+\\s+is\\s+)(?:\\b\\w+(?:\\((?:[^()]|\\((?:[^()]|\\([^()]*\\))*\\))*\\))?|\\((?:[^()]|\\((?:[^()]|\\([^()]*\\))*\\))*\\))';
  const definition_15 =
      '(^|[^&])\\b(?:begin|block|case|const|else|end|fail|for|from|function|if|is|nil|of|remove|return|skip|then|type|var|while|with)\\b';
  const definition_17 =
      '(^|[^&])\\b(?:bool|int|list|map|nat|record|string|unit)\\b';
  const definition_9 =
      '->|=\\/=|\\.\\.|\\*\\*|:=|<[<=>]?|>[>=]?|[+\\-*\\/]=?|[@^=|]|\\b(?:and|mod|or)\\b';
  const definition_10 = '\\(\\.|\\.\\)|[()\\[\\]:;,.{}]';
  const definition_22 =
      '(?:\\b\\w+(?:\\((?:[^()]|\\((?:[^()]|\\([^()]*\\))*\\))*\\))?|\\((?:[^()]|\\((?:[^()]|\\([^()]*\\))*\\))*\\))(?=\\s+is\\b)';
  const definition_23 =
      '(:\\s*)(?:\\b\\w+(?:\\((?:[^()]|\\((?:[^()]|\\([^()]*\\))*\\))*\\))?|\\((?:[^()]|\\((?:[^()]|\\([^()]*\\))*\\))*\\))';
  const definition_16 = '(^|[^&])\\b(?:False|True)\\b';
  const definition_7 = '\\b\\w+(?=\\s*\\()';
  const definition_18 = '%[01]+|&[0-7]+|\\\$[a-f\\d]+';
  const definition_19 = '\\b\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?(?:mtz|n)?';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_20, caseSensitive: false),
    lookbehind: true,
    inside: definition_21,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    lookbehind: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    inside: definition_21,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    inside: definition_21,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
  );
  definition_21.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'keyword': [definition_4],
    'builtin': [definition_6],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'class-name': [
      definition_12,
      definition_13,
      definition_14,
    ],
    'keyword': [definition_4],
    'boolean': [definition_5],
    'builtin': [definition_6],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [
      GrammarToken(pattern: RegExp(definition_18, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false)),
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'pascaligo',
    definition_0,
  );
}

final languagePascaligo = _create();
