// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_9 = Grammar();
  final definition_21 = Grammar();
  final definition_23 = Grammar();
  final definition_11 = Grammar();
  const definition_1 = '"[^"]*"';
  const definition_8 =
      '((?:^|;)\\s*)[-A-Z\\d]+(?:\\s*\\[[-\\w]+\\])?(?:\\s*\\("[^"]*"(?:,\\s*"[^"]*")*\\))?(?=\\s*=)';
  const definition_13 = '^[-A-Z\\d]+';
  const definition_20 = '^(\\s*)\\[[-\\w]+\\]';
  const definition_25 = '^\\[|\\]\$';
  const definition_26 = '[-\\w]+';
  const definition_22 = '^(\\s*)\\S[\\s\\S]*';
  const definition_28 = '^\\(|\\)\$|,';
  const definition_3 = '=';
  const definition_10 =
      'TLIST\\s*\\(\\s*\\w+(?:(?:\\s*,\\s*"[^"]*")+|\\s*,\\s*"[^"]*"-"[^"]*")?\\s*\\)';
  const definition_16 = '^TLIST';
  const definition_24 = '^(\\s*\\(\\s*)\\w+';
  const definition_18 = '[(),]';
  const definition_19 = '-';
  const definition_5 = '[;,]';
  const definition_12 = '(^|\\s)\\d+(?:\\.\\d+)?(?!\\S)';
  const definition_7 = 'NO|YES';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    lookbehind: true,
    greedy: true,
    inside: definition_9,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    inside: definition_21,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    inside: definition_23,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_1),
    aliases: ['property'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    inside: definition_11,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
  );
  definition_21.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_25))],
    'property': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_23.addAllTokens({
    'parameter': [definition_27],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
  });
  definition_9.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_13))],
    'language': [definition_14],
    'sub-key': [definition_15],
  });
  definition_11.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_16))],
    'property': [definition_17],
    'string': [GrammarToken(pattern: RegExp(definition_1))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
    'operator': [GrammarToken(pattern: RegExp(definition_19))],
  });
  definition_0.addAllTokens({
    'string': [GrammarToken(pattern: RegExp(definition_1))],
    'keyword': [definition_2],
    'operator': [GrammarToken(pattern: RegExp(definition_3))],
    'tlist': [definition_4],
    'punctuation': [GrammarToken(pattern: RegExp(definition_5))],
    'number': [definition_6],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'pcaxis',
    definition_0,
    aliases: ['px'],
  );
}

final languagePcaxis = _create();
