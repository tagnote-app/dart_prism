// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '[^\\r\\n,"]+|"(?:[^"]|"")*"(?!")';
  const definition_2 = ',';
  definition_0.addAllTokens({
    'value': [GrammarToken(pattern: RegExp(definition_1))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_2))],
  });

  return LanguageProto(
    'csv',
    definition_0,
  );
}

final languageCsv = _create();
