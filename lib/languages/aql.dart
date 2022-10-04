// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_13 =
      '([{,]\\s*)(?:(?!\\d)\\w+|(["\'´`])(?:(?!\\2)[^\\\\\\r\\n]|\\\\.)*\\2)(?=\\s*:)';
  const definition_14 = '(["\'])(?:(?!\\1)[^\\\\\\r\\n]|\\\\.)*\\1';
  const definition_15 = '([´`])(?:(?!\\1)[^\\\\\\r\\n]|\\\\.)*\\1';
  const definition_5 = '@@?\\w+';
  const definition_26 = '(\\bWITH\\s+)COUNT(?=\\s+INTO\\b)';
  const definition_17 =
      '\\b(?:AGGREGATE|ALL|AND|ANY|ASC|COLLECT|DESC|DISTINCT|FILTER|FOR|GRAPH|IN|INBOUND|INSERT|INTO|K_PATHS|K_SHORTEST_PATHS|LET|LIKE|LIMIT|NONE|NOT|NULL|OR|OUTBOUND|REMOVE|REPLACE|RETURN|SHORTEST_PATH|SORT|UPDATE|UPSERT|WINDOW|WITH)\\b';
  const definition_27 = '(^|[^\\w.[])(?:KEEP|PRUNE|SEARCH|TO)\\b';
  const definition_28 = '(^|[^\\w.[])(?:CURRENT|NEW|OLD)\\b';
  const definition_29 = '\\bOPTIONS(?=\\s*\\{)';
  const definition_7 = '\\b(?!\\d)\\w+(?=\\s*\\()';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_21 = '\\.\\.';
  const definition_23 = '\\b0b[01]+';
  const definition_24 = '\\b0x[0-9a-f]+';
  const definition_25 =
      '(?:\\B\\.\\d+|\\b(?:0|[1-9]\\d*)(?:\\.\\d+)?)(?:e[+-]?\\d+)?';
  const definition_11 = '\\*{2,}|[=!]~|[!=<>]=?|&&|\\|\\||[-+*/%]';
  const definition_12 = '::|[?.:,;()[\\]{}]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false),
    lookbehind: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    lookbehind: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_21),
    aliases: ['operator'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'property': [definition_2],
    'string': [definition_3],
    'identifier': [definition_4],
    'variable': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [
      definition_16,
      GrammarToken(pattern: RegExp(definition_17, caseSensitive: false)),
      definition_18,
      definition_19,
      definition_20,
    ],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'range': [definition_9],
    'number': [
      GrammarToken(pattern: RegExp(definition_23, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_24, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_25, caseSensitive: false)),
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'aql',
    definition_0,
  );
}

final languageAql = _create();
