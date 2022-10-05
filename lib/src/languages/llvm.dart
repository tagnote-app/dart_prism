// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = ';.*';
  const definition_10 = '"[^"]*"';
  const definition_3 = '\\b(?:false|true)\\b';
  const definition_4 = '[%@!#](?:(?!\\d)(?:[-\$.\\w]|\\\\[a-f\\d]{2})+|\\d+)';
  const definition_5 = '(?!\\d)(?:[-\$.\\w]|\\\\[a-f\\d]{2})+:';
  const definition_11 =
      '\\b(?:double|float|fp128|half|i[1-9]\\d*|label|metadata|ppc_fp128|token|void|x86_fp80|x86_mmx)\\b';
  const definition_7 = '\\b[a-z_][a-z_0-9]*\\b';
  const definition_8 =
      '[+-]?\\b\\d+(?:\\.\\d+)?(?:[eE][+-]?\\d+)?\\b|\\b0x[\\dA-Fa-f]+\\b|\\b0xK[\\dA-Fa-f]{20}\\b|\\b0x[ML][\\dA-Fa-f]{32}\\b|\\b0xH[\\dA-Fa-f]{4}\\b';
  const definition_9 = '[{}[\\];(),.!*=<>]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_11),
    aliases: ['class-name'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'boolean': [GrammarToken(pattern: RegExp(definition_3))],
    'variable': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'label': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'type': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'llvm',
    definition_0,
  );
}

final languageLlvm = _create();
