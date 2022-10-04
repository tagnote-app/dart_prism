// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\/\\/.*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_2 = '\\b(?:BUILTIN|CHIP|CLOCKED|IN|OUT|PARTS)\\b';
  const definition_3 = '\\b(?:false|true)\\b';
  const definition_4 = '\\b[A-Za-z][A-Za-z0-9]*(?=\\()';
  const definition_5 = '\\b\\d+\\b';
  const definition_6 = '=|\\.\\.';
  const definition_7 = '[{}[\\];(),:]';
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'keyword': [GrammarToken(pattern: RegExp(definition_2))],
    'boolean': [GrammarToken(pattern: RegExp(definition_3))],
    'function': [GrammarToken(pattern: RegExp(definition_4))],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'nand2tetris-hdl',
    definition_0,
  );
}

final languageNand2TetrisHdl = _create();
