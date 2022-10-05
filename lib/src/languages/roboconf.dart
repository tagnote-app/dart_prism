// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '#.*';
  const definition_9 =
      '(^|\\s)(?:(?:external|import)\\b|(?:facet|instance of)(?=[ \\t]+[\\w-]+[ \\t]*\\{))';
  const definition_10 = '[\\w-]+(?=[ \\t]*\\{)';
  const definition_4 = '[\\w.-]+(?=[ \\t]*:)';
  const definition_12 = '(=[ \\t]*(?![ \\t]))[^,;]+';
  const definition_14 = '\\(optional\\)';
  const definition_16 = '(\\.)\\*';
  const definition_8 = '[{},.;:=]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_10),
    aliases: ['variable'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    aliases: ['attr-value'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['builtin'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    aliases: ['operator'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'keyword': [definition_2],
    'component': [definition_3],
    'property': [GrammarToken(pattern: RegExp(definition_4))],
    'value': [definition_5],
    'optional': [definition_6],
    'wildcard': [definition_7],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'roboconf',
    definition_0,
  );
}

final languageRoboconf = _create();
