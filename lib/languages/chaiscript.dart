// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  final definition_31 = Grammar();
  const definition_23 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_24 = '(^|[^\\\\:])\\/\\/.*';
  const definition_14 =
      '(^|[^\\\\])"(?:[^"\$\\\\]|\\\\[\\s\\S]|\\\$(?!\\{)|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})*\\})*"';
  const definition_30 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})*\\}';
  const definition_34 = '(^\\\$\\{)[\\s\\S]+(?=\\}\$)';
  const definition_36 = '^\\\$\\{|\\}\$';
  const definition_26 = '[\\s\\S]+';
  const definition_16 = '(^|[^\\\\])\'(?:[^\'\\\\]|\\\\[\\s\\S])*\'';
  const definition_27 = '(\\bclass\\s+)\\w+';
  const definition_28 = '(\\b(?:attr|def)\\s+)\\w+(?=\\s*::)';
  const definition_5 =
      '\\b(?:attr|auto|break|case|catch|class|continue|def|default|else|finally|for|fun|global|if|return|switch|this|try|var|while)\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 = '\\b\\w+(?=\\()';
  const definition_29 =
      '(?:\\b0b[01\']+|\\b0x(?:[\\da-f\']+(?:\\.[\\da-f\']*)?|\\.[\\da-f\']+)(?:p[+-]?[\\d\']+)?|(?:\\b[\\d\']+(?:\\.[\\d\']*)?|\\B\\.[\\d\']+)(?:e[+-]?[\\d\']+)?)[ful]{0,4}';
  const definition_20 = '\\b(?:Infinity|NaN)\\b';
  const definition_21 = '([,(]\\s*)\\w+(?=\\s+\\w)';
  const definition_10 =
      '>>=?|<<=?|\\|\\||&&|:[:=]?|--|\\+\\+|[=!<>+\\-*/%|&^]=?|[?~]|`[^`\\r\\n]{1,4}`';
  const definition_11 = '[{}[\\];(),.:]';
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    greedy: true,
    inside: definition_15,
    global: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: definition_31,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
    inside: 'chaiscript',
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_36),
    aliases: ['punctuation'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    aliases: ['class-name'],
  );
  definition_31.addAllTokens({
    'interpolation-expression': [definition_32],
    'interpolation-punctuation': [definition_33],
  });
  definition_15.addAllTokens({
    'interpolation': [definition_25],
    'string': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_12,
      definition_13,
    ],
    'string-interpolation': [definition_2],
    'string': [definition_3],
    'class-name': [
      definition_17,
      definition_18,
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [
      definition_19,
      GrammarToken(pattern: RegExp(definition_20)),
    ],
    'parameter-type': [definition_9],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'chaiscript',
    definition_0,
    requiredDependencies: ['clike', 'cpp', 'c'],
  );
}

final languageChaiscript = _create();
