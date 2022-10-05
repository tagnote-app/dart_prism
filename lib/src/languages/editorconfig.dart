// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_7 = Grammar();
  final definition_12 = Grammar();
  const definition_1 = '[;#].*';
  const definition_5 = '(^[ \\t]*)\\[.+\\]';
  const definition_13 = '\\\\\\\\[\\[\\]{},!?.*]';
  const definition_14 = '[!?]|\\.\\.|\\*{1,2}';
  const definition_15 = '[\\[\\]{},]';
  const definition_8 = '(^[ \\t]*)[^\\s=]+(?=[ \\t]*=)';
  const definition_10 = '=.*';
  const definition_16 = '^=';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_5, multiLine: true),
    lookbehind: true,
    aliases: ['selector'],
    inside: definition_7,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_8, multiLine: true),
    lookbehind: true,
    aliases: ['attr-name'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_10),
    aliases: ['attr-value'],
    inside: definition_12,
  );
  definition_7.addAllTokens({
    'regex': [GrammarToken(pattern: RegExp(definition_13))],
    'operator': [GrammarToken(pattern: RegExp(definition_14))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });
  definition_12.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'section': [definition_2],
    'key': [definition_3],
    'value': [definition_4],
  });

  return LanguageProto(
    'editorconfig',
    definition_0,
  );
}

final languageEditorconfig = _create();
