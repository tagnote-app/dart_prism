// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_47 = Grammar();
  final definition_49 = Grammar();
  final definition_20 = Grammar();
  final definition_75 = Grammar();
  final definition_77 = Grammar();
  final definition_54 = Grammar();
  final definition_56 = Grammar();
  final definition_25 = Grammar();
  final definition_59 = Grammar();
  final definition_61 = Grammar();
  final definition_36 = Grammar();
  final definition_38 = Grammar();
  final definition_41 = Grammar();
  final definition_66 = Grammar();
  final definition_99 = Grammar();
  final definition_68 = Grammar();
  final definition_70 = Grammar();
  const definition_46 =
      '(^[\\t ]*)(?:\\+[=-]+)+\\+(?:\\r?\\n|\\r)(?:\\1[+|].+[+|](?:\\r?\\n|\\r))+\\1(?:\\+[=-]+)+\\+';
  const definition_71 = '\\||(?:\\+[=-]+)+\\+';
  const definition_48 =
      '(^[\\t ]*)=+ [ =]*=(?:(?:\\r?\\n|\\r)\\1.+)+(?:\\r?\\n|\\r)\\1=+ [ =]*=(?=(?:\\r?\\n|\\r){2}|\\s*\$)';
  const definition_72 = '[=-]+';
  const definition_19 =
      '(^[\\t ]*\\.\\. )\\|(?:[^|\\s](?:[^|]*[^|\\s])?)\\| [^:]+::';
  const definition_73 = '^\\|(?:[^|\\s]|[^|\\s][^|]*[^|\\s])\\|';
  const definition_94 = '^\\||\\|\$';
  const definition_76 = '( )(?! )[^:]+::';
  const definition_57 = '::\$';
  const definition_52 = '(^[\\t ]*\\.\\. )\\[[^\\]]+\\]';
  const definition_78 = '^\\[|\\]\$';
  const definition_55 = '(^[\\t ]*\\.\\. )_(?:`[^`]+`|(?:[^:\\\\]|\\\\.)+):';
  const definition_79 = '^_|:\$';
  const definition_23 = '(^[\\t ]*\\.\\. )[^:]+::';
  const definition_26 =
      '(^[\\t ]*\\.\\.)(?:(?: .+)?(?:(?:\\r?\\n|\\r).+)+| .+)(?=(?:\\r?\\n|\\r){2}|\$)';
  const definition_58 =
      '^(([!"#\$%&\'()*+,\\-.\\/:;<=>?@\\[\\\\\\]^_`{|}~])\\2+)(?:\\r?\\n|\\r).+(?:\\r?\\n|\\r)\\1\$';
  const definition_80 =
      '^[!"#\$%&\'()*+,\\-.\\/:;<=>?@\\[\\\\\\]^_`{|}~]+|[!"#\$%&\'()*+,\\-.\\/:;<=>?@\\[\\\\\\]^_`{|}~]+\$';
  const definition_81 = '.+';
  const definition_60 =
      '(^|(?:\\r?\\n|\\r){2}).+(?:\\r?\\n|\\r)([!"#\$%&\'()*+,\\-.\\/:;<=>?@\\[\\\\\\]^_`{|}~])\\2+(?=\\r?\\n|\\r|\$)';
  const definition_82 = '[!"#\$%&\'()*+,\\-.\\/:;<=>?@\\[\\\\\\]^_`{|}~]+\$';
  const definition_29 =
      '((?:\\r?\\n|\\r){2})([!"#\$%&\'()*+,\\-.\\/:;<=>?@\\[\\\\\\]^_`{|}~])\\2{3,}(?=(?:\\r?\\n|\\r){2})';
  const definition_31 = '(^[\\t ]*):[^:\\r\\n]+:(?= )';
  const definition_33 =
      '(^[\\t ]*)(?:[+-][a-z\\d]|(?:--|\\/)[a-z\\d-]+)(?:[ =](?:[a-z][\\w-]*|<[^<>]+>))?(?:, (?:[+-][a-z\\d]|(?:--|\\/)[a-z\\d-]+)(?:[ =](?:[a-z][\\w-]*|<[^<>]+>))?)*(?=(?:\\r?\\n|\\r)? {2,}\\S)';
  const definition_35 =
      '::(?:\\r?\\n|\\r){2}([ \\t]+)(?![ \\t]).+(?:(?:\\r?\\n|\\r)\\1.+)*';
  const definition_83 = '^::';
  const definition_37 =
      '::(?:\\r?\\n|\\r){2}([!"#\$%&\'()*+,\\-.\\/:;<=>?@\\[\\\\\\]^_`{|}~]).*(?:(?:\\r?\\n|\\r)\\1.*)*';
  const definition_84 =
      '^(?:::|([!"#\$%&\'()*+,\\-.\\/:;<=>?@\\[\\\\\\]^_`{|}~])\\1*)';
  const definition_39 =
      '(^[\\t ]*)(?:[*+\\-•‣⁃]|\\(?(?:\\d+|[a-z]|[ivxdclm]+)\\)|(?:\\d+|[a-z]|[ivxdclm]+)\\.)(?= )';
  const definition_40 = '(^[\\t ]*)>>> .+(?:(?:\\r?\\n|\\r).+)*';
  const definition_64 = '^>>>';
  const definition_65 =
      '(^|[\\s\\-:\\/\'"<(\\[{])(?::[^:]+:`.*?`|`.*?`:[^:]+:|(\\*\\*?|``?|\\|)(?!\\s)(?:(?!\\2).)*\\S\\2(?=[\\s\\-.,:;!?\\\\\\/\'")\\]}]|\$))';
  const definition_95 = '(^\\*\\*).+(?=\\*\\*\$)';
  const definition_96 = '(^\\*).+(?=\\*\$)';
  const definition_97 = '(^``).+(?=``\$)';
  const definition_98 = '^:[^:]+:|:[^:]+:\$';
  const definition_102 = '^:|:\$';
  const definition_100 = '(^`).+(?=`\$)';
  const definition_101 = '(^\\|).+(?=\\|\$)';
  const definition_91 = '\\*\\*?|``?|\\|';
  const definition_67 = '\\[[^\\[\\]]+\\]_(?=[\\s\\-.,:;!?\\\\\\/\'")\\]}]|\$)';
  const definition_92 = '^\\[|\\]_\$';
  const definition_69 =
      '(?:\\b[a-z\\d]+(?:[_.:+][a-z\\d]+)*_?_|`[^`]+`_?_|_`[^`]+`)(?=[\\s\\-.,:;!?\\\\\\/\'")\\]}]|\$)';
  const definition_93 = '^_?`|`\$|`?_?_\$';
  const definition_45 =
      '(^[\\t ]*)(?:\\|(?= |\$)|(?:---?|—|\\.\\.|__)(?= )|\\.\\.\$)';
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_46, multiLine: true),
    lookbehind: true,
    inside: definition_47,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_48, multiLine: true),
    lookbehind: true,
    inside: definition_49,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_19, multiLine: true),
    lookbehind: true,
    inside: definition_20,
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_73),
    aliases: ['attr-value'],
    inside: definition_75,
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_76),
    lookbehind: true,
    aliases: ['function'],
    inside: definition_77,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_52, multiLine: true),
    lookbehind: true,
    aliases: ['string'],
    inside: definition_54,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_55, multiLine: true),
    lookbehind: true,
    aliases: ['string'],
    inside: definition_56,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_23, multiLine: true),
    lookbehind: true,
    aliases: ['function'],
    inside: definition_25,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_26, multiLine: true),
    lookbehind: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_58, multiLine: true),
    inside: definition_59,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_60),
    lookbehind: true,
    inside: definition_61,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_31, multiLine: true),
    lookbehind: true,
    aliases: ['attr-name'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_33, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['symbol'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_35),
    inside: definition_36,
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_83),
    aliases: ['punctuation'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_37),
    inside: definition_38,
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_84, multiLine: true),
    aliases: ['punctuation'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_39, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_40, multiLine: true),
    lookbehind: true,
    inside: definition_41,
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_65, multiLine: true),
    lookbehind: true,
    inside: definition_66,
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_95),
    lookbehind: true,
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_97),
    lookbehind: true,
    aliases: ['symbol'],
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_98),
    aliases: ['function'],
    inside: definition_99,
  );
  final definition_89 = GrammarToken(
    pattern: RegExp(definition_100),
    lookbehind: true,
    aliases: ['attr-value'],
  );
  final definition_90 = GrammarToken(
    pattern: RegExp(definition_101),
    lookbehind: true,
    aliases: ['attr-value'],
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_67),
    aliases: ['string'],
    inside: definition_68,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_69, caseSensitive: false),
    aliases: ['string'],
    inside: definition_70,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_45, multiLine: true),
    lookbehind: true,
  );
  definition_47.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_71))],
  });
  definition_49.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_72))],
  });
  definition_75.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_94))],
  });
  definition_77.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_20.addAllTokens({
    'substitution': [definition_50],
    'directive': [definition_51],
  });
  definition_54.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_78))],
  });
  definition_56.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_79))],
  });
  definition_25.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_59.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_80))],
    'important': [GrammarToken(pattern: RegExp(definition_81))],
  });
  definition_61.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_82))],
    'important': [GrammarToken(pattern: RegExp(definition_81))],
  });
  definition_36.addAllTokens({
    'literal-block-punctuation': [definition_62],
  });
  definition_38.addAllTokens({
    'literal-block-punctuation': [definition_63],
  });
  definition_41.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_64))],
  });
  definition_99.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_102))],
  });
  definition_66.addAllTokens({
    'bold': [definition_85],
    'italic': [definition_86],
    'inline-literal': [definition_87],
    'role': [definition_88],
    'interpreted-text': [definition_89],
    'substitution': [definition_90],
    'punctuation': [GrammarToken(pattern: RegExp(definition_91))],
  });
  definition_68.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_92))],
  });
  definition_70.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_93))],
  });
  definition_0.addAllTokens({
    'table': [
      definition_17,
      definition_18,
    ],
    'substitution-def': [definition_2],
    'link-target': [
      definition_21,
      definition_22,
    ],
    'directive': [definition_4],
    'comment': [definition_5],
    'title': [
      definition_27,
      definition_28,
    ],
    'hr': [definition_7],
    'field': [definition_8],
    'command-line-option': [definition_9],
    'literal-block': [definition_10],
    'quoted-literal-block': [definition_11],
    'list-bullet': [definition_12],
    'doctest-block': [definition_13],
    'inline': [
      definition_42,
    ],
    'link': [
      definition_43,
      definition_44,
    ],
    'punctuation': [definition_16],
  });

  return LanguageProto(
    'rest',
    definition_0,
  );
}

final languageRest = _create();
