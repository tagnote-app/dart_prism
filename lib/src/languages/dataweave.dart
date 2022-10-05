// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\b[A-Za-z]+:\\/\\/[\\w/:.?=&-]+|\\burn:[\\w:.?=&-]+';
  const definition_14 =
      '(?:\\b\\w+#)?(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\\b\\w+)(?=\\s*[:@])';
  const definition_15 = '(["\'`])(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1';
  const definition_4 =
      '\\b(?:application|audio|image|multipart|text|video)\\/[\\w+-]+';
  const definition_16 = '\\|[\\w:+-]+\\|';
  const definition_20 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_21 = '(^|[^\\\\:])\\/\\/.*';
  const definition_19 = '\\/(?:[^\\\\\\/\\r\\n]|\\\\[^\\r\\n])+\\/';
  const definition_8 =
      '\\b(?:and|as|at|case|do|else|fun|if|input|is|match|not|ns|null|or|output|type|unless|update|using|var)\\b';
  const definition_9 = '\\b[A-Z_]\\w*(?=\\s*\\()';
  const definition_10 = '-?\\b\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?\\b';
  const definition_11 = '[{}[\\];(),.:@]';
  const definition_12 = '<<|>>|->|[<>~=]=?|!=|--?-?|\\+\\+?|!|\\?';
  const definition_13 = '\\b(?:false|true)\\b';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'url': [GrammarToken(pattern: RegExp(definition_1))],
    'property': [definition_2],
    'string': [definition_3],
    'mime-type': [GrammarToken(pattern: RegExp(definition_4))],
    'date': [definition_5],
    'comment': [
      definition_17,
      definition_18,
    ],
    'regex': [definition_7],
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'function': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'boolean': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'dataweave',
    definition_0,
  );
}

final languageDataweave = _create();
