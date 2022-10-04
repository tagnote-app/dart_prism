// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_13 = '# .*';
  const definition_15 = '#\\..*';
  const definition_17 = '#:.*';
  const definition_19 = '#,.*';
  const definition_21 = '#\\|.*';
  const definition_23 = '#.*';
  const definition_12 = '(^|[^\\\\])"(?:[^"\\\\]|\\\\.)*"';
  const definition_3 = '^msg(?:ctxt|id|id_plural|str)\\b';
  const definition_4 = '\\b\\d+\\b';
  const definition_5 = '[\\[\\]]';
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    aliases: ['translator-comment'],
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    aliases: ['extracted-comment'],
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    aliases: ['reference-comment'],
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    aliases: ['flag-comment'],
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_21),
    greedy: true,
    aliases: ['previously-untranslated-comment'],
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [
      definition_6,
      definition_7,
      definition_8,
      definition_9,
      definition_10,
      definition_11,
    ],
    'string': [definition_2],
    'keyword': [GrammarToken(pattern: RegExp(definition_3, multiLine: true))],
    'number': [GrammarToken(pattern: RegExp(definition_4))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_5))],
  });

  return LanguageProto(
    'gettext',
    definition_0,
    aliases: ['po'],
  );
}

final languageGettext = _create();
