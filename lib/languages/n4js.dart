// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_54 = Grammar();
  final definition_98 = Grammar();
  final definition_114 = Grammar();
  final definition_56 = Grammar();
  final definition_99 = Grammar();
  final definition_115 = Grammar();
  final definition_58 = Grammar();
  final definition_100 = Grammar();
  final definition_116 = Grammar();
  final definition_60 = Grammar();
  final definition_101 = Grammar();
  final definition_117 = Grammar();
  final definition_62 = Grammar();
  final definition_102 = Grammar();
  final definition_118 = Grammar();
  final definition_64 = Grammar();
  final definition_103 = Grammar();
  final definition_119 = Grammar();
  final definition_66 = Grammar();
  final definition_105 = Grammar();
  final definition_68 = Grammar();
  final definition_39 = Grammar();
  const definition_20 = '\\/\\*\\*(?!\\/)[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_50 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_51 = '(^|[^\\\\:])\\/\\/.*';
  const definition_24 = '^#!.*';
  const definition_52 =
      '((?:\\b(?:styled(?:\\([^)]*\\))?(?:\\s*\\.\\s*\\w+(?:\\([^)]*\\))*)*|css(?:\\s*\\.\\s*(?:global|resolve))?|createGlobalStyle|keyframes))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_96 = '^`|`\$';
  const definition_91 = '[\\s\\S]+';
  const definition_104 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}';
  const definition_120 = '^\\\$\\{|\\}\$';
  const definition_55 =
      '((?:\\bhtml|\\.\\s*(?:inner|outer)HTML\\s*\\+?=)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_57 =
      '((?:\\bsvg)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_59 =
      '((?:\\b(?:markdown|md))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_61 =
      '((?:\\b(?:gql|graphql(?:\\s*\\.\\s*experimental)?))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_63 =
      '((?:\\bsql)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_65 =
      '`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_33 =
      '((?:^|[,{])[ \\t]*)(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\2)[^\\\\\\r\\n])*\\2(?=\\s*:)';
  const definition_35 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_67 =
      '(\\b(?:class|extends|implements|instanceof|interface|new)\\s+)[\\w.\\\\]+';
  const definition_92 = '[.\\\\]';
  const definition_69 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$A-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\.(?:constructor|prototype))';
  const definition_38 =
      '((?:^|[^\$\\w\\xA0-\\uFFFF."\'\\])\\s]|\\b(?:return|yield))\\s*)\\/(?:(?:\\[(?:[^\\]\\\\\\r\\n]|\\\\.)*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}|(?:\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.)*\\])*\\])*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}v[dgimyus]{0,7})(?=(?:\\s|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*(?:\$|[\\r\\n,.;:})\\]]|\\/\\/))';
  const definition_93 = '^(\\/)[\\s\\S]+(?=\\/[a-z]*\$)';
  const definition_71 = '^\\/|\\/\$';
  const definition_72 = '^[a-z]+\$';
  const definition_40 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*[=:]\\s*(?:async\\s*)?(?:\\bfunction\\b|(?:\\((?:[^()]|\\([^()]*\\))*\\)|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)\\s*=>))';
  const definition_73 =
      '(function(?:\\s+(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)?\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\))';
  const definition_74 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$a-z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*=>)';
  const definition_75 =
      '(\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*=>)';
  const definition_76 =
      '((?:\\b|\\s|^)(?!(?:as|async|await|break|case|catch|class|const|continue|debugger|default|delete|do|else|enum|export|extends|finally|for|from|function|get|if|implements|import|in|instanceof|interface|let|new|null|of|package|private|protected|public|return|set|static|super|switch|this|throw|try|typeof|undefined|var|void|while|with|yield)(?![\$\\w\\xA0-\\uFFFF]))(?:(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*\\s*)\\(\\s*|\\]\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*\\{)';
  const definition_46 = '@+\\w+';
  const definition_12 = '\\b[A-Z](?:[A-Z_]|\\dx?)*\\b';
  const definition_13 =
      '\\b(?:Array|any|boolean|break|case|catch|class|const|constructor|continue|debugger|declare|default|delete|do|else|enum|export|extends|false|finally|for|from|function|get|if|implements|import|in|instanceof|interface|let|module|new|null|number|package|private|protected|public|return|set|static|string|super|switch|this|throw|true|try|typeof|var|void|while|with|yield)\\b';
  const definition_14 = '\\b(?:false|true)\\b';
  const definition_15 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*(?:\\.\\s*(?:apply|bind|call)\\s*)?\\()';
  const definition_48 =
      '(^|[^\\w\$])(?:NaN|Infinity|0[bB][01]+(?:_[01]+)*n?|0[oO][0-7]+(?:_[0-7]+)*n?|0[xX][\\dA-Fa-f]+(?:_[\\dA-Fa-f]+)*n?|\\d+(?:_\\d+)*n|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[Ee][+-]?\\d+(?:_\\d+)*)?)(?![\\w\$])';
  const definition_49 =
      '((?:^|[,{])[ \\t]*)(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*:)';
  const definition_18 =
      '--|\\+\\+|\\*\\*=?|=>|&&=?|\\|\\|=?|[!=]==|<<=?|>>>?=?|[-+*/%&|^!=<>]=?|\\.{3}|\\?\\?=?|\\?\\.?|[~:]';
  const definition_19 = '[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    inside: 'jsdoc',
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_50),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_54,
    global: true,
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_96),
    aliases: ['string'],
  );
  final definition_78 = GrammarToken(
    pattern: RegExp(definition_91),
    inside: definition_98,
  );
  final definition_106 = GrammarToken(
    pattern: RegExp(definition_104),
    lookbehind: true,
    inside: definition_114,
  );
  final definition_122 = GrammarToken(
    pattern: RegExp(definition_120),
    aliases: ['punctuation'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_55),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_56,
    global: true,
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_96),
    aliases: ['string'],
  );
  final definition_80 = GrammarToken(
    pattern: RegExp(definition_91),
    inside: definition_99,
  );
  final definition_108 = GrammarToken(
    pattern: RegExp(definition_104),
    lookbehind: true,
    inside: definition_115,
  );
  final definition_123 = GrammarToken(
    pattern: RegExp(definition_120),
    aliases: ['punctuation'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_57),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_58,
    global: true,
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_96),
    aliases: ['string'],
  );
  final definition_82 = GrammarToken(
    pattern: RegExp(definition_91),
    inside: definition_100,
  );
  final definition_109 = GrammarToken(
    pattern: RegExp(definition_104),
    lookbehind: true,
    inside: definition_116,
  );
  final definition_124 = GrammarToken(
    pattern: RegExp(definition_120),
    aliases: ['punctuation'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_59),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_60,
    global: true,
  );
  final definition_83 = GrammarToken(
    pattern: RegExp(definition_96),
    aliases: ['string'],
  );
  final definition_84 = GrammarToken(
    pattern: RegExp(definition_91),
    inside: definition_101,
  );
  final definition_110 = GrammarToken(
    pattern: RegExp(definition_104),
    lookbehind: true,
    inside: definition_117,
  );
  final definition_125 = GrammarToken(
    pattern: RegExp(definition_120),
    aliases: ['punctuation'],
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_61),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_62,
    global: true,
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_96),
    aliases: ['string'],
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_91),
    inside: definition_102,
  );
  final definition_111 = GrammarToken(
    pattern: RegExp(definition_104),
    lookbehind: true,
    inside: definition_118,
  );
  final definition_126 = GrammarToken(
    pattern: RegExp(definition_120),
    aliases: ['punctuation'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_64,
    global: true,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_96),
    aliases: ['string'],
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_91),
    inside: definition_103,
  );
  final definition_112 = GrammarToken(
    pattern: RegExp(definition_104),
    lookbehind: true,
    inside: definition_119,
  );
  final definition_127 = GrammarToken(
    pattern: RegExp(definition_120),
    aliases: ['punctuation'],
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_65),
    greedy: true,
    inside: definition_66,
    global: true,
  );
  final definition_89 = GrammarToken(
    pattern: RegExp(definition_96),
    aliases: ['string'],
  );
  final definition_90 = GrammarToken(
    pattern: RegExp(definition_104),
    lookbehind: true,
    inside: definition_105,
  );
  final definition_113 = GrammarToken(
    pattern: RegExp(definition_120),
    aliases: ['punctuation'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_33, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_35),
    greedy: true,
    global: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_67),
    lookbehind: true,
    inside: definition_68,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    greedy: true,
    inside: definition_39,
    global: true,
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_93),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_40),
    aliases: ['function'],
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_73),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_74, caseSensitive: false),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_75),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_76),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_46),
    aliases: ['operator'],
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_48),
    lookbehind: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_49, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
  );
  definition_114.rest = definition_0;
  definition_115.rest = definition_0;
  definition_116.rest = definition_0;
  definition_117.rest = definition_0;
  definition_118.rest = definition_0;
  definition_119.rest = definition_0;
  definition_105.rest = definition_0;
  definition_98.tokenize = embeddedIn('css');
  definition_99.tokenize = embeddedIn('html');
  definition_100.tokenize = embeddedIn('svg');
  definition_101.tokenize = embeddedIn('markdown');
  definition_102.tokenize = embeddedIn('graphql');
  definition_103.tokenize = embeddedIn('sql');
  definition_114.addAllTokens({
    'interpolation-punctuation': [definition_122],
  });
  definition_98.addAllTokens({
    'interpolation': [definition_106],
  });
  definition_54.addAllTokens({
    'template-punctuation': [definition_77],
    'css': [definition_78],
  });
  definition_115.addAllTokens({
    'interpolation-punctuation': [definition_123],
  });
  definition_99.addAllTokens({
    'interpolation': [definition_108],
  });
  definition_56.addAllTokens({
    'template-punctuation': [definition_79],
    'html': [definition_80],
  });
  definition_116.addAllTokens({
    'interpolation-punctuation': [definition_124],
  });
  definition_100.addAllTokens({
    'interpolation': [definition_109],
  });
  definition_58.addAllTokens({
    'template-punctuation': [definition_81],
    'svg': [definition_82],
  });
  definition_117.addAllTokens({
    'interpolation-punctuation': [definition_125],
  });
  definition_101.addAllTokens({
    'interpolation': [definition_110],
  });
  definition_60.addAllTokens({
    'template-punctuation': [definition_83],
    'markdown': [definition_84],
  });
  definition_118.addAllTokens({
    'interpolation-punctuation': [definition_126],
  });
  definition_102.addAllTokens({
    'interpolation': [definition_111],
  });
  definition_62.addAllTokens({
    'template-punctuation': [definition_85],
    'graphql': [definition_86],
  });
  definition_119.addAllTokens({
    'interpolation-punctuation': [definition_127],
  });
  definition_103.addAllTokens({
    'interpolation': [definition_112],
  });
  definition_64.addAllTokens({
    'template-punctuation': [definition_87],
    'sql': [definition_88],
  });
  definition_105.addAllTokens({
    'interpolation-punctuation': [definition_113],
  });
  definition_66.addAllTokens({
    'template-punctuation': [definition_89],
    'interpolation': [definition_90],
    'string': [GrammarToken(pattern: RegExp(definition_91))],
  });
  definition_68.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_92))],
  });
  definition_39.addAllTokens({
    'regex-source': [definition_70],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_71))],
    'regex-flags': [GrammarToken(pattern: RegExp(definition_72))],
  });
  definition_0.addAllTokens({
    'doc-comment': [definition_1],
    'comment': [
      definition_22,
      definition_23,
    ],
    'hashbang': [definition_3],
    'template-string': [
      definition_26,
      definition_27,
      definition_28,
      definition_29,
      definition_30,
      definition_31,
      definition_32,
    ],
    'string-property': [definition_5],
    'string': [definition_6],
    'class-name': [
      definition_36,
      definition_37,
    ],
    'regex': [definition_8],
    'function-variable': [definition_9],
    'parameter': [
      definition_42,
      definition_43,
      definition_44,
      definition_45,
    ],
    'annotation': [definition_11],
    'constant': [GrammarToken(pattern: RegExp(definition_12))],
    'keyword': [GrammarToken(pattern: RegExp(definition_13))],
    'boolean': [GrammarToken(pattern: RegExp(definition_14))],
    'function': [GrammarToken(pattern: RegExp(definition_15))],
    'number': [definition_16],
    'literal-property': [definition_17],
    'operator': [GrammarToken(pattern: RegExp(definition_18))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });

  return LanguageProto(
    'n4js',
    definition_0,
    aliases: ['n4jsd'],
    requiredDependencies: ['javascript', 'clike'],
  );
}

final languageN4Js = _create();
