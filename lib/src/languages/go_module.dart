// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_7 = '\\/\\/.*';
  const definition_8 =
      '(^|[\\s()[\\],])v\\d+\\.\\d+\\.\\d+(?:[+-][-+.\\w]*)?(?![^\\s()[\\],])';
  const definition_10 = '((?:^|\\s)go\\s+)\\d+(?:\\.\\d+){1,2}';
  const definition_11 =
      '^([ \\t]*)(?:exclude|go|module|replace|require|retract)\\b';
  const definition_5 = '=>';
  const definition_6 = '[()[\\],]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_7),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_10),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11, multiLine: true),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'version': [definition_2],
    'go-version': [definition_3],
    'keyword': [definition_4],
    'operator': [GrammarToken(pattern: RegExp(definition_5))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_6))],
  });

  return LanguageProto(
    'go-module',
    definition_0,
    aliases: ['go-mod'],
  );
}

final languageGoModule = _create();
