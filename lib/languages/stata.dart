// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_17 = Grammar();
  final definition_34 = Grammar();
  const definition_29 = '(^[ \\t]*)\\*.*';
  const definition_30 = '(^|\\s)\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_16 = '"[^"\\r\\n]*"|[‘`\']".*?"[’`\']';
  const definition_33 = '\\\$\\{[^{}]*\\}|[‘`\']\\w[^’`\'\\r\\n]*[’`\']';
  const definition_35 = '^\\\$\\{|\\}\$';
  const definition_32 = '[\\s\\S]+';
  const definition_18 = '(^[ \\t]*mata[ \\t]*:)[\\s\\S]+?(?=^end\\b)';
  const definition_21 = '(^[ \\t]*java[ \\t]*:)[\\s\\S]+?(?=^end\\b)';
  const definition_24 = '(^[ \\t]*python[ \\t]*:)[\\s\\S]+?(?=^end\\b)';
  const definition_27 =
      '(^[ \\t]*(?:\\.[ \\t]+)?(?:(?:bayes|bootstrap|by|bysort|capture|collect|fmm|fp|frame|jackknife|mfp|mi|nestreg|noisily|permute|quietly|rolling|simulate|statsby|stepwise|svy|version|xi)\\b[^:\\r\\n]*:[ \\t]*|(?:capture|noisily|quietly|version)[ \\t]+)?)[a-zA-Z]\\w*';
  const definition_7 = '\\\$\\w+|[‘`\']\\w[^’`\'\\r\\n]*[’`\']';
  const definition_8 =
      '\\b(?:bayes|bootstrap|by|bysort|capture|clear|collect|fmm|fp|frame|if|in|jackknife|mi[ \\t]+estimate|mfp|nestreg|noisily|of|permute|quietly|rolling|simulate|sort|statsby|stepwise|svy|varlist|version|xi)\\b';
  const definition_9 = '\\b(?:off|on)\\b';
  const definition_10 = '\\b\\d+(?:\\.\\d+)?\\b|\\B\\.\\d+';
  const definition_11 = '\\b[a-z_]\\w*(?=\\()';
  const definition_12 = '\\+\\+|--|##?|[<>!=~]=?|[+\\-*^&|/]';
  const definition_13 = '[(){}[\\],:]';
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_29, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    inside: definition_17,
    global: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_33),
    inside: definition_34,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_32),
    inside: 'stata',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_18, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['language-mata'],
    inside: 'mata',
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_21, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['language-java'],
    inside: 'java',
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_24, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['language-python'],
    inside: 'python',
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_27, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['keyword'],
    global: true,
  );
  definition_34.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_35))],
    'expression': [definition_36],
  });
  definition_17.addAllTokens({
    'interpolation': [definition_31],
    'string': [GrammarToken(pattern: RegExp(definition_32))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_14,
      definition_15,
    ],
    'string-literal': [definition_2],
    'mata': [definition_3],
    'java': [definition_4],
    'python': [definition_5],
    'command': [definition_6],
    'variable': [GrammarToken(pattern: RegExp(definition_7))],
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'boolean': [GrammarToken(pattern: RegExp(definition_9))],
    'number': [GrammarToken(pattern: RegExp(definition_10))],
    'function': [
      GrammarToken(pattern: RegExp(definition_11, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'stata',
    definition_0,
    requiredDependencies: ['mata', 'java', 'clike', 'python'],
  );
}

final languageStata = _create();
