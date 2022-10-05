// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_58 = Grammar();
  final definition_108 = Grammar();
  final definition_124 = Grammar();
  final definition_60 = Grammar();
  final definition_109 = Grammar();
  final definition_125 = Grammar();
  final definition_62 = Grammar();
  final definition_110 = Grammar();
  final definition_126 = Grammar();
  final definition_64 = Grammar();
  final definition_111 = Grammar();
  final definition_127 = Grammar();
  final definition_66 = Grammar();
  final definition_112 = Grammar();
  final definition_128 = Grammar();
  final definition_68 = Grammar();
  final definition_113 = Grammar();
  final definition_129 = Grammar();
  final definition_70 = Grammar();
  final definition_115 = Grammar();
  final definition_37 = Grammar();
  final definition_39 = Grammar();
  final definition_50 = Grammar();
  final definition_52 = Grammar();
  const definition_20 = '\\/\\*\\*(?!\\/)[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_54 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_55 = '(^|[^\\\\:])\\/\\/.*';
  const definition_24 = '^#!.*';
  const definition_56 =
      '((?:\\b(?:styled(?:\\([^)]*\\))?(?:\\s*\\.\\s*\\w+(?:\\([^)]*\\))*)*|css(?:\\s*\\.\\s*(?:global|resolve))?|createGlobalStyle|keyframes))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_106 = '^`|`\$';
  const definition_98 = '[\\s\\S]+';
  const definition_114 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}';
  const definition_130 = '^\\\$\\{|\\}\$';
  const definition_59 =
      '((?:\\bhtml|\\.\\s*(?:inner|outer)HTML\\s*\\+?=)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_61 =
      '((?:\\bsvg)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_63 =
      '((?:\\b(?:markdown|md))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_65 =
      '((?:\\b(?:gql|graphql(?:\\s*\\.\\s*experimental)?))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_67 =
      '((?:\\bsql)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_69 =
      '`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_33 =
      '((?:^|[,{])[ \\t]*)(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\2)[^\\\\\\r\\n])*\\2(?=\\s*:)';
  const definition_35 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_36 =
      '(\\b(?:class|extends|implements|instanceof|interface|new|type)\\s+)(?!keyof\\b)(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?:\\s*<(?:[^<>]|<(?:[^<>]|<[^<>]*>)*>)*>)?';
  const definition_38 =
      '((?:^|[^\$\\w\\xA0-\\uFFFF."\'\\])\\s]|\\b(?:return|yield))\\s*)\\/(?:(?:\\[(?:[^\\]\\\\\\r\\n]|\\\\.)*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}|(?:\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.)*\\])*\\])*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}v[dgimyus]{0,7})(?=(?:\\s|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*(?:\$|[\\r\\n,.;:})\\]]|\\/\\/))';
  const definition_99 = '^(\\/)[\\s\\S]+(?=\\/[a-z]*\$)';
  const definition_72 = '^\\/|\\/\$';
  const definition_73 = '^[a-z]+\$';
  const definition_40 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*[=:]\\s*(?:async\\s*)?(?:\\bfunction\\b|(?:\\((?:[^()]|\\([^()]*\\))*\\)|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)\\s*=>))';
  const definition_10 = '\\b[A-Z](?:[A-Z_]|\\dx?)*\\b';
  const definition_74 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:as|assert(?=\\s*\\{)|export|from(?=\\s*(?:[\'"]|\$))|import)\\b';
  const definition_76 = '((?:^|\\})\\s*)catch\\b';
  const definition_78 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:await|break|case|continue|default|do|else|finally(?=\\s*(?:\\{|\$))|for|if|return|switch|throw|try|while|yield)\\b';
  const definition_79 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:async(?=\\s*(?:function\\b|\\(|[\$\\w\\xA0-\\uFFFF]|\$))|class|const|debugger|delete|enum|extends|function|(?:get|set)(?=\\s*(?:[#\\[\$\\w\\xA0-\\uFFFF]|\$))|implements|in|instanceof|interface|let|new|null|of|package|private|protected|public|static|super|this|typeof|undefined|var|void|with)\\b';
  const definition_46 =
      '\\b(?:abstract|declare|is|keyof|out|readonly|require|satisfies)\\b';
  const definition_47 =
      '\\b(?:asserts|infer|interface|module|namespace|type)\\b(?=\\s*(?:[{_\$a-zA-Z\\xA0-\\uFFFF]|\$))';
  const definition_48 = '\\btype\\b(?=\\s*(?:[\\{*]|\$))';
  const definition_12 = '\\b(?:false|true)\\b';
  const definition_15 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*(?:\\.\\s*(?:apply|bind|call)\\s*)?\\()';
  const definition_53 =
      '(^|[^\\w\$])(?:NaN|Infinity|0[bB][01]+(?:_[01]+)*n?|0[oO][0-7]+(?:_[0-7]+)*n?|0[xX][\\dA-Fa-f]+(?:_[\\dA-Fa-f]+)*n?|\\d+(?:_\\d+)*n|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[Ee][+-]?\\d+(?:_\\d+)*)?)(?![\\w\$])';
  const definition_17 =
      '--|\\+\\+|\\*\\*=?|=>|&&=?|\\|\\|=?|[!=]==|<<=?|>>>?=?|[-+*/%&|^!=<>]=?|\\.{3}|\\?\\?=?|\\?\\.?|[~:]';
  const definition_18 = '[{}[\\];(),.:]';
  const definition_19 =
      '\\b(?:Array|Function|Promise|any|boolean|console|never|number|string|symbol|unknown)\\b';
  const definition_49 = '@[\$\\w\\xA0-\\uFFFF]+';
  const definition_102 = '^@';
  const definition_81 = '^[\\s\\S]+';
  const definition_51 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*\\s*<(?:[^<>]|<(?:[^<>]|<[^<>]*>)*>)*>(?=\\s*\\()';
  const definition_82 =
      '^#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*';
  const definition_104 = '<[\\s\\S]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    inside: 'jsdoc',
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_54),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_55),
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
    pattern: RegExp(definition_56),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_58,
    global: true,
  );
  final definition_84 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['string'],
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_98),
    inside: definition_108,
  );
  final definition_116 = GrammarToken(
    pattern: RegExp(definition_114),
    lookbehind: true,
    inside: definition_124,
  );
  final definition_132 = GrammarToken(
    pattern: RegExp(definition_130),
    aliases: ['punctuation'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_59),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_60,
    global: true,
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['string'],
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_98),
    inside: definition_109,
  );
  final definition_118 = GrammarToken(
    pattern: RegExp(definition_114),
    lookbehind: true,
    inside: definition_125,
  );
  final definition_133 = GrammarToken(
    pattern: RegExp(definition_130),
    aliases: ['punctuation'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_61),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_62,
    global: true,
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['string'],
  );
  final definition_89 = GrammarToken(
    pattern: RegExp(definition_98),
    inside: definition_110,
  );
  final definition_119 = GrammarToken(
    pattern: RegExp(definition_114),
    lookbehind: true,
    inside: definition_126,
  );
  final definition_134 = GrammarToken(
    pattern: RegExp(definition_130),
    aliases: ['punctuation'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_64,
    global: true,
  );
  final definition_90 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['string'],
  );
  final definition_91 = GrammarToken(
    pattern: RegExp(definition_98),
    inside: definition_111,
  );
  final definition_120 = GrammarToken(
    pattern: RegExp(definition_114),
    lookbehind: true,
    inside: definition_127,
  );
  final definition_135 = GrammarToken(
    pattern: RegExp(definition_130),
    aliases: ['punctuation'],
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_65),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_66,
    global: true,
  );
  final definition_92 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['string'],
  );
  final definition_93 = GrammarToken(
    pattern: RegExp(definition_98),
    inside: definition_112,
  );
  final definition_121 = GrammarToken(
    pattern: RegExp(definition_114),
    lookbehind: true,
    inside: definition_128,
  );
  final definition_136 = GrammarToken(
    pattern: RegExp(definition_130),
    aliases: ['punctuation'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_67),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_68,
    global: true,
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['string'],
  );
  final definition_95 = GrammarToken(
    pattern: RegExp(definition_98),
    inside: definition_113,
  );
  final definition_122 = GrammarToken(
    pattern: RegExp(definition_114),
    lookbehind: true,
    inside: definition_129,
  );
  final definition_137 = GrammarToken(
    pattern: RegExp(definition_130),
    aliases: ['punctuation'],
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_69),
    greedy: true,
    inside: definition_70,
    global: true,
  );
  final definition_96 = GrammarToken(
    pattern: RegExp(definition_106),
    aliases: ['string'],
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_114),
    lookbehind: true,
    inside: definition_115,
  );
  final definition_123 = GrammarToken(
    pattern: RegExp(definition_130),
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
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
    greedy: true,
    inside: definition_37,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    greedy: true,
    inside: definition_39,
    global: true,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_99),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_40),
    aliases: ['function'],
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_74),
    lookbehind: true,
    aliases: ['module'],
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_76),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_78),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_79),
    lookbehind: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_53),
    lookbehind: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_49),
    inside: definition_50,
  );
  final definition_80 = GrammarToken(
    pattern: RegExp(definition_102),
    aliases: ['operator'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_51),
    greedy: true,
    inside: definition_52,
    global: true,
  );
  final definition_83 = GrammarToken(
    pattern: RegExp(definition_104),
    aliases: ['class-name'],
    inside: definition_37,
  );
  definition_124.rest = definition_0;
  definition_125.rest = definition_0;
  definition_126.rest = definition_0;
  definition_127.rest = definition_0;
  definition_128.rest = definition_0;
  definition_129.rest = definition_0;
  definition_115.rest = definition_0;
  definition_108.tokenize = embeddedIn('css');
  definition_109.tokenize = embeddedIn('html');
  definition_110.tokenize = embeddedIn('svg');
  definition_111.tokenize = embeddedIn('markdown');
  definition_112.tokenize = embeddedIn('graphql');
  definition_113.tokenize = embeddedIn('sql');
  definition_124.addAllTokens({
    'interpolation-punctuation': [definition_132],
  });
  definition_108.addAllTokens({
    'interpolation': [definition_116],
  });
  definition_58.addAllTokens({
    'template-punctuation': [definition_84],
    'css': [definition_85],
  });
  definition_125.addAllTokens({
    'interpolation-punctuation': [definition_133],
  });
  definition_109.addAllTokens({
    'interpolation': [definition_118],
  });
  definition_60.addAllTokens({
    'template-punctuation': [definition_86],
    'html': [definition_87],
  });
  definition_126.addAllTokens({
    'interpolation-punctuation': [definition_134],
  });
  definition_110.addAllTokens({
    'interpolation': [definition_119],
  });
  definition_62.addAllTokens({
    'template-punctuation': [definition_88],
    'svg': [definition_89],
  });
  definition_127.addAllTokens({
    'interpolation-punctuation': [definition_135],
  });
  definition_111.addAllTokens({
    'interpolation': [definition_120],
  });
  definition_64.addAllTokens({
    'template-punctuation': [definition_90],
    'markdown': [definition_91],
  });
  definition_128.addAllTokens({
    'interpolation-punctuation': [definition_136],
  });
  definition_112.addAllTokens({
    'interpolation': [definition_121],
  });
  definition_66.addAllTokens({
    'template-punctuation': [definition_92],
    'graphql': [definition_93],
  });
  definition_129.addAllTokens({
    'interpolation-punctuation': [definition_137],
  });
  definition_113.addAllTokens({
    'interpolation': [definition_122],
  });
  definition_68.addAllTokens({
    'template-punctuation': [definition_94],
    'sql': [definition_95],
  });
  definition_115.addAllTokens({
    'interpolation-punctuation': [definition_123],
  });
  definition_70.addAllTokens({
    'template-punctuation': [definition_96],
    'interpolation': [definition_97],
    'string': [GrammarToken(pattern: RegExp(definition_98))],
  });
  definition_39.addAllTokens({
    'regex-source': [definition_71],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_72))],
    'regex-flags': [GrammarToken(pattern: RegExp(definition_73))],
  });
  definition_37.addAllTokens({
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
    'regex': [definition_8],
    'function-variable': [definition_9],
    'constant': [GrammarToken(pattern: RegExp(definition_10))],
    'keyword': [
      definition_42,
      definition_43,
      definition_44,
      definition_45,
      GrammarToken(pattern: RegExp(definition_46)),
      GrammarToken(pattern: RegExp(definition_47)),
      GrammarToken(pattern: RegExp(definition_48)),
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_12))],
    'function': [GrammarToken(pattern: RegExp(definition_15))],
    'number': [definition_16],
    'operator': [GrammarToken(pattern: RegExp(definition_17))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
    'builtin': [GrammarToken(pattern: RegExp(definition_19))],
  });
  definition_50.addAllTokens({
    'at': [definition_80],
    'function': [GrammarToken(pattern: RegExp(definition_81))],
  });
  definition_52.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_82))],
    'generic': [definition_83],
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
    'class-name': [definition_7],
    'regex': [definition_8],
    'function-variable': [definition_9],
    'constant': [GrammarToken(pattern: RegExp(definition_10))],
    'keyword': [
      definition_42,
      definition_43,
      definition_44,
      definition_45,
      GrammarToken(pattern: RegExp(definition_46)),
      GrammarToken(pattern: RegExp(definition_47)),
      GrammarToken(pattern: RegExp(definition_48)),
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_12))],
    'decorator': [definition_13],
    'generic-function': [definition_14],
    'function': [GrammarToken(pattern: RegExp(definition_15))],
    'number': [definition_16],
    'operator': [GrammarToken(pattern: RegExp(definition_17))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
    'builtin': [GrammarToken(pattern: RegExp(definition_19))],
  });

  return LanguageProto(
    'typescript',
    definition_0,
    aliases: ['ts'],
    requiredDependencies: ['javascript', 'clike'],
  );
}

final languageTypescript = _create();
