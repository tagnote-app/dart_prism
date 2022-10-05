// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_8 = Grammar();
  final definition_10 = Grammar();
  const definition_5 = '"[^\\r\\n"]*"|\'[^\\r\\n\']*\'';
  const definition_6 = '<[^<>\\r\\n\\t]+>(?=\\s*::=)';
  const definition_13 = '^<|>\$';
  const definition_9 = '<[^<>\\r\\n\\t]+>';
  const definition_4 = '::=|[|()[\\]{}*+?]|\\.{3}';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_5),
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_6),
    aliases: ['rule', 'keyword'],
    inside: definition_8,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_9),
    inside: definition_10,
  );
  definition_8.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });
  definition_10.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });
  definition_0.addAllTokens({
    'string': [definition_1],
    'definition': [definition_2],
    'rule': [definition_3],
    'operator': [GrammarToken(pattern: RegExp(definition_4))],
  });

  return LanguageProto(
    'bnf',
    definition_0,
    aliases: ['rbnf'],
  );
}

final languageBnf = _create();
