// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_7 = '<|>';
  const definition_9 = '\\+';
  const definition_11 = '-';
  const definition_13 = '\\[|\\]';
  const definition_5 = '[.,]';
  const definition_6 = '\\S+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_7),
    aliases: ['keyword'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9),
    aliases: ['inserted'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11),
    aliases: ['deleted'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['important'],
  );
  definition_0.addAllTokens({
    'pointer': [definition_1],
    'increment': [definition_2],
    'decrement': [definition_3],
    'branching': [definition_4],
    'operator': [GrammarToken(pattern: RegExp(definition_5))],
    'comment': [GrammarToken(pattern: RegExp(definition_6))],
  });

  return LanguageProto(
    'brainfuck',
    definition_0,
  );
}

final languageBrainfuck = _create();
