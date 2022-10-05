// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_10 = Grammar();
  final definition_36 = Grammar();
  final definition_50 = Grammar();
  final definition_12 = Grammar();
  final definition_37 = Grammar();
  final definition_51 = Grammar();
  final definition_14 = Grammar();
  final definition_38 = Grammar();
  final definition_52 = Grammar();
  final definition_16 = Grammar();
  final definition_39 = Grammar();
  final definition_53 = Grammar();
  final definition_18 = Grammar();
  final definition_40 = Grammar();
  final definition_54 = Grammar();
  final definition_20 = Grammar();
  final definition_41 = Grammar();
  final definition_55 = Grammar();
  const definition_8 =
      '((?:\\b(?:styled(?:\\([^)]*\\))?(?:\\s*\\.\\s*\\w+(?:\\([^)]*\\))*)*|css(?:\\s*\\.\\s*(?:global|resolve))?|createGlobalStyle|keyframes))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_33 = '^`|`\$';
  const definition_35 = '[\\s\\S]+';
  const definition_49 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}';
  const definition_63 = '^\\\$\\{|\\}\$';
  const definition_11 =
      '((?:\\bhtml|\\.\\s*(?:inner|outer)HTML\\s*\\+?=)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_13 =
      '((?:\\bsvg)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_15 =
      '((?:\\b(?:markdown|md))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_17 =
      '((?:\\b(?:gql|graphql(?:\\s*\\.\\s*experimental)?))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_19 =
      '((?:\\bsql)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_10,
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['string'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_35),
    inside: definition_36,
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    inside: definition_50,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_63),
    aliases: ['punctuation'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_12,
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['string'],
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_35),
    inside: definition_37,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    inside: definition_51,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_63),
    aliases: ['punctuation'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_14,
    global: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['string'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_35),
    inside: definition_38,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    inside: definition_52,
  );
  final definition_59 = GrammarToken(
    pattern: RegExp(definition_63),
    aliases: ['punctuation'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_16,
    global: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['string'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_35),
    inside: definition_39,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    inside: definition_53,
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_63),
    aliases: ['punctuation'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_18,
    global: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['string'],
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_35),
    inside: definition_40,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    inside: definition_54,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_63),
    aliases: ['punctuation'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_20,
    global: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['string'],
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_35),
    inside: definition_41,
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    inside: definition_55,
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_63),
    aliases: ['punctuation'],
  );
  definition_50.rest = 'javascript';
  definition_51.rest = 'javascript';
  definition_52.rest = 'javascript';
  definition_53.rest = 'javascript';
  definition_54.rest = 'javascript';
  definition_55.rest = 'javascript';
  definition_36.tokenize = embeddedIn('css');
  definition_37.tokenize = embeddedIn('html');
  definition_38.tokenize = embeddedIn('svg');
  definition_39.tokenize = embeddedIn('markdown');
  definition_40.tokenize = embeddedIn('graphql');
  definition_41.tokenize = embeddedIn('sql');
  definition_50.addAllTokens({
    'interpolation-punctuation': [definition_56],
  });
  definition_36.addAllTokens({
    'interpolation': [definition_42],
  });
  definition_10.addAllTokens({
    'template-punctuation': [definition_21],
    'css': [definition_22],
  });
  definition_51.addAllTokens({
    'interpolation-punctuation': [definition_58],
  });
  definition_37.addAllTokens({
    'interpolation': [definition_44],
  });
  definition_12.addAllTokens({
    'template-punctuation': [definition_23],
    'html': [definition_24],
  });
  definition_52.addAllTokens({
    'interpolation-punctuation': [definition_59],
  });
  definition_38.addAllTokens({
    'interpolation': [definition_45],
  });
  definition_14.addAllTokens({
    'template-punctuation': [definition_25],
    'svg': [definition_26],
  });
  definition_53.addAllTokens({
    'interpolation-punctuation': [definition_60],
  });
  definition_39.addAllTokens({
    'interpolation': [definition_46],
  });
  definition_16.addAllTokens({
    'template-punctuation': [definition_27],
    'markdown': [definition_28],
  });
  definition_54.addAllTokens({
    'interpolation-punctuation': [definition_61],
  });
  definition_40.addAllTokens({
    'interpolation': [definition_47],
  });
  definition_18.addAllTokens({
    'template-punctuation': [definition_29],
    'graphql': [definition_30],
  });
  definition_55.addAllTokens({
    'interpolation-punctuation': [definition_62],
  });
  definition_41.addAllTokens({
    'interpolation': [definition_48],
  });
  definition_20.addAllTokens({
    'template-punctuation': [definition_31],
    'sql': [definition_32],
  });
  definition_0.addAllTokens({
    'template-string': [
      definition_2,
      definition_3,
      definition_4,
      definition_5,
      definition_6,
      definition_7,
    ],
  });

  return LanguageProto(
    'js-templates',
    definition_0,
  );
}

final languageJsTemplates = _create();
