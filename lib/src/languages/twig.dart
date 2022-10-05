// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_7 = Grammar();
  final definition_21 = Grammar();
  const definition_4 = '\\{#[\\s\\S]*?#\\}';
  const definition_6 = '\\{(?:#[\\s\\S]*?#|%[\\s\\S]*?%|\\{[\\s\\S]*?\\})\\}';
  const definition_16 = '(^\\{%-?\\s*)\\w+';
  const definition_18 = '^\\{[{%]-?|-?[%}]\\}\$';
  const definition_20 = '("|\')(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_24 = '^[\'"]|[\'"]\$';
  const definition_11 = '\\b(?:even|if|odd)\\b';
  const definition_12 = '\\b(?:false|null|true)\\b';
  const definition_13 =
      '\\b0x[\\dA-Fa-f]+|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[Ee][-+]?\\d+)?';
  const definition_25 =
      '(\\s)(?:and|b-and|b-or|b-xor|ends with|in|is|matches|not|or|same as|starts with)(?=\\s)';
  const definition_23 = '[=<>]=?|!=|\\*\\*?|\\/\\/?|\\?:?|[-+~%|]';
  const definition_15 = '[()\\[\\]{}:.,]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_6),
    greedy: true,
    inside: definition_7,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['punctuation'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_20),
    inside: definition_21,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_21.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_7.addAllTokens({
    'tag-name': [definition_8],
    'delimiter': [definition_9],
    'string': [definition_10],
    'keyword': [GrammarToken(pattern: RegExp(definition_11))],
    'boolean': [GrammarToken(pattern: RegExp(definition_12))],
    'number': [GrammarToken(pattern: RegExp(definition_13))],
    'operator': [
      definition_22,
      GrammarToken(pattern: RegExp(definition_23)),
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });
  definition_0.addAllTokens({
    'twig-comment': [definition_1],
    'twig': [definition_2],
  });

  return LanguageProto(
    'twig',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageTwig = _create();
