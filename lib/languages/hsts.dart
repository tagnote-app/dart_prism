// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_4 = '\\b(?:includeSubDomains|max-age|preload)(?=[\\s;=]|\$)';
  const definition_2 = '=';
  const definition_3 = ';';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4, caseSensitive: false),
    aliases: ['property'],
  );
  definition_0.addAllTokens({
    'directive': [definition_1],
    'operator': [GrammarToken(pattern: RegExp(definition_2))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_3))],
  });

  return LanguageProto(
    'hsts',
    definition_0,
  );
}

final languageHsts = _create();
