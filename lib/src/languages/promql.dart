// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  final definition_14 = Grammar();
  final definition_23 = Grammar();
  final definition_25 = Grammar();
  const definition_10 = '(^[ \\t]*)#.*';
  const definition_11 =
      '((?:on|ignoring|group_right|group_left|by|without)\\s*)\\([^)]*\\)';
  const definition_26 = '\\b[^,]+\\b';
  const definition_18 = '[(),]';
  const definition_13 = '\\{[^{}]*\\}';
  const definition_28 = '\\b[a-z_]\\w*(?=\\s*(?:=|![=~]))';
  const definition_29 = '(["\'`])(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1';
  const definition_21 = '\\{|\\}|=~?|![=~]|,';
  const definition_22 = '\\[[\\w\\s:]+\\]';
  const definition_31 = '\\[|\\]|:';
  const definition_34 = '\\b(?:\\d+(?:[smhdwy]|ms))+\\b';
  const definition_24 = '(\\boffset\\s+)\\w+';
  const definition_5 =
      '\\b(?:sum|min|max|avg|group|stddev|stdvar|count|count_values|bottomk|topk|quantile|on|ignoring|group_right|group_left|by|without|offset)\\b';
  const definition_6 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_7 =
      '[-+]?(?:(?:\\b\\d+(?:\\.\\d+)?|\\B\\.\\d+)(?:e[-+]?\\d+)?\\b|\\b(?:0x[0-9a-f]+|nan|inf)\\b)';
  const definition_8 = '[\\^*/%+-]|==|!=|<=|<|>=|>|\\b(?:and|or|unless)\\b';
  const definition_9 = '[{};()`,.[\\]]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10, multiLine: true),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    inside: definition_12,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['attr-name'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13),
    inside: definition_14,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['attr-name'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_29),
    greedy: true,
    aliases: ['attr-value'],
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_22),
    inside: definition_23,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_34, caseSensitive: false),
    aliases: ['number'],
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    inside: definition_25,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_34, caseSensitive: false),
    aliases: ['number'],
  );
  definition_12.addAllTokens({
    'label-key': [definition_17],
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_14.addAllTokens({
    'label-key': [definition_19],
    'label-value': [definition_20],
    'punctuation': [GrammarToken(pattern: RegExp(definition_21))],
  });
  definition_23.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_31))],
    'range-duration': [definition_32],
  });
  definition_25.addAllTokens({
    'range-duration': [definition_33],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'vector-match': [definition_2],
    'context-labels': [definition_3],
    'context-range': [
      definition_15,
      definition_16,
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'function': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'promql',
    definition_0,
  );
}

final languagePromql = _create();
