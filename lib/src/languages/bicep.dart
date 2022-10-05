// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_20 = Grammar();
  final definition_32 = Grammar();
  const definition_23 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_24 = '(^|[^\\\\:])\\/\\/.*';
  const definition_25 = '([\\r\\n][ \\t]*)[a-z_]\\w*(?=[ \\t]*:)';
  const definition_26 =
      '([\\r\\n][ \\t]*)\'(?:\\\\.|\\\$(?!\\{)|[^\'\\\\\\r\\n\$])*\'(?=[ \\t]*:)';
  const definition_27 = '\'\'\'[^\'][\\s\\S]*?\'\'\'';
  const definition_28 =
      '(^|[^\\\\\'])\'(?:\\\\.|\\\$(?!\\{)|[^\'\\\\\\r\\n\$])*\'';
  const definition_19 =
      '(^|[^\\\\\'])\'(?:\\\\.|\\\$(?:(?!\\{)|\\{[^{}\\r\\n]*\\})|[^\'\\\\\\r\\n\$])*\'';
  const definition_31 = '\\\$\\{[^{}\\r\\n]*\\}';
  const definition_35 = '(^\\\$\\{)[\\s\\S]+(?=\\}\$)';
  const definition_34 = '^\\\$\\{|\\}\$';
  const definition_30 = '[\\s\\S]+';
  const definition_21 = '(\\b(?:output|param)\\b[ \\t]+\\w+[ \\t]+)\\w+\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 =
      '\\b(?:existing|for|if|in|module|null|output|param|resource|targetScope|var)\\b';
  const definition_8 = '@\\w+\\b';
  const definition_9 = '\\b[a-z_]\\w*(?=[ \\t]*\\()';
  const definition_10 = '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:E[+-]?\\d+)?';
  const definition_11 =
      '--|\\+\\+|\\*\\*=?|=>|&&=?|\\|\\|=?|[!=]==|<<=?|>>>?=?|[-+*/%&|^!=<>]=?|\\.{3}|\\?\\?=?|\\?\\.?|[~:]';
  const definition_12 = '[{}[\\];(),.:]';
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_27),
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_31),
    inside: definition_32,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    inside: 'bicep',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    aliases: ['class-name'],
  );
  definition_32.addAllTokens({
    'expression': [definition_33],
    'punctuation': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_20.addAllTokens({
    'interpolation': [definition_29],
    'string': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_13,
      definition_14,
    ],
    'property': [
      definition_15,
      definition_16,
    ],
    'string': [
      definition_17,
      definition_18,
    ],
    'interpolated-string': [definition_4],
    'datatype': [definition_5],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'decorator': [GrammarToken(pattern: RegExp(definition_8))],
    'function': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'bicep',
    definition_0,
  );
}

final languageBicep = _create();
