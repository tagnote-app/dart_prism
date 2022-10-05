// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = ';.*|\\B\\(.*?\\)\\B';
  const definition_7 = '"(?:""|[^"])*"';
  const definition_3 = '\\b[GM]\\d+(?:\\.\\d+)?\\b';
  const definition_4 = '\\b[A-Z]';
  const definition_8 = '(\\*)\\d+';
  const definition_6 = '[:*]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_7),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_8),
    lookbehind: true,
    aliases: ['number'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'keyword': [GrammarToken(pattern: RegExp(definition_3))],
    'property': [GrammarToken(pattern: RegExp(definition_4))],
    'checksum': [definition_5],
    'punctuation': [GrammarToken(pattern: RegExp(definition_6))],
  });

  return LanguageProto(
    'gcode',
    definition_0,
  );
}

final languageGcode = _create();
