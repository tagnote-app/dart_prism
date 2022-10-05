// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_44 = Grammar();
  final definition_84 = Grammar();
  final definition_100 = Grammar();
  final definition_46 = Grammar();
  final definition_85 = Grammar();
  final definition_101 = Grammar();
  final definition_48 = Grammar();
  final definition_86 = Grammar();
  final definition_102 = Grammar();
  final definition_50 = Grammar();
  final definition_87 = Grammar();
  final definition_103 = Grammar();
  final definition_52 = Grammar();
  final definition_88 = Grammar();
  final definition_104 = Grammar();
  final definition_54 = Grammar();
  final definition_89 = Grammar();
  final definition_105 = Grammar();
  final definition_56 = Grammar();
  final definition_91 = Grammar();
  final definition_58 = Grammar();
  final definition_36 = Grammar();
  const definition_40 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_41 = '(^|[^\\\\:])\\/\\/.*';
  const definition_19 = '^#!.*';
  const definition_42 =
      '((?:\\b(?:styled(?:\\([^)]*\\))?(?:\\s*\\.\\s*\\w+(?:\\([^)]*\\))*)*|css(?:\\s*\\.\\s*(?:global|resolve))?|createGlobalStyle|keyframes))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_82 = '^`|`\$';
  const definition_77 = '[\\s\\S]+';
  const definition_90 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}';
  const definition_106 = '^\\\$\\{|\\}\$';
  const definition_45 =
      '((?:\\bhtml|\\.\\s*(?:inner|outer)HTML\\s*\\+?=)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_47 =
      '((?:\\bsvg)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_49 =
      '((?:\\b(?:markdown|md))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_51 =
      '((?:\\b(?:gql|graphql(?:\\s*\\.\\s*experimental)?))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_53 =
      '((?:\\bsql)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_55 =
      '`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_28 =
      '((?:^|[,{])[ \\t]*)(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\2)[^\\\\\\r\\n])*\\2(?=\\s*:)';
  const definition_30 =
      '(^|[^.])<\\/?\\w+(?:\\s+[^\\s>\\/=]+=("|\')(?:\\\\[\\s\\S]|(?!\\2)[^\\\\])*\\2)*\\s*\\/?>';
  const definition_32 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_57 =
      '(\\b(?:class|extends|implements|instanceof|interface|new)\\s+)[\\w.\\\\]+';
  const definition_78 = '[.\\\\]';
  const definition_59 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$A-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\.(?:constructor|prototype))';
  const definition_35 =
      '((?:^|[^\$\\w\\xA0-\\uFFFF."\'\\])\\s]|\\b(?:return|yield))\\s*)\\/(?:(?:\\[(?:[^\\]\\\\\\r\\n]|\\\\.)*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}|(?:\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.)*\\])*\\])*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}v[dgimyus]{0,7})(?=(?:\\s|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*(?:\$|[\\r\\n,.;:})\\]]|\\/\\/))';
  const definition_79 = '^(\\/)[\\s\\S]+(?=\\/[a-z]*\$)';
  const definition_61 = '^\\/|\\/\$';
  const definition_62 = '^[a-z]+\$';
  const definition_37 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*[=:]\\s*(?:async\\s*)?(?:\\bfunction\\b|(?:\\((?:[^()]|\\([^()]*\\))*\\)|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)\\s*=>))';
  const definition_10 = '\\b[A-Z](?:[A-Z_]|\\dx?)*\\b';
  const definition_11 =
      '\\b(?:as|break|case|catch|class|const|default|delete|do|dynamic|each|else|extends|final|finally|for|function|get|if|implements|import|in|include|instanceof|interface|internal|is|namespace|native|new|null|override|package|private|protected|public|return|set|static|super|switch|this|throw|try|typeof|use|var|void|while|with)\\b';
  const definition_12 = '\\b(?:false|true)\\b';
  const definition_13 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*(?:\\.\\s*(?:apply|bind|call)\\s*)?\\()';
  const definition_39 =
      '(^|[^\\w\$])(?:NaN|Infinity|0[bB][01]+(?:_[01]+)*n?|0[oO][0-7]+(?:_[0-7]+)*n?|0[xX][\\dA-Fa-f]+(?:_[\\dA-Fa-f]+)*n?|\\d+(?:_\\d+)*n|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[Ee][+-]?\\d+(?:_\\d+)*)?)(?![\\w\$])';
  const definition_15 =
      '\\+\\+|--|(?:[+\\-*\\/%^]|&&?|\\|\\|?|<<?|>>?>?|[!=]=?)=?|[~?@]';
  const definition_16 = '[{}[\\];(),.:]';
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_44,
    global: true,
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_82),
    aliases: ['string'],
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: definition_84,
  );
  final definition_92 = GrammarToken(
    pattern: RegExp(definition_90),
    lookbehind: true,
    inside: definition_100,
  );
  final definition_108 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['punctuation'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_46,
    global: true,
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_82),
    aliases: ['string'],
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: definition_85,
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_90),
    lookbehind: true,
    inside: definition_101,
  );
  final definition_109 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['punctuation'],
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_47),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_48,
    global: true,
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_82),
    aliases: ['string'],
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: definition_86,
  );
  final definition_95 = GrammarToken(
    pattern: RegExp(definition_90),
    lookbehind: true,
    inside: definition_102,
  );
  final definition_110 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['punctuation'],
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_50,
    global: true,
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_82),
    aliases: ['string'],
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: definition_87,
  );
  final definition_96 = GrammarToken(
    pattern: RegExp(definition_90),
    lookbehind: true,
    inside: definition_103,
  );
  final definition_111 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['punctuation'],
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_52,
    global: true,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_82),
    aliases: ['string'],
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: definition_88,
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_90),
    lookbehind: true,
    inside: definition_104,
  );
  final definition_112 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['punctuation'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_53),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_54,
    global: true,
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_82),
    aliases: ['string'],
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: definition_89,
  );
  final definition_98 = GrammarToken(
    pattern: RegExp(definition_90),
    lookbehind: true,
    inside: definition_105,
  );
  final definition_113 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['punctuation'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_55),
    greedy: true,
    inside: definition_56,
    global: true,
  );
  final definition_75 = GrammarToken(
    pattern: RegExp(definition_82),
    aliases: ['string'],
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_90),
    lookbehind: true,
    inside: definition_91,
  );
  final definition_99 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['punctuation'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_28, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: 'markup',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_32),
    greedy: true,
    global: true,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_57),
    lookbehind: true,
    inside: definition_58,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_59),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    greedy: true,
    inside: definition_36,
    global: true,
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_79),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_37),
    aliases: ['function'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
  );
  definition_100.rest = definition_0;
  definition_101.rest = definition_0;
  definition_102.rest = definition_0;
  definition_103.rest = definition_0;
  definition_104.rest = definition_0;
  definition_105.rest = definition_0;
  definition_91.rest = definition_0;
  definition_84.tokenize = embeddedIn('css');
  definition_85.tokenize = embeddedIn('html');
  definition_86.tokenize = embeddedIn('svg');
  definition_87.tokenize = embeddedIn('markdown');
  definition_88.tokenize = embeddedIn('graphql');
  definition_89.tokenize = embeddedIn('sql');
  definition_100.addAllTokens({
    'interpolation-punctuation': [definition_108],
  });
  definition_84.addAllTokens({
    'interpolation': [definition_92],
  });
  definition_44.addAllTokens({
    'template-punctuation': [definition_63],
    'css': [definition_64],
  });
  definition_101.addAllTokens({
    'interpolation-punctuation': [definition_109],
  });
  definition_85.addAllTokens({
    'interpolation': [definition_94],
  });
  definition_46.addAllTokens({
    'template-punctuation': [definition_65],
    'html': [definition_66],
  });
  definition_102.addAllTokens({
    'interpolation-punctuation': [definition_110],
  });
  definition_86.addAllTokens({
    'interpolation': [definition_95],
  });
  definition_48.addAllTokens({
    'template-punctuation': [definition_67],
    'svg': [definition_68],
  });
  definition_103.addAllTokens({
    'interpolation-punctuation': [definition_111],
  });
  definition_87.addAllTokens({
    'interpolation': [definition_96],
  });
  definition_50.addAllTokens({
    'template-punctuation': [definition_69],
    'markdown': [definition_70],
  });
  definition_104.addAllTokens({
    'interpolation-punctuation': [definition_112],
  });
  definition_88.addAllTokens({
    'interpolation': [definition_97],
  });
  definition_52.addAllTokens({
    'template-punctuation': [definition_71],
    'graphql': [definition_72],
  });
  definition_105.addAllTokens({
    'interpolation-punctuation': [definition_113],
  });
  definition_89.addAllTokens({
    'interpolation': [definition_98],
  });
  definition_54.addAllTokens({
    'template-punctuation': [definition_73],
    'sql': [definition_74],
  });
  definition_91.addAllTokens({
    'interpolation-punctuation': [definition_99],
  });
  definition_56.addAllTokens({
    'template-punctuation': [definition_75],
    'interpolation': [definition_76],
    'string': [GrammarToken(pattern: RegExp(definition_77))],
  });
  definition_58.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_78))],
  });
  definition_36.addAllTokens({
    'regex-source': [definition_60],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_61))],
    'regex-flags': [GrammarToken(pattern: RegExp(definition_62))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_17,
      definition_18,
    ],
    'hashbang': [definition_2],
    'template-string': [
      definition_21,
      definition_22,
      definition_23,
      definition_24,
      definition_25,
      definition_26,
      definition_27,
    ],
    'string-property': [definition_4],
    'xml': [definition_5],
    'string': [definition_6],
    'class-name': [
      definition_33,
      definition_34,
    ],
    'regex': [definition_8],
    'function-variable': [definition_9],
    'constant': [GrammarToken(pattern: RegExp(definition_10))],
    'keyword': [GrammarToken(pattern: RegExp(definition_11))],
    'boolean': [GrammarToken(pattern: RegExp(definition_12))],
    'function': [GrammarToken(pattern: RegExp(definition_13))],
    'number': [definition_14],
    'operator': [GrammarToken(pattern: RegExp(definition_15))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });

  return LanguageProto(
    'actionscript',
    definition_0,
    requiredDependencies: ['javascript', 'clike'],
  );
}

final languageActionscript = _create();
