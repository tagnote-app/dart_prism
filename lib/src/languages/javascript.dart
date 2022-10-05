// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_55 = Grammar();
  final definition_106 = Grammar();
  final definition_122 = Grammar();
  final definition_57 = Grammar();
  final definition_107 = Grammar();
  final definition_123 = Grammar();
  final definition_59 = Grammar();
  final definition_108 = Grammar();
  final definition_124 = Grammar();
  final definition_61 = Grammar();
  final definition_109 = Grammar();
  final definition_125 = Grammar();
  final definition_63 = Grammar();
  final definition_110 = Grammar();
  final definition_126 = Grammar();
  final definition_65 = Grammar();
  final definition_111 = Grammar();
  final definition_127 = Grammar();
  final definition_67 = Grammar();
  final definition_113 = Grammar();
  final definition_69 = Grammar();
  final definition_38 = Grammar();
  const definition_19 = '\\/\\*\\*(?!\\/)[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_51 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_52 = '(^|[^\\\\:])\\/\\/.*';
  const definition_23 = '^#!.*';
  const definition_53 =
      '((?:\\b(?:styled(?:\\([^)]*\\))?(?:\\s*\\.\\s*\\w+(?:\\([^)]*\\))*)*|css(?:\\s*\\.\\s*(?:global|resolve))?|createGlobalStyle|keyframes))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_104 = '^`|`\$';
  const definition_99 = '[\\s\\S]+';
  const definition_112 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}';
  const definition_128 = '^\\\$\\{|\\}\$';
  const definition_56 =
      '((?:\\bhtml|\\.\\s*(?:inner|outer)HTML\\s*\\+?=)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_58 =
      '((?:\\bsvg)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_60 =
      '((?:\\b(?:markdown|md))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_62 =
      '((?:\\b(?:gql|graphql(?:\\s*\\.\\s*experimental)?))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_64 =
      '((?:\\bsql)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_66 =
      '`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_32 =
      '((?:^|[,{])[ \\t]*)(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\2)[^\\\\\\r\\n])*\\2(?=\\s*:)';
  const definition_34 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_68 =
      '(\\b(?:class|extends|implements|instanceof|interface|new)\\s+)[\\w.\\\\]+';
  const definition_100 = '[.\\\\]';
  const definition_70 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$A-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\.(?:constructor|prototype))';
  const definition_37 =
      '((?:^|[^\$\\w\\xA0-\\uFFFF."\'\\])\\s]|\\b(?:return|yield))\\s*)\\/(?:(?:\\[(?:[^\\]\\\\\\r\\n]|\\\\.)*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}|(?:\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.)*\\])*\\])*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}v[dgimyus]{0,7})(?=(?:\\s|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*(?:\$|[\\r\\n,.;:})\\]]|\\/\\/))';
  const definition_101 = '^(\\/)[\\s\\S]+(?=\\/[a-z]*\$)';
  const definition_72 = '^\\/|\\/\$';
  const definition_73 = '^[a-z]+\$';
  const definition_39 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*[=:]\\s*(?:async\\s*)?(?:\\bfunction\\b|(?:\\((?:[^()]|\\([^()]*\\))*\\)|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)\\s*=>))';
  const definition_74 =
      '(function(?:\\s+(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)?\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\))';
  const definition_76 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$a-z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*=>)';
  const definition_77 =
      '(\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*=>)';
  const definition_78 =
      '((?:\\b|\\s|^)(?!(?:as|async|await|break|case|catch|class|const|continue|debugger|default|delete|do|else|enum|export|extends|finally|for|from|function|get|if|implements|import|in|instanceof|interface|let|new|null|of|package|private|protected|public|return|set|static|super|switch|this|throw|try|typeof|undefined|var|void|while|with|yield)(?![\$\\w\\xA0-\\uFFFF]))(?:(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*\\s*)\\(\\s*|\\]\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*\\{)';
  const definition_11 = '\\b[A-Z](?:[A-Z_]|\\dx?)*\\b';
  const definition_79 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:as|assert(?=\\s*\\{)|export|from(?=\\s*(?:[\'"]|\$))|import)\\b';
  const definition_81 = '((?:^|\\})\\s*)catch\\b';
  const definition_83 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:await|break|case|continue|default|do|else|finally(?=\\s*(?:\\{|\$))|for|if|return|switch|throw|try|while|yield)\\b';
  const definition_84 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:async(?=\\s*(?:function\\b|\\(|[\$\\w\\xA0-\\uFFFF]|\$))|class|const|debugger|delete|enum|extends|function|(?:get|set)(?=\\s*(?:[#\\[\$\\w\\xA0-\\uFFFF]|\$))|implements|in|instanceof|interface|let|new|null|of|package|private|protected|public|static|super|this|typeof|undefined|var|void|with)\\b';
  const definition_13 = '\\b(?:false|true)\\b';
  const definition_14 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*(?:\\.\\s*(?:apply|bind|call)\\s*)?\\()';
  const definition_49 =
      '(^|[^\\w\$])(?:NaN|Infinity|0[bB][01]+(?:_[01]+)*n?|0[oO][0-7]+(?:_[0-7]+)*n?|0[xX][\\dA-Fa-f]+(?:_[\\dA-Fa-f]+)*n?|\\d+(?:_\\d+)*n|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[Ee][+-]?\\d+(?:_\\d+)*)?)(?![\\w\$])';
  const definition_50 =
      '((?:^|[,{])[ \\t]*)(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*:)';
  const definition_17 =
      '--|\\+\\+|\\*\\*=?|=>|&&=?|\\|\\|=?|[!=]==|<<=?|>>>?=?|[-+*/%&|^!=<>]=?|\\.{3}|\\?\\?=?|\\?\\.?|[~:]';
  const definition_18 = '[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    inside: 'jsdoc',
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_53),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_55,
    global: true,
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_104),
    aliases: ['string'],
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_99),
    inside: definition_106,
  );
  final definition_114 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: definition_122,
  );
  final definition_130 = GrammarToken(
    pattern: RegExp(definition_128),
    aliases: ['punctuation'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_56),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_57,
    global: true,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_104),
    aliases: ['string'],
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_99),
    inside: definition_107,
  );
  final definition_116 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: definition_123,
  );
  final definition_131 = GrammarToken(
    pattern: RegExp(definition_128),
    aliases: ['punctuation'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_58),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_59,
    global: true,
  );
  final definition_89 = GrammarToken(
    pattern: RegExp(definition_104),
    aliases: ['string'],
  );
  final definition_90 = GrammarToken(
    pattern: RegExp(definition_99),
    inside: definition_108,
  );
  final definition_117 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: definition_124,
  );
  final definition_132 = GrammarToken(
    pattern: RegExp(definition_128),
    aliases: ['punctuation'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_60),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_61,
    global: true,
  );
  final definition_91 = GrammarToken(
    pattern: RegExp(definition_104),
    aliases: ['string'],
  );
  final definition_92 = GrammarToken(
    pattern: RegExp(definition_99),
    inside: definition_109,
  );
  final definition_118 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: definition_125,
  );
  final definition_133 = GrammarToken(
    pattern: RegExp(definition_128),
    aliases: ['punctuation'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_62),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_63,
    global: true,
  );
  final definition_93 = GrammarToken(
    pattern: RegExp(definition_104),
    aliases: ['string'],
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_99),
    inside: definition_110,
  );
  final definition_119 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: definition_126,
  );
  final definition_134 = GrammarToken(
    pattern: RegExp(definition_128),
    aliases: ['punctuation'],
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_64),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_65,
    global: true,
  );
  final definition_95 = GrammarToken(
    pattern: RegExp(definition_104),
    aliases: ['string'],
  );
  final definition_96 = GrammarToken(
    pattern: RegExp(definition_99),
    inside: definition_111,
  );
  final definition_120 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: definition_127,
  );
  final definition_135 = GrammarToken(
    pattern: RegExp(definition_128),
    aliases: ['punctuation'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_66),
    greedy: true,
    inside: definition_67,
    global: true,
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_104),
    aliases: ['string'],
  );
  final definition_98 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: definition_113,
  );
  final definition_121 = GrammarToken(
    pattern: RegExp(definition_128),
    aliases: ['punctuation'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_32, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_34),
    greedy: true,
    global: true,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_68),
    lookbehind: true,
    inside: definition_69,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_70),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    greedy: true,
    inside: definition_38,
    global: true,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_101),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_39),
    aliases: ['function'],
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_74),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_76, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_77),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_78),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_79),
    lookbehind: true,
    aliases: ['module'],
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_81),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_83),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_84),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_50, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
  );
  definition_122.rest = 'javascript';
  definition_123.rest = 'javascript';
  definition_124.rest = 'javascript';
  definition_125.rest = 'javascript';
  definition_126.rest = 'javascript';
  definition_127.rest = 'javascript';
  definition_113.rest = 'javascript';
  definition_106.tokenize = embeddedIn('css');
  definition_107.tokenize = embeddedIn('html');
  definition_108.tokenize = embeddedIn('svg');
  definition_109.tokenize = embeddedIn('markdown');
  definition_110.tokenize = embeddedIn('graphql');
  definition_111.tokenize = embeddedIn('sql');
  definition_122.addAllTokens({
    'interpolation-punctuation': [definition_130],
  });
  definition_106.addAllTokens({
    'interpolation': [definition_114],
  });
  definition_55.addAllTokens({
    'template-punctuation': [definition_85],
    'css': [definition_86],
  });
  definition_123.addAllTokens({
    'interpolation-punctuation': [definition_131],
  });
  definition_107.addAllTokens({
    'interpolation': [definition_116],
  });
  definition_57.addAllTokens({
    'template-punctuation': [definition_87],
    'html': [definition_88],
  });
  definition_124.addAllTokens({
    'interpolation-punctuation': [definition_132],
  });
  definition_108.addAllTokens({
    'interpolation': [definition_117],
  });
  definition_59.addAllTokens({
    'template-punctuation': [definition_89],
    'svg': [definition_90],
  });
  definition_125.addAllTokens({
    'interpolation-punctuation': [definition_133],
  });
  definition_109.addAllTokens({
    'interpolation': [definition_118],
  });
  definition_61.addAllTokens({
    'template-punctuation': [definition_91],
    'markdown': [definition_92],
  });
  definition_126.addAllTokens({
    'interpolation-punctuation': [definition_134],
  });
  definition_110.addAllTokens({
    'interpolation': [definition_119],
  });
  definition_63.addAllTokens({
    'template-punctuation': [definition_93],
    'graphql': [definition_94],
  });
  definition_127.addAllTokens({
    'interpolation-punctuation': [definition_135],
  });
  definition_111.addAllTokens({
    'interpolation': [definition_120],
  });
  definition_65.addAllTokens({
    'template-punctuation': [definition_95],
    'sql': [definition_96],
  });
  definition_113.addAllTokens({
    'interpolation-punctuation': [definition_121],
  });
  definition_67.addAllTokens({
    'template-punctuation': [definition_97],
    'interpolation': [definition_98],
    'string': [GrammarToken(pattern: RegExp(definition_99))],
  });
  definition_69.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_100))],
  });
  definition_38.addAllTokens({
    'regex-source': [definition_71],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_72))],
    'regex-flags': [GrammarToken(pattern: RegExp(definition_73))],
  });
  definition_0.addAllTokens({
    'doc-comment': [definition_1],
    'comment': [
      definition_21,
      definition_22,
    ],
    'hashbang': [definition_3],
    'template-string': [
      definition_25,
      definition_26,
      definition_27,
      definition_28,
      definition_29,
      definition_30,
      definition_31,
    ],
    'string-property': [definition_5],
    'string': [definition_6],
    'class-name': [
      definition_35,
      definition_36,
    ],
    'regex': [definition_8],
    'function-variable': [definition_9],
    'parameter': [
      definition_41,
      definition_42,
      definition_43,
      definition_44,
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_11))],
    'keyword': [
      definition_45,
      definition_46,
      definition_47,
      definition_48,
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_13))],
    'function': [GrammarToken(pattern: RegExp(definition_14))],
    'number': [definition_15],
    'literal-property': [definition_16],
    'operator': [GrammarToken(pattern: RegExp(definition_17))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
  });

  return LanguageProto(
    'javascript',
    definition_0,
    aliases: ['js'],
    requiredDependencies: ['clike'],
    optionalDependencies: ['js-templates'],
  );
}

final languageJavascript = _create();
