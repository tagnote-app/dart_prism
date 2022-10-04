// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_12 = '\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_13 = '(^|[^\\\\])"(?:[^\\r\\n"\\\\]|\\\\.)*"';
  const definition_14 = '@(?:[\$\\w.-]|`[^\\r\\n`]+`)+';
  const definition_16 = '`[^\\r\\n`]+`(?=\\s*\\()';
  const definition_17 = '`[^\\r\\n`]+`';
  const definition_18 =
      '(\\b(?:enum|error|protocol|record|throws)\\b\\s+)[\$\\w]+';
  const definition_7 =
      '\\b(?:array|boolean|bytes|date|decimal|double|enum|error|false|fixed|float|idl|import|int|local_timestamp_ms|long|map|null|oneway|protocol|record|schema|string|throws|time_ms|timestamp_ms|true|union|uuid|void)\\b';
  const definition_8 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_21 =
      '(^|[^\\w.])-?(?:(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:e[+-]?\\d+)?|0x(?:[a-f0-9]+(?:\\.[a-f0-9]*)?|\\.[a-f0-9]+)(?:p[+-]?\\d+)?)[dfl]?(?![\\w.])';
  const definition_20 = '-?\\b(?:Infinity|NaN)\\b';
  const definition_10 = '=';
  const definition_11 = '[()\\[\\]{}<>.:,;-]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    aliases: ['function'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    aliases: ['function'],
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'annotation': [definition_3],
    'function-identifier': [definition_4],
    'identifier': [definition_5],
    'class-name': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'function': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'number': [
      definition_19,
      GrammarToken(pattern: RegExp(definition_20)),
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'avro-idl',
    definition_0,
    aliases: ['avdl'],
  );
}

final languageAvroIdl = _create();
