// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '%.+';
  const definition_13 = '"(?:\\\\.|[^\\\\"\\r\\n])*"';
  const definition_14 = '\'(?:\\\\.|[^\\\\\'\\r\\n])+\'(?=\\()';
  const definition_16 = '\'(?:\\\\.|[^\\\\\'\\r\\n])+\'';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 =
      '\\b(?:after|begin|case|catch|end|fun|if|of|receive|try|when)\\b';
  const definition_18 = '\\\$\\\\?.';
  const definition_19 = '\\b\\d+#[a-z0-9]+';
  const definition_20 = '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_8 = '\\b[a-z][\\w@]*(?=\\()';
  const definition_21 = '(^|[^@])(?:\\b|\\?)[A-Z_][\\w@]*';
  const definition_22 =
      '[=\\/<>:]=|=[:\\/]=|\\+\\+?|--?|[=*\\/!]|\\b(?:and|andalso|band|bnot|bor|bsl|bsr|bxor|div|not|or|orelse|rem|xor)\\b';
  const definition_25 = '(^|[^<])<(?!<)';
  const definition_26 = '(^|[^>])>(?!>)';
  const definition_11 = '\\b[a-z][\\w@]*';
  const definition_12 = '[()[\\]{}:;,.#|]|<<|>>';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['function'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['atom'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'quoted-function': [definition_3],
    'quoted-atom': [definition_4],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_18)),
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_20, caseSensitive: false)),
    ],
    'function': [GrammarToken(pattern: RegExp(definition_8))],
    'variable': [definition_9],
    'operator': [
      GrammarToken(pattern: RegExp(definition_22)),
      definition_23,
      definition_24,
    ],
    'atom': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'erlang',
    definition_0,
  );
}

final languageErlang = _create();
