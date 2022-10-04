// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_11 = Grammar();
  final definition_41 = Grammar();
  final definition_32 = Grammar();
  final definition_35 = Grammar();
  const definition_10 =
      '((?:^|[^\\\\])(?:\\\\\\\\)*)\\[(?:[^\\\\\\]]|\\\\[\\s\\S])*\\]';
  const definition_37 = '(^\\[)\\^';
  const definition_39 = '^\\[|\\]\$';
  const definition_40 =
      '(?:[^\\\\-]|\\\\(?:x[\\da-fA-F]{2}|u[\\da-fA-F]{4}|u\\{[\\da-fA-F]+\\}|0[0-7]{0,2}|[123][0-7]{2}|c[a-zA-Z]|.))-(?:[^\\\\-]|\\\\(?:x[\\da-fA-F]{2}|u[\\da-fA-F]{4}|u\\{[\\da-fA-F]+\\}|0[0-7]{0,2}|[123][0-7]{2}|c[a-zA-Z]|.))';
  const definition_6 =
      '\\\\(?:x[\\da-fA-F]{2}|u[\\da-fA-F]{4}|u\\{[\\da-fA-F]+\\}|0[0-7]{0,2}|[123][0-7]{2}|c[a-zA-Z]|.)';
  const definition_47 = '-';
  const definition_12 = '\\\\[\\\\(){}[\\]^\$+*?|.]';
  const definition_42 = '\\\\[wsd]|\\\\p\\{[^{}]+\\}';
  const definition_14 = '\\.|\\\\[wsd]|\\\\p\\{[^{}]+\\}';
  const definition_30 = '\\\\(?![123][0-7]{2})[1-9]';
  const definition_31 = '\\\\k<[^<>\']+>';
  const definition_45 = '(<|\')[^<>\']+(?=[>\']\$)';
  const definition_18 = '[\$^]|\\\\[ABbGZz]';
  const definition_33 =
      '\\((?:\\?(?:<[^<>\']+>|\'[^<>\']+\'|[>:]|<?[=!]|[idmnsuxU]+(?:-[idmnsuxU]+)?:?))?';
  const definition_36 = '\\)';
  const definition_22 = '(?:[+*?]|\\{\\d+(?:,\\d*)?\\})[?+]?';
  const definition_24 = '\\|';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    lookbehind: true,
    inside: definition_11,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_39),
    aliases: ['punctuation'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_40),
    inside: definition_41,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_47),
    aliases: ['operator'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['escape'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_42, caseSensitive: false),
    aliases: ['class-name'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    aliases: ['class-name'],
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_30),
    aliases: ['keyword'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_31),
    aliases: ['keyword'],
    inside: definition_32,
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['function'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['punctuation'],
    inside: definition_35,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_36),
    aliases: ['punctuation'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_22),
    aliases: ['number'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['keyword'],
  );
  definition_41.addAllTokens({
    'escape': [GrammarToken(pattern: RegExp(definition_6))],
    'range-punctuation': [definition_44],
  });
  definition_11.addAllTokens({
    'char-class-negation': [definition_26],
    'char-class-punctuation': [definition_27],
    'range': [definition_28],
    'special-escape': [definition_2],
    'char-set': [definition_29],
    'escape': [GrammarToken(pattern: RegExp(definition_6))],
  });
  definition_32.addAllTokens({
    'group-name': [definition_43],
  });
  definition_35.addAllTokens({
    'group-name': [definition_43],
  });
  definition_0.addAllTokens({
    'char-class': [definition_1],
    'special-escape': [definition_2],
    'char-set': [definition_3],
    'backreference': [
      definition_16,
      definition_17,
    ],
    'anchor': [definition_5],
    'escape': [GrammarToken(pattern: RegExp(definition_6))],
    'group': [
      definition_20,
      definition_21,
    ],
    'quantifier': [definition_8],
    'alternation': [definition_9],
  });

  return LanguageProto(
    'regex',
    definition_0,
  );
}

final languageRegex = _create();
