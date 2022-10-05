// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_4 = Grammar();
  const definition_3 =
      '\\{\\{[\\s\\S]*?\\}\\}|\\{%[\\s\\S]*?%\\}|\\{#[\\s\\S]*?#\\}';
  const definition_5 = '^\\{#[\\s\\S]*?#\\}\$';
  const definition_18 = '(^\\{%[+-]?\\s*)\\w+';
  const definition_20 = '^\\{[{%][+-]?|[+-]?[}%]\\}\$';
  const definition_22 = '("|\')(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_23 = '(\\|)\\w+';
  const definition_25 = '(\\bis\\s+(?:not\\s+)?)(?!not\\b)\\w+';
  const definition_11 = '\\b[a-z_]\\w+(?=\\s*\\()';
  const definition_12 =
      '\\b(?:and|as|by|else|for|if|import|in|is|loop|not|or|recursive|with|without)\\b';
  const definition_13 = '[-+%=]=?|!=|\\*\\*?=?|\\/\\/?=?|<[<=>]?|>[=>]?|[&|^~]';
  const definition_14 = '\\b\\d+(?:\\.\\d+)?\\b';
  const definition_15 = '[Ff]alse|[Nn]one|[Tt]rue';
  const definition_16 = '\\b\\w+\\b';
  const definition_17 = '[{}[\\](),.:;]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_3),
    inside: definition_4,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['punctuation'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    aliases: ['function'],
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_4.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_5))],
    'tag': [definition_6],
    'delimiter': [definition_7],
    'string': [definition_8],
    'filter': [definition_9],
    'test': [definition_10],
    'function': [
      GrammarToken(pattern: RegExp(definition_11, caseSensitive: false))
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_12))],
    'operator': [GrammarToken(pattern: RegExp(definition_13))],
    'number': [GrammarToken(pattern: RegExp(definition_14))],
    'boolean': [GrammarToken(pattern: RegExp(definition_15))],
    'variable': [GrammarToken(pattern: RegExp(definition_16))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_17))],
  });
  definition_0.addAllTokens({
    'django': [definition_1],
  });

  return LanguageProto(
    'django',
    definition_0,
    aliases: ['jinja2'],
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageDjango = _create();
