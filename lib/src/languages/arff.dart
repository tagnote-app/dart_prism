// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '%.*';
  const definition_6 = '(["\'])(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_3 = '@(?:attribute|data|end|relation)\\b';
  const definition_4 = '\\b\\d+(?:\\.\\d+)?\\b';
  const definition_5 = '[{},]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_6),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'number': [GrammarToken(pattern: RegExp(definition_4))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_5))],
  });

  return LanguageProto(
    'arff',
    definition_0,
  );
}

final languageArff = _create();
