// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_5 = Grammar();
  const definition_1 = '^#.*';
  const definition_3 = '\\S(?:.*(?:(?:\\\\ )|\\S))?';
  const definition_6 = '^!|\\*\\*?|\\?';
  const definition_9 = '(^|[^\\\\])\\[[^\\[\\]]*\\]';
  const definition_8 = '\\/';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_3),
    aliases: ['string'],
    inside: definition_5,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_9),
    lookbehind: true,
  );
  definition_5.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'regex': [definition_7],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1, multiLine: true))],
    'entry': [definition_2],
  });

  return LanguageProto(
    'ignore',
    definition_0,
    aliases: ['gitignore', 'hgignore', 'npmignore'],
  );
}

final languageIgnore = _create();
