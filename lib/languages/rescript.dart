// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_18 = Grammar();
  final definition_31 = Grammar();
  final definition_23 = Grammar();
  const definition_15 = '\\/\\/.*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_16 = '\'(?:[^\\r\\n\\\\]|\\\\(?:.|\\w+))\'';
  const definition_17 =
      '`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^}]*\\})*\\})+\\}|(?!\\\$\\{)[^\\\\`])*`';
  const definition_28 = '^`|`\$';
  const definition_30 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^}]*\\})*\\})+\\}';
  const definition_34 = '^\\\$\\{|\\}\$';
  const definition_26 = '[\\s\\S]+';
  const definition_19 = '"(?:\\\\(?:\\r\\n|[\\s\\S])|[^\\\\\\r\\n"])*"';
  const definition_5 = '\\b[A-Z]\\w*|@[a-z.]*|#[A-Za-z]\\w*|#\\d';
  const definition_20 = '[a-zA-Z]\\w*(?=\\()|(\\.)[a-z]\\w*';
  const definition_7 =
      '(?:\\b0x(?:[\\da-f]+(?:\\.[\\da-f]*)?|\\.[\\da-f]+)(?:p[+-]?\\d+)?|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?)[ful]{0,4}';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_9 = '[A-Za-z]\\w*(?==)';
  const definition_21 = '(\\btype\\s+)[a-z]\\w*';
  const definition_22 = '(<)[a-z]\\w*|(?:<\\/)[a-z]\\w*';
  const definition_27 = '<|>|\\/';
  const definition_12 =
      '\\b(?:and|as|assert|begin|bool|class|constraint|do|done|downto|else|end|exception|external|float|for|fun|function|if|in|include|inherit|initializer|int|lazy|let|method|module|mutable|new|nonrec|object|of|open|or|private|rec|string|switch|then|to|try|type|when|while|with)\\b';
  const definition_13 =
      '\\.{3}|:[:=]?|\\|>|->|=(?:==?|>)?|<=?|>=?|[|^?\'#!~`]|[+\\-*\\/]\\.?|\\b(?:asr|land|lor|lsl|lsr|lxor|mod)\\b';
  const definition_14 = '[(){}[\\],;.]';
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
    inside: definition_18,
    global: true,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['string'],
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: definition_31,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_34),
    aliases: ['tag'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    inside: definition_23,
  );
  definition_31.rest = 'rescript';
  definition_31.addAllTokens({
    'interpolation-punctuation': [definition_32],
  });
  definition_18.addAllTokens({
    'template-punctuation': [definition_24],
    'interpolation': [definition_25],
    'string': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_23.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'char': [definition_2],
    'template-string': [definition_3],
    'string': [definition_4],
    'class-name': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [definition_6],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'attr-value': [GrammarToken(pattern: RegExp(definition_9))],
    'constant': [definition_10],
    'tag': [definition_11],
    'keyword': [GrammarToken(pattern: RegExp(definition_12))],
    'operator': [GrammarToken(pattern: RegExp(definition_13))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
  });

  return LanguageProto(
    'rescript',
    definition_0,
    aliases: ['res'],
  );
}

final languageRescript = _create();
