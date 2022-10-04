// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\/\\/.*';
  const definition_13 =
      '"(?:[^"\\\\\\r\\n]|\\\\.)*"|\'(?:[^\'\\\\\\r\\n]|\\\\.)*\'';
  const definition_14 = '(:\\s*)(?:\\w+|`(?:[^`\\\\\\r\\n])*`)(?=\\s*[{):])';
  const definition_15 =
      '(-\\[\\s*(?:\\w+\\s*|`(?:[^`\\\\\\r\\n])*`\\s*)?:\\s*|\\|\\s*:\\s*)(?:\\w+|`(?:[^`\\\\\\r\\n])*`)';
  const definition_17 = '`(?:[^`\\\\\\r\\n])*`';
  const definition_6 = '\\\$\\w+';
  const definition_7 =
      '\\b(?:ADD|ALL|AND|AS|ASC|ASCENDING|ASSERT|BY|CALL|CASE|COMMIT|CONSTRAINT|CONTAINS|CREATE|CSV|DELETE|DESC|DESCENDING|DETACH|DISTINCT|DO|DROP|ELSE|END|ENDS|EXISTS|FOR|FOREACH|IN|INDEX|IS|JOIN|KEY|LIMIT|LOAD|MANDATORY|MATCH|MERGE|NODE|NOT|OF|ON|OPTIONAL|OR|ORDER(?=\\s+BY)|PERIODIC|REMOVE|REQUIRE|RETURN|SCALAR|SCAN|SET|SKIP|START|STARTS|THEN|UNION|UNIQUE|UNWIND|USING|WHEN|WHERE|WITH|XOR|YIELD)\\b';
  const definition_8 = '\\b\\w+\\b(?=\\s*\\()';
  const definition_9 = '\\b(?:false|null|true)\\b';
  const definition_10 =
      '\\b(?:0x[\\da-fA-F]+|\\d+(?:\\.\\d+)?(?:[eE][+-]?\\d+)?)\\b';
  const definition_11 = ':|<--?|--?>?|<>|=~?|[<>]=?|[+*/%^|]|\\.\\.\\.?';
  const definition_12 = '[()[\\]{},;.]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'class-name': [definition_3],
    'relationship': [definition_4],
    'identifier': [definition_5],
    'variable': [GrammarToken(pattern: RegExp(definition_6))],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'function': [GrammarToken(pattern: RegExp(definition_8))],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'number': [GrammarToken(pattern: RegExp(definition_10))],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'cypher',
    definition_0,
  );
}

final languageCypher = _create();
