// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_10 = '\\{[^}]*\\}';
  const definition_11 = '"[^"]*"';
  const definition_12 = '\'(?:[^\\r]|\\r\\n?)';
  const definition_14 = '\\d+`';
  const definition_5 = '\\d+';
  const definition_6 = '[-!#\$%&\'*+,./:;=>?@\\\\^_`|~ßø]';
  const definition_7 = '\\[|\\]';
  const definition_8 = '[a-z]';
  const definition_16 = '[()<BDO®]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['number'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['important'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['bold'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'character-code': [definition_3],
    'assembler-code': [definition_4],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
    'variable': [GrammarToken(pattern: RegExp(definition_8))],
    'non-standard': [definition_9],
  });

  return LanguageProto(
    'false',
    definition_0,
  );
}

final languageFalse = _create();
