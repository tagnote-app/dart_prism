// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_9 = '(^|\\s)\\/\\*[\\s\\S]*?(?:\$|\\*\\/)';
  const definition_10 = '"[^"\\r\\n]*"';
  const definition_11 = '\\B\\.\\B';
  const definition_13 = '(^|[^\\w*])\\.\\w+\\b';
  const definition_5 = '\\b[A-Z][A-Z_]*(?=\\s*\\()';
  const definition_6 = '\\b(?:0[xX][a-fA-F0-9]+|\\d+)[KM]?\\b';
  const definition_7 =
      '>>=?|<<=?|->|\\+\\+|--|&&|\\|\\||::|[?:~]|[-+*/%&|^!=<>]=?';
  const definition_8 = '[(){},;]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11),
    aliases: ['important'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    aliases: ['keyword'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'identifier': [definition_2],
    'location-counter': [definition_3],
    'section': [definition_4],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'number': [GrammarToken(pattern: RegExp(definition_6))],
    'operator': [GrammarToken(pattern: RegExp(definition_7))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'linker-script',
    definition_0,
    aliases: ['ld'],
  );
}

final languageLinkerScript = _create();
