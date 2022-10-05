// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_31 = Grammar();
  final definition_33 = Grammar();
  final definition_125 = Grammar();
  final definition_35 = Grammar();
  final definition_128 = Grammar();
  final definition_38 = Grammar();
  final definition_131 = Grammar();
  final definition_134 = Grammar();
  final definition_168 = Grammar();
  final definition_201 = Grammar();
  final definition_170 = Grammar();
  final definition_202 = Grammar();
  final definition_138 = Grammar();
  final definition_142 = Grammar();
  final definition_93 = Grammar();
  final definition_175 = Grammar();
  final definition_206 = Grammar();
  final definition_113 = Grammar();
  final definition_95 = Grammar();
  final definition_176 = Grammar();
  final definition_207 = Grammar();
  final definition_97 = Grammar();
  final definition_177 = Grammar();
  final definition_208 = Grammar();
  final definition_99 = Grammar();
  final definition_178 = Grammar();
  final definition_209 = Grammar();
  final definition_101 = Grammar();
  final definition_179 = Grammar();
  final definition_210 = Grammar();
  final definition_103 = Grammar();
  final definition_180 = Grammar();
  final definition_211 = Grammar();
  final definition_105 = Grammar();
  final definition_182 = Grammar();
  final definition_107 = Grammar();
  final definition_58 = Grammar();
  const definition_71 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_72 = '(^|[^\\\\:])\\/\\/.*';
  const definition_29 = '<\\?[\\s\\S]+?\\?>';
  const definition_30 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_123 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_124 = '"[^"]*"|\'[^\']*\'';
  const definition_75 = '^<!|>\$|[[\\]]';
  const definition_76 = '^DOCTYPE';
  const definition_77 = '[^\\s<>\'"]+';
  const definition_32 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_36 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_183 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_162 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_126 = '[\\s\\S]+';
  const definition_34 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_37 =
      '<\\/?(?:[\\w.:-]+(?:(?:\\s|\\/\\/.*(?!.)|\\/\\*(?:[^*]|\\*(?!\\/))\\*\\/)+(?:[\\w.:\$-]+(?:=(?:"(?:\\\\[\\s\\S]|[^\\\\"])*"|\'(?:\\\\[\\s\\S]|[^\\\\\'])*\'|[^\\s{\'"/>=]+|(?:\\{(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])*\\})))?|(?:\\{(?:\\s|\\/\\/.*(?!.)|\\/\\*(?:[^*]|\\*(?!\\/))\\*\\/)*\\.{3}(?:[^{}]|(?:\\{(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])*\\}))*\\})))*(?:\\s|\\/\\/.*(?!.)|\\/\\*(?:[^*]|\\*(?!\\/))\\*\\/)*\\/?)?>';
  const definition_130 = '^(<\\/?)[^\\s>\\/]*';
  const definition_164 = '^[^\\s>\\/:]+:';
  const definition_165 = '^[A-Z]\\w*(?:\\.[A-Z]\\w*)*\$';
  const definition_132 = '=(?:\\{(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])*\\})';
  const definition_184 = '^=(?=\\{)';
  const definition_167 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_186 = '^[^\\s=]+';
  const definition_200 = '=[\\s\\S]+';
  const definition_223 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_203 = '^=';
  const definition_226 = '"|\'';
  const definition_169 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_137 =
      '=(?!\\{)(?:"(?:\\\\[\\s\\S]|[^\\\\"])*"|\'(?:\\\\[\\s\\S]|[^\\\\\'])*\'|[^\\s\'">]+)';
  const definition_205 = '^(\\s*)["\']|["\']\$';
  const definition_89 = '&[\\da-z]{1,8};';
  const definition_40 = '&#x?[\\da-f]{1,8};';
  const definition_86 = '^<\\/?|\\/?>\$';
  const definition_139 =
      '(?:\\{(?:\\s|\\/\\/.*(?!.)|\\/\\*(?:[^*]|\\*(?!\\/))\\*\\/)*\\.{3}(?:[^{}]|(?:\\{(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])*\\}))*\\})';
  const definition_141 = '[^\\s>\\/]+';
  const definition_41 = '\\/\\*\\*(?!\\/)[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_43 = '^#!.*';
  const definition_91 =
      '((?:\\b(?:styled(?:\\([^)]*\\))?(?:\\s*\\.\\s*\\w+(?:\\([^)]*\\))*)*|css(?:\\s*\\.\\s*(?:global|resolve))?|createGlobalStyle|keyframes))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_173 = '^`|`\$';
  const definition_181 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}';
  const definition_212 = '^\\\$\\{|\\}\$';
  const definition_94 =
      '((?:\\bhtml|\\.\\s*(?:inner|outer)HTML\\s*\\+?=)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_96 =
      '((?:\\bsvg)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_98 =
      '((?:\\b(?:markdown|md))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_100 =
      '((?:\\b(?:gql|graphql(?:\\s*\\.\\s*experimental)?))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_102 =
      '((?:\\bsql)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_104 =
      '`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_52 =
      '((?:^|[,{])[ \\t]*)(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\2)[^\\\\\\r\\n])*\\2(?=\\s*:)';
  const definition_54 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_106 =
      '(\\b(?:class|extends|implements|instanceof|interface|new)\\s+)[\\w.\\\\]+';
  const definition_157 = '[.\\\\]';
  const definition_108 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$A-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\.(?:constructor|prototype))';
  const definition_57 =
      '((?:^|[^\$\\w\\xA0-\\uFFFF."\'\\])\\s]|\\b(?:return|yield))\\s*)\\/(?:(?:\\[(?:[^\\]\\\\\\r\\n]|\\\\.)*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}|(?:\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.)*\\])*\\])*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}v[dgimyus]{0,7})(?=(?:\\s|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*(?:\$|[\\r\\n,.;:})\\]]|\\/\\/))';
  const definition_158 = '^(\\/)[\\s\\S]+(?=\\/[a-z]*\$)';
  const definition_110 = '^\\/|\\/\$';
  const definition_111 = '^[a-z]+\$';
  const definition_59 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*[=:]\\s*(?:async\\s*)?(?:\\bfunction\\b|(?:\\((?:[^()]|\\([^()]*\\))*\\)|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)\\s*=>))';
  const definition_112 =
      '(function(?:\\s+(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)?\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\))';
  const definition_114 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$a-z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*=>)';
  const definition_115 =
      '(\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*=>)';
  const definition_116 =
      '((?:\\b|\\s|^)(?!(?:as|async|await|break|case|catch|class|const|continue|debugger|default|delete|do|else|enum|export|extends|finally|for|from|function|get|if|implements|import|in|instanceof|interface|let|new|null|of|package|private|protected|public|return|set|static|super|switch|this|throw|try|typeof|undefined|var|void|while|with|yield)(?![\$\\w\\xA0-\\uFFFF]))(?:(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*\\s*)\\(\\s*|\\]\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*\\{)';
  const definition_18 = '\\b[A-Z](?:[A-Z_]|\\dx?)*\\b';
  const definition_117 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:as|assert(?=\\s*\\{)|export|from(?=\\s*(?:[\'"]|\$))|import)\\b';
  const definition_119 = '((?:^|\\})\\s*)catch\\b';
  const definition_121 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:await|break|case|continue|default|do|else|finally(?=\\s*(?:\\{|\$))|for|if|return|switch|throw|try|while|yield)\\b';
  const definition_122 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:async(?=\\s*(?:function\\b|\\(|[\$\\w\\xA0-\\uFFFF]|\$))|class|const|debugger|delete|enum|extends|function|(?:get|set)(?=\\s*(?:[#\\[\$\\w\\xA0-\\uFFFF]|\$))|implements|in|instanceof|interface|let|new|null|of|package|private|protected|public|static|super|this|typeof|undefined|var|void|with)\\b';
  const definition_20 = '\\b(?:false|true)\\b';
  const definition_21 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*(?:\\.\\s*(?:apply|bind|call)\\s*)?\\()';
  const definition_69 =
      '(^|[^\\w\$])(?:NaN|Infinity|0[bB][01]+(?:_[01]+)*n?|0[oO][0-7]+(?:_[0-7]+)*n?|0[xX][\\dA-Fa-f]+(?:_[\\dA-Fa-f]+)*n?|\\d+(?:_\\d+)*n|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[Ee][+-]?\\d+(?:_\\d+)*)?)(?![\\w\$])';
  const definition_70 =
      '((?:^|[,{])[ \\t]*)(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*:)';
  const definition_24 =
      '--|\\+\\+|\\*\\*=?|=>|&&=?|\\|\\|=?|[!=]==|<<=?|>>>?=?|[-+*/%&|^!=<>]=?|\\.{3}|\\?\\?=?|\\?\\.?|[~:]';
  const definition_25 = '[{}[\\];(),.:]';
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_71),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_72),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_29),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_30, caseSensitive: false),
    greedy: true,
    inside: definition_31,
    global: true,
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_124),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_32, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_33,
    global: true,
  );
  final definition_78 = GrammarToken(
    pattern: RegExp(definition_36, caseSensitive: false),
    inside: definition_125,
  );
  final definition_161 = GrammarToken(
    pattern: RegExp(definition_183, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_126),
    inside: 'css',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_34, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_35,
    global: true,
  );
  final definition_80 = GrammarToken(
    pattern: RegExp(definition_36, caseSensitive: false),
    inside: definition_128,
  );
  final definition_163 = GrammarToken(
    pattern: RegExp(definition_183, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_126),
    inside: 'javascript',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_36, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_37),
    greedy: true,
    inside: definition_38,
    global: true,
  );
  final definition_82 = GrammarToken(
    pattern: RegExp(definition_130),
    lookbehind: true,
    inside: definition_131,
  );
  final definition_83 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['language-javascript'],
    inside: definition_134,
  );
  final definition_166 = GrammarToken(
    pattern: RegExp(definition_184),
    aliases: ['punctuation'],
  );
  final definition_135 = GrammarToken(
    pattern: RegExp(definition_167, caseSensitive: false),
    lookbehind: true,
    inside: definition_168,
  );
  final definition_187 = GrammarToken(
    pattern: RegExp(definition_200),
    inside: definition_201,
  );
  final definition_213 = GrammarToken(
    pattern: RegExp(definition_223),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_225 = GrammarToken(
    pattern: RegExp(definition_203),
    aliases: ['attr-equals'],
  );
  final definition_136 = GrammarToken(
    pattern: RegExp(definition_169, caseSensitive: false),
    lookbehind: true,
    inside: definition_170,
  );
  final definition_188 = GrammarToken(
    pattern: RegExp(definition_200),
    inside: definition_202,
  );
  final definition_215 = GrammarToken(
    pattern: RegExp(definition_223),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_228 = GrammarToken(
    pattern: RegExp(definition_203),
    aliases: ['attr-equals'],
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_137),
    inside: definition_138,
  );
  final definition_189 = GrammarToken(
    pattern: RegExp(definition_203),
    aliases: ['attr-equals'],
  );
  final definition_190 = GrammarToken(
    pattern: RegExp(definition_205),
    lookbehind: true,
  );
  final definition_191 = GrammarToken(
    pattern: RegExp(definition_89, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_139),
    inside: 'jsx',
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_141),
    inside: definition_142,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_89, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_41),
    greedy: true,
    inside: 'jsdoc',
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_43),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_91),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_93,
    global: true,
  );
  final definition_143 = GrammarToken(
    pattern: RegExp(definition_173),
    aliases: ['string'],
  );
  final definition_144 = GrammarToken(
    pattern: RegExp(definition_126),
    inside: definition_175,
  );
  final definition_192 = GrammarToken(
    pattern: RegExp(definition_181),
    lookbehind: true,
    inside: definition_206,
  );
  final definition_217 = GrammarToken(
    pattern: RegExp(definition_212),
    aliases: ['punctuation'],
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_94),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_95,
    global: true,
  );
  final definition_145 = GrammarToken(
    pattern: RegExp(definition_173),
    aliases: ['string'],
  );
  final definition_146 = GrammarToken(
    pattern: RegExp(definition_126),
    inside: definition_176,
  );
  final definition_194 = GrammarToken(
    pattern: RegExp(definition_181),
    lookbehind: true,
    inside: definition_207,
  );
  final definition_218 = GrammarToken(
    pattern: RegExp(definition_212),
    aliases: ['punctuation'],
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_97,
    global: true,
  );
  final definition_147 = GrammarToken(
    pattern: RegExp(definition_173),
    aliases: ['string'],
  );
  final definition_148 = GrammarToken(
    pattern: RegExp(definition_126),
    inside: definition_177,
  );
  final definition_195 = GrammarToken(
    pattern: RegExp(definition_181),
    lookbehind: true,
    inside: definition_208,
  );
  final definition_219 = GrammarToken(
    pattern: RegExp(definition_212),
    aliases: ['punctuation'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_98),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_99,
    global: true,
  );
  final definition_149 = GrammarToken(
    pattern: RegExp(definition_173),
    aliases: ['string'],
  );
  final definition_150 = GrammarToken(
    pattern: RegExp(definition_126),
    inside: definition_178,
  );
  final definition_196 = GrammarToken(
    pattern: RegExp(definition_181),
    lookbehind: true,
    inside: definition_209,
  );
  final definition_220 = GrammarToken(
    pattern: RegExp(definition_212),
    aliases: ['punctuation'],
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_100),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_101,
    global: true,
  );
  final definition_151 = GrammarToken(
    pattern: RegExp(definition_173),
    aliases: ['string'],
  );
  final definition_152 = GrammarToken(
    pattern: RegExp(definition_126),
    inside: definition_179,
  );
  final definition_197 = GrammarToken(
    pattern: RegExp(definition_181),
    lookbehind: true,
    inside: definition_210,
  );
  final definition_221 = GrammarToken(
    pattern: RegExp(definition_212),
    aliases: ['punctuation'],
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_102),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_103,
    global: true,
  );
  final definition_153 = GrammarToken(
    pattern: RegExp(definition_173),
    aliases: ['string'],
  );
  final definition_154 = GrammarToken(
    pattern: RegExp(definition_126),
    inside: definition_180,
  );
  final definition_198 = GrammarToken(
    pattern: RegExp(definition_181),
    lookbehind: true,
    inside: definition_211,
  );
  final definition_222 = GrammarToken(
    pattern: RegExp(definition_212),
    aliases: ['punctuation'],
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_104),
    greedy: true,
    inside: definition_105,
    global: true,
  );
  final definition_155 = GrammarToken(
    pattern: RegExp(definition_173),
    aliases: ['string'],
  );
  final definition_156 = GrammarToken(
    pattern: RegExp(definition_181),
    lookbehind: true,
    inside: definition_182,
  );
  final definition_199 = GrammarToken(
    pattern: RegExp(definition_212),
    aliases: ['punctuation'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_52, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_54),
    greedy: true,
    global: true,
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_106),
    lookbehind: true,
    inside: definition_107,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_108),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_57),
    lookbehind: true,
    greedy: true,
    inside: definition_58,
    global: true,
  );
  final definition_109 = GrammarToken(
    pattern: RegExp(definition_158),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_59),
    aliases: ['function'],
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: definition_113,
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_114, caseSensitive: false),
    lookbehind: true,
    inside: definition_113,
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_115),
    lookbehind: true,
    inside: definition_113,
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_116),
    lookbehind: true,
    inside: definition_113,
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_117),
    lookbehind: true,
    aliases: ['module'],
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_119),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_121),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_122),
    lookbehind: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_70, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
  );
  definition_134.rest = 'jsx';
  definition_207.rest = definition_113;
  definition_208.rest = definition_113;
  definition_209.rest = definition_113;
  definition_210.rest = definition_113;
  definition_211.rest = definition_113;
  definition_182.rest = definition_113;
  definition_206.rest = definition_113;
  definition_176.tokenize = embeddedIn('html');
  definition_177.tokenize = embeddedIn('svg');
  definition_178.tokenize = embeddedIn('markdown');
  definition_179.tokenize = embeddedIn('graphql');
  definition_180.tokenize = embeddedIn('sql');
  definition_175.tokenize = embeddedIn('css');
  definition_0.tokenize = customTokenizer_1;
  definition_31.addAllTokens({
    'internal-subset': [definition_73],
    'string': [definition_74],
    'punctuation': [GrammarToken(pattern: RegExp(definition_75))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_76, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_77))],
  });
  definition_125.addAllTokens({
    'language-css': [definition_161],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_162, caseSensitive: false))
    ],
  });
  definition_33.addAllTokens({
    'included-cdata': [definition_78],
    'language-css': [definition_79],
  });
  definition_128.addAllTokens({
    'language-javascript': [definition_163],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_162, caseSensitive: false))
    ],
  });
  definition_35.addAllTokens({
    'included-cdata': [definition_80],
    'language-javascript': [definition_81],
  });
  definition_131.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_164))],
    'class-name': [GrammarToken(pattern: RegExp(definition_165))],
  });
  definition_134.addAllTokens({
    'script-punctuation': [definition_166],
  });
  definition_201.addAllTokens({
    'value': [definition_213],
    'punctuation': [
      definition_225,
      GrammarToken(pattern: RegExp(definition_226)),
    ],
  });
  definition_168.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_186))],
    'attr-value': [definition_187],
  });
  definition_202.addAllTokens({
    'value': [definition_215],
    'punctuation': [
      definition_228,
      GrammarToken(pattern: RegExp(definition_226)),
    ],
  });
  definition_170.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_186))],
    'attr-value': [definition_188],
  });
  definition_138.addAllTokens({
    'punctuation': [
      definition_189,
      definition_190,
    ],
    'entity': [
      definition_191,
      GrammarToken(pattern: RegExp(definition_40, caseSensitive: false)),
    ],
  });
  definition_142.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_164))],
  });
  definition_38.addAllTokens({
    'tag': [definition_82],
    'script': [definition_83],
    'special-attr': [
      definition_135,
      definition_136,
    ],
    'attr-value': [definition_85],
    'punctuation': [GrammarToken(pattern: RegExp(definition_86))],
    'spread': [definition_87],
    'attr-name': [definition_88],
    'comment': [
      definition_27,
      definition_28,
    ],
  });
  definition_207.addAllTokens({
    'interpolation-punctuation': [definition_218],
  });
  definition_176.addAllTokens({
    'interpolation': [definition_194],
  });
  definition_95.addAllTokens({
    'template-punctuation': [definition_145],
    'html': [definition_146],
  });
  definition_208.addAllTokens({
    'interpolation-punctuation': [definition_219],
  });
  definition_177.addAllTokens({
    'interpolation': [definition_195],
  });
  definition_97.addAllTokens({
    'template-punctuation': [definition_147],
    'svg': [definition_148],
  });
  definition_209.addAllTokens({
    'interpolation-punctuation': [definition_220],
  });
  definition_178.addAllTokens({
    'interpolation': [definition_196],
  });
  definition_99.addAllTokens({
    'template-punctuation': [definition_149],
    'markdown': [definition_150],
  });
  definition_210.addAllTokens({
    'interpolation-punctuation': [definition_221],
  });
  definition_179.addAllTokens({
    'interpolation': [definition_197],
  });
  definition_101.addAllTokens({
    'template-punctuation': [definition_151],
    'graphql': [definition_152],
  });
  definition_211.addAllTokens({
    'interpolation-punctuation': [definition_222],
  });
  definition_180.addAllTokens({
    'interpolation': [definition_198],
  });
  definition_103.addAllTokens({
    'template-punctuation': [definition_153],
    'sql': [definition_154],
  });
  definition_182.addAllTokens({
    'interpolation-punctuation': [definition_199],
  });
  definition_105.addAllTokens({
    'template-punctuation': [definition_155],
    'interpolation': [definition_156],
    'string': [GrammarToken(pattern: RegExp(definition_126))],
  });
  definition_107.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_157))],
  });
  definition_58.addAllTokens({
    'regex-source': [definition_109],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_110))],
    'regex-flags': [GrammarToken(pattern: RegExp(definition_111))],
  });
  definition_113.addAllTokens({
    'doc-comment': [definition_9],
    'comment': [
      definition_27,
      definition_28,
    ],
    'hashbang': [definition_10],
    'template-string': [
      definition_45,
      definition_46,
      definition_47,
      definition_48,
      definition_49,
      definition_50,
      definition_51,
    ],
    'string-property': [definition_12],
    'string': [definition_13],
    'class-name': [
      definition_55,
      definition_56,
    ],
    'regex': [definition_15],
    'function-variable': [definition_16],
    'parameter': [
      definition_61,
      definition_62,
      definition_63,
      definition_64,
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_18))],
    'keyword': [
      definition_65,
      definition_66,
      definition_67,
      definition_68,
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_20))],
    'function': [GrammarToken(pattern: RegExp(definition_21))],
    'number': [definition_22],
    'literal-property': [definition_23],
    'operator': [GrammarToken(pattern: RegExp(definition_24))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_25))],
  });
  definition_206.addAllTokens({
    'interpolation-punctuation': [definition_217],
  });
  definition_175.addAllTokens({
    'interpolation': [definition_192],
  });
  definition_93.addAllTokens({
    'template-punctuation': [definition_143],
    'css': [definition_144],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_27,
      definition_28,
    ],
    'prolog': [definition_2],
    'doctype': [definition_3],
    'style': [definition_4],
    'script': [definition_5],
    'cdata': [definition_6],
    'tag': [definition_7],
    'entity': [
      definition_39,
      GrammarToken(pattern: RegExp(definition_40, caseSensitive: false)),
    ],
    'doc-comment': [definition_9],
    'hashbang': [definition_10],
    'template-string': [
      definition_45,
      definition_46,
      definition_47,
      definition_48,
      definition_49,
      definition_50,
      definition_51,
    ],
    'string-property': [definition_12],
    'string': [definition_13],
    'class-name': [
      definition_55,
      definition_56,
    ],
    'regex': [definition_15],
    'function-variable': [definition_16],
    'parameter': [
      definition_61,
      definition_62,
      definition_63,
      definition_64,
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_18))],
    'keyword': [
      definition_65,
      definition_66,
      definition_67,
      definition_68,
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_20))],
    'function': [GrammarToken(pattern: RegExp(definition_21))],
    'number': [definition_22],
    'literal-property': [definition_23],
    'operator': [GrammarToken(pattern: RegExp(definition_24))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_25))],
  });

  return LanguageProto(
    'jsx',
    definition_0,
    requiredDependencies: ['markup', 'xml', 'javascript', 'clike'],
  );
}

final languageJsx = _create();
