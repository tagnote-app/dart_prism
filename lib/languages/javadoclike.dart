// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_4 =
      '(^[\\t ]*(?:\\/{3}|\\*|\\/\\*\\*)\\s*@(?:arg|arguments|param)\\s+)\\w+';
  const definition_5 =
      '(^[\\t ]*(?:\\/{3}|\\*|\\/\\*\\*)\\s*|\\{)@[a-z][a-zA-Z-]+\\b';
  const definition_3 = '[{}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4, multiLine: true),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_5, multiLine: true),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'parameter': [definition_1],
    'keyword': [definition_2],
    'punctuation': [GrammarToken(pattern: RegExp(definition_3))],
  });

  return LanguageProto(
    'javadoclike',
    definition_0,
  );
}

final languageJavadoclike = _create();
