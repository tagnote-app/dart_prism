// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  final definition_16 = Grammar();
  final definition_19 = Grammar();
  final definition_22 = Grammar();
  final definition_25 = Grammar();
  final definition_28 = Grammar();
  const definition_8 = '^(?:\\*{3}|-{3}|\\+{3}).*\$';
  const definition_9 = '^@@.*@@\$';
  const definition_10 = '^\\d.*\$';
  const definition_11 = '^(?:[-].*(?:\\r\\n?|\\n|(?![\\s\\S])))+';
  const definition_38 = '^[-]';
  const definition_14 = '^(?:[<].*(?:\\r\\n?|\\n|(?![\\s\\S])))+';
  const definition_39 = '^[<]';
  const definition_17 = '^(?:[+].*(?:\\r\\n?|\\n|(?![\\s\\S])))+';
  const definition_40 = '^[+]';
  const definition_20 = '^(?:[>].*(?:\\r\\n?|\\n|(?![\\s\\S])))+';
  const definition_41 = '^[>]';
  const definition_23 = '^(?:[ ].*(?:\\r\\n?|\\n|(?![\\s\\S])))+';
  const definition_42 = '^[ ]';
  const definition_26 = '^(?:[!].*(?:\\r\\n?|\\n|(?![\\s\\S])))+';
  const definition_44 = '^[!]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11, multiLine: true),
    aliases: ['deleted'],
    inside: definition_13,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_38, multiLine: true),
    greedy: true,
    aliases: ['deleted'],
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14, multiLine: true),
    aliases: ['deleted'],
    inside: definition_16,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_39, multiLine: true),
    greedy: true,
    aliases: ['deleted'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17, multiLine: true),
    aliases: ['inserted'],
    inside: definition_19,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_40, multiLine: true),
    greedy: true,
    aliases: ['inserted'],
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_20, multiLine: true),
    aliases: ['inserted'],
    inside: definition_22,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_41, multiLine: true),
    greedy: true,
    aliases: ['inserted'],
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_23, multiLine: true),
    aliases: [],
    inside: definition_25,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_42, multiLine: true),
    greedy: true,
    aliases: ['unchanged'],
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_26, multiLine: true),
    aliases: ['bold'],
    inside: definition_28,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_44, multiLine: true),
    greedy: true,
    aliases: ['diff'],
    global: true,
  );
  definition_13.addAllTokens({
    'prefix': [definition_30],
  });
  definition_16.addAllTokens({
    'prefix': [definition_31],
  });
  definition_19.addAllTokens({
    'prefix': [definition_33],
  });
  definition_22.addAllTokens({
    'prefix': [definition_34],
  });
  definition_25.addAllTokens({
    'prefix': [definition_35],
  });
  definition_28.addAllTokens({
    'prefix': [definition_37],
  });
  definition_0.addAllTokens({
    'coord': [
      GrammarToken(pattern: RegExp(definition_8, multiLine: true)),
      GrammarToken(pattern: RegExp(definition_9, multiLine: true)),
      GrammarToken(pattern: RegExp(definition_10, multiLine: true)),
    ],
    'deleted-sign': [definition_2],
    'deleted-arrow': [definition_3],
    'inserted-sign': [definition_4],
    'inserted-arrow': [definition_5],
    'unchanged': [definition_6],
    'diff': [definition_7],
  });

  return LanguageProto(
    'diff',
    definition_0,
  );
}

final languageDiff = _create();
