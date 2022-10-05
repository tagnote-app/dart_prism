// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_8 = Grammar();
  final definition_13 = Grammar();
  const definition_6 = '(^[ \\f\\t\\v]*)[#;][^\\n\\r]*';
  const definition_7 = '(^[ \\f\\t\\v]*)\\[[^\\n\\r\\]]*\\]?';
  const definition_17 =
      '(^\\[[ \\f\\t\\v]*)[^ \\f\\t\\v\\]]+(?:[ \\f\\t\\v]+[^ \\f\\t\\v\\]]+)*';
  const definition_15 = '\\[|\\]';
  const definition_9 =
      '(^[ \\f\\t\\v]*)[^ \\f\\n\\r\\t\\v=]+(?:[ \\f\\t\\v]+[^ \\f\\n\\r\\t\\v=]+)*(?=[ \\f\\t\\v]*=)';
  const definition_11 =
      '(=[ \\f\\t\\v]*)[^ \\f\\n\\r\\t\\v]+(?:[ \\f\\t\\v]+[^ \\f\\n\\r\\t\\v]+)*';
  const definition_19 = '^("|\').+(?=\\1\$)';
  const definition_5 = '=';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_6, multiLine: true),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_7, multiLine: true),
    lookbehind: true,
    inside: definition_8,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
    aliases: ['selector'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_9, multiLine: true),
    lookbehind: true,
    aliases: ['attr-name'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    aliases: ['attr-value'],
    inside: definition_13,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
  );
  definition_8.addAllTokens({
    'section-name': [definition_14],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });
  definition_13.addAllTokens({
    'inner-value': [definition_16],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'section': [definition_2],
    'key': [definition_3],
    'value': [definition_4],
    'punctuation': [GrammarToken(pattern: RegExp(definition_5))],
  });

  return LanguageProto(
    'ini',
    definition_0,
  );
}

final languageIni = _create();
