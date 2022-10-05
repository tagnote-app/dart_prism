// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  final definition_30 = Grammar();
  final definition_19 = Grammar();
  final definition_21 = Grammar();
  const definition_1 =
      '--.*|\\{-(?:[^-{]|-(?!\\})|\\{(?!-)|\\{-(?:[^-{]|-(?!\\})|\\{(?!-))*-\\})*-\\}';
  const definition_14 =
      '"(?:[^"\\\\]|\\\\.)*"|\'\'(?:[^\']|\'(?!\')|\'\'\'|\'\'\\\$\\{)*\'\'(?!\'|\\\$)';
  const definition_29 = '\\\$\\{[^{}]*\\}';
  const definition_33 = '(^\\\$\\{)[\\s\\S]+(?=\\}\$)';
  const definition_32 = '\\\$\\{|\\}';
  const definition_16 = '`[^`]*`';
  const definition_17 =
      '\\bhttps?:\\/\\/[\\w.:%!\$&\'*+;=@~-]+(?:\\/[\\w.:%!\$&\'*+;=@~-]*)*(?:\\?[/?\\w.:%!\$&\'*+;=@~-]*)?';
  const definition_18 = '\\benv:(?:(?!\\d)\\w+|"(?:[^"\\\\=]|\\\\.)*")';
  const definition_23 = '^env';
  const definition_24 = '^:';
  const definition_25 = '[\\s\\S]+';
  const definition_20 = '\\bsha256:[\\da-fA-F]{64}\\b';
  const definition_26 = 'sha256';
  const definition_27 = ':';
  const definition_28 = '[\\da-fA-F]{64}';
  const definition_7 =
      '\\b(?:as|assert|else|forall|if|in|let|merge|missing|then|toMap|using|with)\\b|\\u2200';
  const definition_8 = '\\b(?:None|Some)\\b';
  const definition_9 = '\\b(?:False|True)\\b';
  const definition_10 =
      '\\bNaN\\b|-?\\bInfinity\\b|[+-]?\\b(?:0x[\\da-fA-F]+|\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?)\\b';
  const definition_11 =
      '\\/\\\\|\\/\\/\\\\\\\\|&&|\\|\\||===|[!=]=|\\/\\/|->|\\+\\+|::|[+*#@=:?<>|\\\\\\u2227\\u2a53\\u2261\\u2afd\\u03bb\\u2192]';
  const definition_12 = '\\.\\.|[{}\\[\\](),./]';
  const definition_13 = '\\b[A-Z]\\w*\\b';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    inside: definition_15,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_29),
    inside: definition_30,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    aliases: ['language-dhall'],
    inside: 'dhall',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    inside: definition_19,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_20),
    inside: definition_21,
  );
  definition_30.addAllTokens({
    'expression': [definition_31],
    'punctuation': [GrammarToken(pattern: RegExp(definition_32))],
  });
  definition_15.addAllTokens({
    'interpolation': [definition_22],
  });
  definition_19.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_23))],
    'operator': [GrammarToken(pattern: RegExp(definition_24))],
    'variable': [GrammarToken(pattern: RegExp(definition_25))],
  });
  definition_21.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_26))],
    'operator': [GrammarToken(pattern: RegExp(definition_27))],
    'number': [GrammarToken(pattern: RegExp(definition_28))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'label': [definition_3],
    'url': [definition_4],
    'env': [definition_5],
    'hash': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'builtin': [GrammarToken(pattern: RegExp(definition_8))],
    'boolean': [GrammarToken(pattern: RegExp(definition_9))],
    'number': [GrammarToken(pattern: RegExp(definition_10))],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
    'class-name': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'dhall',
    definition_0,
  );
}

final languageDhall = _create();
