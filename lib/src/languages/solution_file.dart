// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  final definition_19 = Grammar();
  final definition_16 = Grammar();
  const definition_10 = '#.*';
  const definition_11 = '"[^"\\r\\n]*"|\'[^\'\\r\\n]*\'';
  const definition_17 =
      '\\{[\\da-f]{8}-[\\da-f]{4}-[\\da-f]{4}-[\\da-f]{4}-[\\da-f]{12}\\}';
  const definition_20 = '[{}]';
  const definition_13 =
      '^([ \\t]*)(?:([A-Z]\\w*)\\b(?=.*(?:\\r\\n?|\\n)(?:\\1[ \\t].*(?:\\r\\n?|\\n))*\\1End\\2(?=[ \\t]*\$))|End[A-Z]\\w*(?=[ \\t]*\$))';
  const definition_15 = '^([ \\t]*)(?!\\s)[^\\r\\n"#=()]*[^\\s"#=()](?=\\s*=)';
  const definition_6 = '\\b\\d+(?:\\.\\d+)*\\b';
  const definition_7 = '\\b(?:FALSE|TRUE)\\b';
  const definition_8 = '=';
  const definition_9 = '[(),]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    inside: definition_12,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    aliases: ['constant'],
    inside: definition_19,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['keyword'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15, multiLine: true),
    lookbehind: true,
    inside: definition_16,
  );
  definition_19.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
  });
  definition_12.addAllTokens({
    'guid': [definition_5],
  });
  definition_16.addAllTokens({
    'guid': [definition_5],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'object': [definition_3],
    'property': [definition_4],
    'guid': [definition_5],
    'number': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'solution-file',
    definition_0,
    aliases: ['sln'],
  );
}

final languageSolutionFile = _create();
