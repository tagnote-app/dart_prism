// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_20 = Grammar();
  final definition_34 = Grammar();
  const definition_28 =
      '\\/\\*(?:[^*/]|\\*(?!\\/)|\\/(?!\\*)|\\/\\*(?:[^*/]|\\*(?!\\/)|\\/(?!\\*)|\\/\\*(?:[^*/]|\\*(?!\\/)|\\/(?!\\*))*\\*\\/)*\\*\\/)*\\*\\/';
  const definition_29 = '(^|[^\\\\:])\\/\\/.*';
  const definition_17 = '"""[\\s\\S]*?"""';
  const definition_19 =
      '(^|[^\\\\"])"(?:[^\\\\"%]|\\\\[\\s\\S]|%(?!\\()|%\\((?:[^()]|\\((?:[^()]|\\([^)]*\\))*\\))*\\))*"';
  const definition_33 =
      '((?:^|[^\\\\])(?:\\\\{2})*)%\\((?:[^()]|\\((?:[^()]|\\([^)]*\\))*\\))*\\)';
  const definition_37 = '^(%\\()[\\s\\S]+(?=\\)\$)';
  const definition_39 = '^%\\(|\\)\$';
  const definition_31 = '[\\s\\S]+';
  const definition_21 = '^#!\\/.+';
  const definition_23 = '#!?[ \\t\\u3000]*\\w+';
  const definition_32 = '(\\bclass\\s+)\\w+';
  const definition_26 = '\\b[A-Z][a-z\\d_]*\\b';
  const definition_7 = '\\b[A-Z][A-Z\\d_]*\\b';
  const definition_27 = '\\bnull\\b';
  const definition_9 =
      '\\b(?:as|break|class|construct|continue|else|for|foreign|if|import|in|is|return|static|super|this|var|while)\\b';
  const definition_10 = '\\b(?:false|true)\\b';
  const definition_11 = '\\b(?:0x[\\da-f]+|\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?)\\b';
  const definition_12 = '\\b[a-z_]\\w*(?=\\s*[({])';
  const definition_13 = '<<|>>|[=!<>]=?|&&|\\|\\||[-+*/%~^&|?:]|\\.{2,3}';
  const definition_14 = '[\\[\\](){}.,;]';
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_28),
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    inside: definition_34,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    inside: 'wren',
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_39),
    aliases: ['punctuation'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_21),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['keyword'],
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_27),
    aliases: ['keyword'],
  );
  definition_34.addAllTokens({
    'expression': [definition_35],
    'interpolation-punctuation': [definition_36],
  });
  definition_20.addAllTokens({
    'interpolation': [definition_30],
    'string': [GrammarToken(pattern: RegExp(definition_31))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_15,
      definition_16,
    ],
    'triple-quoted-string': [definition_2],
    'string-literal': [definition_3],
    'hashbang': [definition_4],
    'attribute': [definition_5],
    'class-name': [
      definition_25,
      GrammarToken(pattern: RegExp(definition_26)),
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_7))],
    'null': [definition_8],
    'keyword': [GrammarToken(pattern: RegExp(definition_9))],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'number': [
      GrammarToken(pattern: RegExp(definition_11, caseSensitive: false))
    ],
    'function': [
      GrammarToken(pattern: RegExp(definition_12, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_13))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
  });

  return LanguageProto(
    'wren',
    definition_0,
  );
}

final languageWren = _create();
