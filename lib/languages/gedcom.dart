// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_6 = Grammar();
  const definition_5 =
      '(^[\\t ]*\\d+ +(?:@\\w[\\w!"\$%&\'()*+,\\-./:;<=>?[\\\\\\]^`{|}~\\x80-\\xfe #]*@ +)?\\w+ ).+';
  const definition_14 =
      '^@\\w[\\w!"\$%&\'()*+,\\-./:;<=>?[\\\\\\]^`{|}~\\x80-\\xfe #]*@\$';
  const definition_7 =
      '(^[\\t ]*\\d+ +(?:@\\w[\\w!"\$%&\'()*+,\\-./:;<=>?[\\\\\\]^`{|}~\\x80-\\xfe #]*@ +)?)\\w+';
  const definition_9 = '(^[\\t ]*)\\d+';
  const definition_11 =
      '@\\w[\\w!"\$%&\'()*+,\\-./:;<=>?[\\\\\\]^`{|}~\\x80-\\xfe #]*@';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_5, multiLine: true),
    lookbehind: true,
    inside: definition_6,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['variable'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_7, multiLine: true),
    lookbehind: true,
    aliases: ['tag'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_9, multiLine: true),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11),
    aliases: ['variable'],
  );
  definition_6.addAllTokens({
    'pointer': [definition_13],
  });
  definition_0.addAllTokens({
    'line-value': [definition_1],
    'record': [definition_2],
    'level': [definition_3],
    'pointer': [definition_4],
  });

  return LanguageProto(
    'gedcom',
    definition_0,
  );
}

final languageGedcom = _create();
