// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_20 = Grammar();
  final definition_42 = Grammar();
  const definition_36 =
      '\\/\\*(?:[^/*]|\\/(?!\\*)|\\*(?!\\/)|\\/\\*(?:\\*(?!\\/)|[^*])*(?:\\*\\/|\$))*(?:\\*\\/|\$)';
  const definition_37 = '#![^\\n\\r]*';
  const definition_38 = '\\/\\/[^\\n\\r]*';
  const definition_19 =
      '\'(?:\\\\(?:.|[0Uux][0-9A-Fa-f]{1,6})|[^\\n\\r\'\\\\])\'';
  const definition_39 =
      '\\\\(?:["\'\\\\abefnrtv]|0[0-7]{2}|U[\\dA-Fa-f]{6}|u[\\dA-Fa-f]{4}|x[\\dA-Fa-f]{2})';
  const definition_40 = '`[^`]*`';
  const definition_41 = '"(?:\\\\.|[^\\n\\r"\\\\])*"';
  const definition_23 = '#\\w+';
  const definition_5 =
      '\\b0(?:b[01_]+|d[\\d_]+|h_*(?:(?:(?:[\\dA-Fa-f]_*){8}){1,2}|(?:[\\dA-Fa-f]_*){4})|o[0-7_]+|x[\\dA-F_a-f]+|z[\\dAB_ab]+)\\b|(?:\\b\\d+(?:\\.(?!\\.)\\d*)?|\\B\\.\\d+)(?:[Ee][+-]?\\d*)?[ijk]?(?!\\w)';
  const definition_25 = '\\b_\\b';
  const definition_27 = '\\b\\w+(?=[ \\t]*(?::\\s*){2}proc\\b)';
  const definition_8 =
      '\\b(?:asm|auto_cast|bit_set|break|case|cast|context|continue|defer|distinct|do|dynamic|else|enum|fallthrough|for|foreign|if|import|in|map|matrix|not_in|or_else|or_return|package|proc|return|struct|switch|transmute|typeid|union|using|when|where)\\b';
  const definition_29 = '\\b\\w+(?=[ \\t]*\\()';
  const definition_10 = '\\b(?:false|nil|true)\\b';
  const definition_30 = '\\\$';
  const definition_32 = '---';
  const definition_34 = '->';
  const definition_14 =
      '\\+\\+|--|\\.\\.[<=]?|(?:&~|[-!*+/=~]|[%&<>|]{1,2})=?|[?^]';
  const definition_15 = '[(),.:;@\\[\\]{}]';
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_36),
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_37),
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_38),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_40),
    greedy: true,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_41),
    greedy: true,
    inside: definition_42,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['property'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_25),
    aliases: ['keyword'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_27),
    aliases: ['function'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_29),
    aliases: ['function'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_30),
    aliases: ['important'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_32),
    aliases: ['operator'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_34),
    aliases: ['punctuation'],
  );
  definition_20.addAllTokens({
    'symbol': [GrammarToken(pattern: RegExp(definition_39))],
  });
  definition_42.addAllTokens({
    'symbol': [GrammarToken(pattern: RegExp(definition_39))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_16,
      definition_17,
      definition_18,
    ],
    'char': [definition_2],
    'string': [
      definition_21,
      definition_22,
    ],
    'directive': [definition_4],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'discard': [definition_6],
    'procedure-definition': [definition_7],
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'procedure-name': [definition_9],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'constant-parameter-sign': [definition_11],
    'undefined': [definition_12],
    'arrow': [definition_13],
    'operator': [GrammarToken(pattern: RegExp(definition_14))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });

  return LanguageProto(
    'odin',
    definition_0,
  );
}

final languageOdin = _create();
