// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_8 = Grammar();
  final definition_10 = Grammar();
  final definition_31 = Grammar();
  final definition_12 = Grammar();
  final definition_35 = Grammar();
  final definition_14 = Grammar();
  final definition_37 = Grammar();
  const definition_6 = '\\[-[\\s\\S]*?-\\]|--.*';
  const definition_7 = '>>.*:.*';
  const definition_25 = '(>>\\s*)[^\\s:](?:[^:]*[^\\s:])?';
  const definition_9 =
      '#(?:[^{}@#]+\\{[^}#@]*\\}|(?:(?!\\s)[\\d\$+<=a-zA-Z\\x80-\\uFFFF])+)';
  const definition_26 = '(^#)(?:[^{}@#]+)';
  const definition_28 = '^#';
  const definition_30 = '\\{[^{}@#]*\\}';
  const definition_49 = '(^\\{)[^{}@#]+';
  const definition_40 = '[{}]';
  const definition_11 =
      '@(?:[^{}@#]+\\{[^}#@]*\\}|(?:(?!\\s)[\\d\$+<=a-zA-Z\\x80-\\uFFFF])+)';
  const definition_32 = '(^@)(?:[^{}@#]+)';
  const definition_33 = '^@';
  const definition_34 = '\\{[^{}]*\\}';
  const definition_51 = '([\\{|])[^{}|*%]+';
  const definition_52 = '(%)[^}]+';
  const definition_54 = '\\*';
  const definition_56 = '\\|';
  const definition_57 = '(?:%|(\\*)%)';
  const definition_13 = '~(?!\\s)[^@#~{}]*\\{[^{}]*\\}';
  const definition_36 = '(^~)[^{]+';
  const definition_58 = '(%\\s*)(?:h|hours|hrs|m|min|minutes)\\b';
  const definition_47 = '%';
  const definition_59 = '\\d+';
  const definition_38 = '^~';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_6),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_7),
    inside: definition_8,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_9),
    inside: definition_10,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['keyword'],
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_30),
    inside: definition_31,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11),
    inside: definition_12,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['keyword'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_34),
    inside: definition_35,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
    aliases: ['symbol'],
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_54),
    aliases: ['operator'],
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_56),
    aliases: ['operator'],
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_57),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_13),
    inside: definition_14,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_34),
    inside: definition_37,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_58),
    lookbehind: true,
    aliases: ['symbol'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_59),
    aliases: ['number'],
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_38),
    aliases: ['keyword'],
  );
  definition_8.addAllTokens({
    'property': [definition_15],
  });
  definition_31.addAllTokens({
    'quantity': [definition_39],
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
  });
  definition_10.addAllTokens({
    'cookware': [definition_16],
    'cookware-keyword': [definition_17],
    'quantity-group': [definition_18],
  });
  definition_35.addAllTokens({
    'amount': [definition_41],
    'unit': [definition_42],
    'servings-scaler': [definition_43],
    'servings-alternative-separator': [definition_44],
    'unit-separator': [definition_45],
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
  });
  definition_12.addAllTokens({
    'ingredient': [definition_19],
    'ingredient-keyword': [definition_20],
    'amount-group': [definition_21],
  });
  definition_37.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
    'unit': [definition_46],
    'operator': [GrammarToken(pattern: RegExp(definition_47))],
    'duration': [definition_48],
  });
  definition_14.addAllTokens({
    'timer': [definition_22],
    'duration-group': [definition_23],
    'timer-keyword': [definition_24],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'meta': [definition_2],
    'cookware-group': [definition_3],
    'ingredient-group': [definition_4],
    'timer-group': [definition_5],
  });

  return LanguageProto(
    'cooklang',
    definition_0,
  );
}

final languageCooklang = _create();
