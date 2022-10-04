// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_10 = Grammar();
  final definition_25 = Grammar();
  final definition_20 = Grammar();
  const definition_1 =
      ':(?:after|before|first-letter|first-line|selection)|::[-\\w]+';
  const definition_2 = ':[-\\w]+';
  const definition_3 = '\\.[-\\w]+';
  const definition_4 = '#[-\\w]+';
  const definition_9 =
      '\\[(?:[^[\\]"\']|(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\'))*\\]';
  const definition_13 = '^\\[|\\]\$';
  const definition_22 = '(\\s)[si]\$';
  const definition_24 = '^(\\s*)(?:(?!\\s)[-*\\w\\xA0-\\uFFFF])*\\|(?!=)';
  const definition_31 = '\\|\$';
  const definition_26 = '^(\\s*)(?:(?!\\s)[-\\w\\xA0-\\uFFFF])+';
  const definition_27 =
      '(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')';
  const definition_32 = '(=\\s*)(?:(?!\\s)[-\\w\\xA0-\\uFFFF])+(?=\\s*\$)';
  const definition_18 = '[|~*^\$]?=';
  const definition_19 =
      '(\\(\\s*)[+-]?\\d*[\\dn](?:\\s*[+-]\\s*\\d+)?(?=\\s*\\))';
  const definition_29 = '[\\dn]+';
  const definition_30 = '[+-]';
  const definition_21 = '(\\(\\s*)(?:even|odd)(?=\\s*\\))';
  const definition_7 = '>|\\+|~|\\|\\|';
  const definition_8 = '[(),]';
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    inside: definition_10,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    inside: definition_25,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    inside: definition_20,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
  );
  definition_25.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_31))],
  });
  definition_10.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
    'case-sensitivity': [definition_14],
    'namespace': [definition_15],
    'attr-name': [definition_16],
    'attr-value': [
      GrammarToken(pattern: RegExp(definition_27)),
      definition_28,
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_20.addAllTokens({
    'number': [GrammarToken(pattern: RegExp(definition_29))],
    'operator': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_0.addAllTokens({
    'pseudo-element': [GrammarToken(pattern: RegExp(definition_1))],
    'pseudo-class': [GrammarToken(pattern: RegExp(definition_2))],
    'class': [GrammarToken(pattern: RegExp(definition_3))],
    'id': [GrammarToken(pattern: RegExp(definition_4))],
    'attribute': [definition_5],
    'n-th': [
      definition_11,
      definition_12,
    ],
    'combinator': [GrammarToken(pattern: RegExp(definition_7))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'css-selector',
    definition_0,
  );
}

final languageCssSelector = _create();
