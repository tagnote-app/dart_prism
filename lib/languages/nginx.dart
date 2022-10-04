// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_6 = Grammar();
  final definition_14 = Grammar();
  const definition_4 = '(^|[\\s{};])#.*';
  const definition_5 =
      '(^|\\s)\\w(?:[^;{}"\'\\\\\\s]|\\\\.|"(?:[^"\\\\]|\\\\.)*"|\'(?:[^\'\\\\]|\\\\.)*\'|\\s+(?:#.*(?!.)|(?![#\\s])))*?(?=\\s*[;{])';
  const definition_13 =
      '((?:^|[^\\\\])(?:\\\\\\\\)*)(?:"(?:[^"\\\\]|\\\\.)*"|\'(?:[^\'\\\\]|\\\\.)*\')';
  const definition_20 = '\\\\["\'\\\\nrt]';
  const definition_12 =
      '\\\$(?:\\w[a-z\\d]*(?:_[^\\x00-\\x1F\\s"\'\\\\()\$]*)?|\\{[^}\\s"\'\\\\]+\\})';
  const definition_15 = '(\\s)#.*';
  const definition_16 = '^\\S+';
  const definition_17 = '(\\s)(?:off|on)(?!\\S)';
  const definition_18 = '(\\s)\\d+[a-z]*(?!\\S)';
  const definition_3 = '[{};]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_5),
    lookbehind: true,
    greedy: true,
    inside: definition_6,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    greedy: true,
    inside: definition_14,
    global: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['entity'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    lookbehind: true,
  );
  definition_14.addAllTokens({
    'escape': [definition_19],
    'variable': [
      GrammarToken(pattern: RegExp(definition_12, caseSensitive: false))
    ],
  });
  definition_6.addAllTokens({
    'string': [definition_7],
    'comment': [definition_8],
    'keyword': [definition_9],
    'boolean': [definition_10],
    'number': [definition_11],
    'variable': [
      GrammarToken(pattern: RegExp(definition_12, caseSensitive: false))
    ],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'directive': [definition_2],
    'punctuation': [GrammarToken(pattern: RegExp(definition_3))],
  });

  return LanguageProto(
    'nginx',
    definition_0,
  );
}

final languageNginx = _create();
