// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_14 = Grammar();
  final definition_17 = Grammar();
  final definition_64 = Grammar();
  final definition_21 = Grammar();
  final definition_58 = Grammar();
  final definition_60 = Grammar();
  const definition_1 = '\\/\\/.*|(?:\\/\\*[\\s\\S]*?(?:\\*\\/|\$))';
  const definition_13 =
      '(?:"(?:""|[^"])*"(?!")|\'(?:\'\'|[^\'])*\'(?!\'))!?\\*?';
  const definition_34 = '!\$|!\\*\$|\\*\$';
  const definition_15 = '(@namespace\\s+)[a-zA-Z0-9\\-.]+(?=\\s*\\{)';
  const definition_16 =
      '(@pattern\\s+)?#?[a-zA-Z0-9\\-.]+(?:\\s*\\(\\s*(?:~\\s*)?[a-zA-Z0-9\\-.]+\\s*(?:,\\s*(?:~\\s*)?[a-zA-Z0-9\\-.]*)*\\))?(?=\\s*=)';
  const definition_61 = '^#?[a-zA-Z0-9\\-.]+';
  const definition_63 = '\\(.*\\)';
  const definition_12 = '[a-zA-Z0-9\\-.]+';
  const definition_40 = '[,()]';
  const definition_45 = '~';
  const definition_18 = '(@search\\s+|#)[a-zA-Z0-9\\-.]+(?:\\.\\*)?(?=\\s*;)';
  const definition_6 =
      '@(?:having|inside|namespace|outside|pattern|require|search|where)\\b';
  const definition_20 =
      '\\b(?:Alpha|AlphaNum|Any|Blank|End|LineBreak|Num|NumAlpha|Punct|Space|Start|Symbol|Word|WordBreak)\\b(?:\\([a-zA-Z0-9\\-.,\\s+]*\\))?';
  const definition_65 = '^[a-zA-Z0-9\\-.]+';
  const definition_22 = '\\b\\d+(?:\\s*\\+|\\s*-\\s*\\d+)?(?!\\w)';
  const definition_41 = '=';
  const definition_43 = '&';
  const definition_47 = '\\?';
  const definition_49 = '[[\\]]';
  const definition_51 = '[{}]';
  const definition_53 = '[+_]';
  const definition_55 = '\\.{2,3}';
  const definition_57 =
      '([a-zA-Z0-9\\-.]+\\s*\\()\\s*[a-zA-Z0-9\\-.]+\\s*:\\s*[a-zA-Z0-9\\-.]+(?:\\s*,\\s*[a-zA-Z0-9\\-.]+\\s*:\\s*[a-zA-Z0-9\\-.]+)*(?=\\s*\\))';
  const definition_68 = ':';
  const definition_59 = '[a-zA-Z0-9\\-.]+\\s*:';
  const definition_11 = '[:;,()]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    inside: definition_14,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    inside: definition_17,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_61),
    aliases: ['class-name'],
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_63),
    inside: definition_64,
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['variable'],
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_45),
    aliases: ['field-hidden-mark'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['function'],
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_20),
    inside: definition_21,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_65),
    aliases: ['builtin'],
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_22),
    aliases: ['number'],
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['builtin'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_22),
    aliases: ['number'],
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_41),
    aliases: ['pattern-def'],
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_43),
    aliases: ['conjunction'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_45),
    aliases: ['exception'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_47),
    aliases: ['optionality'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_49),
    aliases: ['repetition'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_51),
    aliases: ['variation'],
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_53),
    aliases: ['sequence'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_55),
    aliases: ['span'],
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_57),
    lookbehind: true,
    inside: definition_58,
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['variable'],
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_59),
    inside: definition_60,
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['variable'],
  );
  definition_14.addAllTokens({
    'string-attrs': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_64.addAllTokens({
    'field-name': [definition_70],
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
    'operator': [definition_71],
  });
  definition_17.addAllTokens({
    'pattern-name': [definition_35],
    'fields': [definition_36],
  });
  definition_21.addAllTokens({
    'standard-pattern-name': [definition_37],
    'quantifier': [definition_38],
    'standard-pattern-attr': [definition_39],
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
  });
  definition_58.addAllTokens({
    'field-name': [definition_67],
    'colon': [GrammarToken(pattern: RegExp(definition_68))],
  });
  definition_60.addAllTokens({
    'field-name': [definition_69],
    'colon': [GrammarToken(pattern: RegExp(definition_68))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'namespace': [definition_3],
    'pattern': [definition_4],
    'search': [definition_5],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'standard-pattern': [definition_7],
    'quantifier': [definition_8],
    'operator': [
      definition_24,
      definition_25,
      definition_26,
      definition_27,
      definition_28,
      definition_29,
      definition_30,
      definition_31,
    ],
    'field-capture': [
      definition_32,
      definition_33,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
    'name': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'nevod',
    definition_0,
  );
}

final languageNevod = _create();
