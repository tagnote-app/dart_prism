// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_9 = Grammar();
  const definition_1 = '^#.*';
  const definition_2 = '^[-–].*';
  const definition_3 = '^\\+.*';
  const definition_4 = '("|\')(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_8 = '^.*\\\$ git .*\$';
  const definition_10 = '\\s--?\\w+';
  const definition_6 = '^@@.*@@\$';
  const definition_7 = '^commit \\w{40}\$';
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_8, multiLine: true),
    inside: definition_9,
  );
  definition_9.addAllTokens({
    'parameter': [GrammarToken(pattern: RegExp(definition_10))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1, multiLine: true))],
    'deleted': [GrammarToken(pattern: RegExp(definition_2, multiLine: true))],
    'inserted': [GrammarToken(pattern: RegExp(definition_3, multiLine: true))],
    'string': [GrammarToken(pattern: RegExp(definition_4))],
    'command': [definition_5],
    'coord': [GrammarToken(pattern: RegExp(definition_6, multiLine: true))],
    'commit-sha1': [
      GrammarToken(pattern: RegExp(definition_7, multiLine: true))
    ],
  });

  return LanguageProto(
    'git',
    definition_0,
  );
}

final languageGit = _create();
