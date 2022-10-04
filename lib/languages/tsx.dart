// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_32 = Grammar();
  final definition_34 = Grammar();
  final definition_135 = Grammar();
  final definition_36 = Grammar();
  final definition_138 = Grammar();
  final definition_39 = Grammar();
  final definition_141 = Grammar();
  final definition_144 = Grammar();
  final definition_195 = Grammar();
  final definition_229 = Grammar();
  final definition_197 = Grammar();
  final definition_230 = Grammar();
  final definition_148 = Grammar();
  final definition_151 = Grammar();
  final definition_97 = Grammar();
  final definition_202 = Grammar();
  final definition_234 = Grammar();
  final definition_227 = Grammar();
  final definition_99 = Grammar();
  final definition_203 = Grammar();
  final definition_235 = Grammar();
  final definition_101 = Grammar();
  final definition_204 = Grammar();
  final definition_236 = Grammar();
  final definition_103 = Grammar();
  final definition_205 = Grammar();
  final definition_237 = Grammar();
  final definition_105 = Grammar();
  final definition_206 = Grammar();
  final definition_238 = Grammar();
  final definition_107 = Grammar();
  final definition_207 = Grammar();
  final definition_239 = Grammar();
  final definition_109 = Grammar();
  final definition_209 = Grammar();
  final definition_57 = Grammar();
  final definition_59 = Grammar();
  final definition_71 = Grammar();
  final definition_73 = Grammar();
  const definition_74 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_75 = '(^|[^\\\\:])\\/\\/.*';
  const definition_30 = '<\\?[\\s\\S]+?\\?>';
  const definition_31 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_133 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_134 = '"[^"]*"|\'[^\']*\'';
  const definition_78 = '^<!|>\$|[[\\]]';
  const definition_79 = '^DOCTYPE';
  const definition_80 = '[^\\s<>\'"]+';
  const definition_33 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_37 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_210 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_189 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_136 = '[\\s\\S]+';
  const definition_35 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_38 =
      '(^|[^\\w\$]|(?=<\\/))(?:<\\/?(?:[\\w.:-]+(?:(?:\\s|\\/\\/.*(?!.)|\\/\\*(?:[^*]|\\*(?!\\/))\\*\\/)+(?:[\\w.:\$-]+(?:=(?:"(?:\\\\[\\s\\S]|[^\\\\"])*"|\'(?:\\\\[\\s\\S]|[^\\\\\'])*\'|[^\\s{\'"/>=]+|(?:\\{(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])*\\})))?|(?:\\{(?:\\s|\\/\\/.*(?!.)|\\/\\*(?:[^*]|\\*(?!\\/))\\*\\/)*\\.{3}(?:[^{}]|(?:\\{(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])*\\}))*\\})))*(?:\\s|\\/\\/.*(?!.)|\\/\\*(?:[^*]|\\*(?!\\/))\\*\\/)*\\/?)?>)';
  const definition_140 = '^(<\\/?)[^\\s>\\/]*';
  const definition_191 = '^[^\\s>\\/:]+:';
  const definition_192 = '^[A-Z]\\w*(?:\\.[A-Z]\\w*)*\$';
  const definition_142 = '=(?:\\{(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])*\\})';
  const definition_211 = '^=(?=\\{)';
  const definition_194 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_213 = '^[^\\s=]+';
  const definition_228 = '=[\\s\\S]+';
  const definition_251 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_231 = '^=';
  const definition_254 = '"|\'';
  const definition_196 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_147 =
      '=(?!\\{)(?:"(?:\\\\[\\s\\S]|[^\\\\"])*"|\'(?:\\\\[\\s\\S]|[^\\\\\'])*\'|[^\\s\'">]+)';
  const definition_233 = '^(\\s*)["\']|["\']\$';
  const definition_93 = '&[\\da-z]{1,8};';
  const definition_41 = '&#x?[\\da-f]{1,8};';
  const definition_89 = '^<\\/?|\\/?>\$';
  const definition_149 =
      '(?:\\{(?:\\s|\\/\\/.*(?!.)|\\/\\*(?:[^*]|\\*(?!\\/))\\*\\/)*\\.{3}(?:[^{}]|(?:\\{(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])*\\}))*\\})';
  const definition_150 = '[^\\s>\\/]+';
  const definition_42 = '\\/\\*\\*(?!\\/)[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_44 = '^#!.*';
  const definition_95 =
      '((?:\\b(?:styled(?:\\([^)]*\\))?(?:\\s*\\.\\s*\\w+(?:\\([^)]*\\))*)*|css(?:\\s*\\.\\s*(?:global|resolve))?|createGlobalStyle|keyframes))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_200 = '^`|`\$';
  const definition_208 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}';
  const definition_240 = '^\\\$\\{|\\}\$';
  const definition_98 =
      '((?:\\bhtml|\\.\\s*(?:inner|outer)HTML\\s*\\+?=)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_100 =
      '((?:\\bsvg)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_102 =
      '((?:\\b(?:markdown|md))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_104 =
      '((?:\\b(?:gql|graphql(?:\\s*\\.\\s*experimental)?))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_106 =
      '((?:\\bsql)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_108 =
      '`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_53 =
      '((?:^|[,{])[ \\t]*)(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\2)[^\\\\\\r\\n])*\\2(?=\\s*:)';
  const definition_55 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_56 =
      '(\\b(?:class|extends|implements|instanceof|interface|new|type)\\s+)(?!keyof\\b)(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?:\\s*<(?:[^<>]|<(?:[^<>]|<[^<>]*>)*>)*>)?';
  const definition_58 =
      '((?:^|[^\$\\w\\xA0-\\uFFFF."\'\\])\\s]|\\b(?:return|yield))\\s*)\\/(?:(?:\\[(?:[^\\]\\\\\\r\\n]|\\\\.)*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}|(?:\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.)*\\])*\\])*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}v[dgimyus]{0,7})(?=(?:\\s|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*(?:\$|[\\r\\n,.;:})\\]]|\\/\\/))';
  const definition_181 = '^(\\/)[\\s\\S]+(?=\\/[a-z]*\$)';
  const definition_121 = '^\\/|\\/\$';
  const definition_122 = '^[a-z]+\$';
  const definition_60 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*[=:]\\s*(?:async\\s*)?(?:\\bfunction\\b|(?:\\((?:[^()]|\\([^()]*\\))*\\)|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)\\s*=>))';
  const definition_17 = '\\b[A-Z](?:[A-Z_]|\\dx?)*\\b';
  const definition_123 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:as|assert(?=\\s*\\{)|export|from(?=\\s*(?:[\'"]|\$))|import)\\b';
  const definition_125 = '((?:^|\\})\\s*)catch\\b';
  const definition_127 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:await|break|case|continue|default|do|else|finally(?=\\s*(?:\\{|\$))|for|if|return|switch|throw|try|while|yield)\\b';
  const definition_128 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:async(?=\\s*(?:function\\b|\\(|[\$\\w\\xA0-\\uFFFF]|\$))|class|const|debugger|delete|enum|extends|function|(?:get|set)(?=\\s*(?:[#\\[\$\\w\\xA0-\\uFFFF]|\$))|implements|in|instanceof|interface|let|new|null|of|package|private|protected|public|static|super|this|typeof|undefined|var|void|with)\\b';
  const definition_66 =
      '\\b(?:abstract|declare|is|keyof|out|readonly|require|satisfies)\\b';
  const definition_67 =
      '\\b(?:asserts|infer|interface|module|namespace|type)\\b(?=\\s*(?:[{_\$a-zA-Z\\xA0-\\uFFFF]|\$))';
  const definition_68 = '\\btype\\b(?=\\s*(?:[\\{*]|\$))';
  const definition_19 = '\\b(?:false|true)\\b';
  const definition_20 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*(?:\\.\\s*(?:apply|bind|call)\\s*)?\\()';
  const definition_69 =
      '(^|[^\\w\$])(?:NaN|Infinity|0[bB][01]+(?:_[01]+)*n?|0[oO][0-7]+(?:_[0-7]+)*n?|0[xX][\\dA-Fa-f]+(?:_[\\dA-Fa-f]+)*n?|\\d+(?:_\\d+)*n|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[Ee][+-]?\\d+(?:_\\d+)*)?)(?![\\w\$])';
  const definition_22 =
      '--|\\+\\+|\\*\\*=?|=>|&&=?|\\|\\|=?|[!=]==|<<=?|>>>?=?|[-+*/%&|^!=<>]=?|\\.{3}|\\?\\?=?|\\?\\.?|[~:]';
  const definition_23 = '[{}[\\];(),.:]';
  const definition_27 =
      '\\b(?:Array|Function|Promise|any|boolean|console|never|number|string|symbol|unknown)\\b';
  const definition_70 = '@[\$\\w\\xA0-\\uFFFF]+';
  const definition_184 = '^@';
  const definition_130 = '^[\\s\\S]+';
  const definition_72 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*\\s*<(?:[^<>]|<(?:[^<>]|<[^<>]*>)*>)*>(?=\\s*\\()';
  const definition_131 =
      '^#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*';
  const definition_186 = '<[\\s\\S]+';
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_74),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_75),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_30),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_31, caseSensitive: false),
    greedy: true,
    inside: definition_32,
    global: true,
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_133),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_134),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_33, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_34,
    global: true,
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_37, caseSensitive: false),
    inside: definition_135,
  );
  final definition_188 = GrammarToken(
    pattern: RegExp(definition_210, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_82 = GrammarToken(
    pattern: RegExp(definition_136),
    inside: 'css',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_35, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_36,
    global: true,
  );
  final definition_83 = GrammarToken(
    pattern: RegExp(definition_37, caseSensitive: false),
    inside: definition_138,
  );
  final definition_190 = GrammarToken(
    pattern: RegExp(definition_210, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_84 = GrammarToken(
    pattern: RegExp(definition_136),
    inside: 'javascript',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_37, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_38),
    greedy: true,
    inside: definition_39,
    lookbehind: true,
    global: true,
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_140),
    lookbehind: true,
    inside: definition_141,
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_142),
    aliases: ['language-javascript'],
    inside: definition_144,
  );
  final definition_193 = GrammarToken(
    pattern: RegExp(definition_211),
    aliases: ['punctuation'],
  );
  final definition_145 = GrammarToken(
    pattern: RegExp(definition_194, caseSensitive: false),
    lookbehind: true,
    inside: definition_195,
  );
  final definition_214 = GrammarToken(
    pattern: RegExp(definition_228),
    inside: definition_229,
  );
  final definition_241 = GrammarToken(
    pattern: RegExp(definition_251),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_253 = GrammarToken(
    pattern: RegExp(definition_231),
    aliases: ['attr-equals'],
  );
  final definition_146 = GrammarToken(
    pattern: RegExp(definition_196, caseSensitive: false),
    lookbehind: true,
    inside: definition_197,
  );
  final definition_215 = GrammarToken(
    pattern: RegExp(definition_228),
    inside: definition_230,
  );
  final definition_243 = GrammarToken(
    pattern: RegExp(definition_251),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_256 = GrammarToken(
    pattern: RegExp(definition_231),
    aliases: ['attr-equals'],
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_147),
    inside: definition_148,
  );
  final definition_216 = GrammarToken(
    pattern: RegExp(definition_231),
    aliases: ['attr-equals'],
  );
  final definition_217 = GrammarToken(
    pattern: RegExp(definition_233),
    lookbehind: true,
  );
  final definition_218 = GrammarToken(
    pattern: RegExp(definition_93, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_90 = GrammarToken(
    pattern: RegExp(definition_149),
    inside: definition_0,
  );
  final definition_91 = GrammarToken(
    pattern: RegExp(definition_150),
    inside: definition_151,
  );
  final definition_152 = GrammarToken(
    pattern: RegExp(definition_74),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_153 = GrammarToken(
    pattern: RegExp(definition_75),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_93, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_42),
    greedy: true,
    inside: 'jsdoc',
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_44),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_95),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_97,
    global: true,
  );
  final definition_154 = GrammarToken(
    pattern: RegExp(definition_200),
    aliases: ['string'],
  );
  final definition_155 = GrammarToken(
    pattern: RegExp(definition_136),
    inside: definition_202,
  );
  final definition_219 = GrammarToken(
    pattern: RegExp(definition_208),
    lookbehind: true,
    inside: definition_234,
  );
  final definition_245 = GrammarToken(
    pattern: RegExp(definition_240),
    aliases: ['punctuation'],
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_98),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_99,
    global: true,
  );
  final definition_156 = GrammarToken(
    pattern: RegExp(definition_200),
    aliases: ['string'],
  );
  final definition_157 = GrammarToken(
    pattern: RegExp(definition_136),
    inside: definition_203,
  );
  final definition_221 = GrammarToken(
    pattern: RegExp(definition_208),
    lookbehind: true,
    inside: definition_235,
  );
  final definition_246 = GrammarToken(
    pattern: RegExp(definition_240),
    aliases: ['punctuation'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_100),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_101,
    global: true,
  );
  final definition_158 = GrammarToken(
    pattern: RegExp(definition_200),
    aliases: ['string'],
  );
  final definition_159 = GrammarToken(
    pattern: RegExp(definition_136),
    inside: definition_204,
  );
  final definition_222 = GrammarToken(
    pattern: RegExp(definition_208),
    lookbehind: true,
    inside: definition_236,
  );
  final definition_247 = GrammarToken(
    pattern: RegExp(definition_240),
    aliases: ['punctuation'],
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_102),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_103,
    global: true,
  );
  final definition_160 = GrammarToken(
    pattern: RegExp(definition_200),
    aliases: ['string'],
  );
  final definition_161 = GrammarToken(
    pattern: RegExp(definition_136),
    inside: definition_205,
  );
  final definition_223 = GrammarToken(
    pattern: RegExp(definition_208),
    lookbehind: true,
    inside: definition_237,
  );
  final definition_248 = GrammarToken(
    pattern: RegExp(definition_240),
    aliases: ['punctuation'],
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_104),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_105,
    global: true,
  );
  final definition_162 = GrammarToken(
    pattern: RegExp(definition_200),
    aliases: ['string'],
  );
  final definition_163 = GrammarToken(
    pattern: RegExp(definition_136),
    inside: definition_206,
  );
  final definition_224 = GrammarToken(
    pattern: RegExp(definition_208),
    lookbehind: true,
    inside: definition_238,
  );
  final definition_249 = GrammarToken(
    pattern: RegExp(definition_240),
    aliases: ['punctuation'],
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_106),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_107,
    global: true,
  );
  final definition_164 = GrammarToken(
    pattern: RegExp(definition_200),
    aliases: ['string'],
  );
  final definition_165 = GrammarToken(
    pattern: RegExp(definition_136),
    inside: definition_207,
  );
  final definition_225 = GrammarToken(
    pattern: RegExp(definition_208),
    lookbehind: true,
    inside: definition_239,
  );
  final definition_250 = GrammarToken(
    pattern: RegExp(definition_240),
    aliases: ['punctuation'],
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_108),
    greedy: true,
    inside: definition_109,
    global: true,
  );
  final definition_166 = GrammarToken(
    pattern: RegExp(definition_200),
    aliases: ['string'],
  );
  final definition_167 = GrammarToken(
    pattern: RegExp(definition_208),
    lookbehind: true,
    inside: definition_209,
  );
  final definition_226 = GrammarToken(
    pattern: RegExp(definition_240),
    aliases: ['punctuation'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_53, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_55),
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_56),
    lookbehind: true,
    greedy: true,
    inside: definition_57,
    global: true,
  );
  final definition_110 = GrammarToken(
    pattern: RegExp(definition_42),
    greedy: true,
    inside: 'jsdoc',
    global: true,
  );
  final definition_168 = GrammarToken(
    pattern: RegExp(definition_74),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_169 = GrammarToken(
    pattern: RegExp(definition_75),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_112 = GrammarToken(
    pattern: RegExp(definition_44),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_170 = GrammarToken(
    pattern: RegExp(definition_95),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_97,
    global: true,
  );
  final definition_171 = GrammarToken(
    pattern: RegExp(definition_98),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_99,
    global: true,
  );
  final definition_172 = GrammarToken(
    pattern: RegExp(definition_100),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_101,
    global: true,
  );
  final definition_173 = GrammarToken(
    pattern: RegExp(definition_102),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_103,
    global: true,
  );
  final definition_174 = GrammarToken(
    pattern: RegExp(definition_104),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_105,
    global: true,
  );
  final definition_175 = GrammarToken(
    pattern: RegExp(definition_106),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_107,
    global: true,
  );
  final definition_176 = GrammarToken(
    pattern: RegExp(definition_108),
    greedy: true,
    inside: definition_109,
    global: true,
  );
  final definition_114 = GrammarToken(
    pattern: RegExp(definition_53, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_115 = GrammarToken(
    pattern: RegExp(definition_55),
    greedy: true,
    global: true,
  );
  final definition_116 = GrammarToken(
    pattern: RegExp(definition_58),
    lookbehind: true,
    greedy: true,
    inside: definition_59,
    global: true,
  );
  final definition_120 = GrammarToken(
    pattern: RegExp(definition_181),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  final definition_117 = GrammarToken(
    pattern: RegExp(definition_60),
    aliases: ['function'],
  );
  final definition_177 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    aliases: ['module'],
  );
  final definition_178 = GrammarToken(
    pattern: RegExp(definition_125),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_179 = GrammarToken(
    pattern: RegExp(definition_127),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_180 = GrammarToken(
    pattern: RegExp(definition_128),
    lookbehind: true,
  );
  final definition_119 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_58),
    lookbehind: true,
    greedy: true,
    inside: definition_59,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_60),
    aliases: ['function'],
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    aliases: ['module'],
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_125),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_127),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_128),
    lookbehind: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_70),
    inside: definition_71,
  );
  final definition_129 = GrammarToken(
    pattern: RegExp(definition_184),
    aliases: ['operator'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_72),
    greedy: true,
    inside: definition_73,
    global: true,
  );
  final definition_132 = GrammarToken(
    pattern: RegExp(definition_186),
    aliases: ['class-name'],
    inside: definition_57,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
  );
  definition_144.rest = definition_0;
  definition_235.rest = definition_227;
  definition_236.rest = definition_227;
  definition_237.rest = definition_227;
  definition_238.rest = definition_227;
  definition_239.rest = definition_227;
  definition_209.rest = definition_227;
  definition_234.rest = definition_227;
  definition_203.tokenize = embeddedIn('html');
  definition_204.tokenize = embeddedIn('svg');
  definition_205.tokenize = embeddedIn('markdown');
  definition_206.tokenize = embeddedIn('graphql');
  definition_207.tokenize = embeddedIn('sql');
  definition_202.tokenize = embeddedIn('css');
  definition_0.tokenize = customTokenizer_1;
  definition_32.addAllTokens({
    'internal-subset': [definition_76],
    'string': [definition_77],
    'punctuation': [GrammarToken(pattern: RegExp(definition_78))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_79, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_80))],
  });
  definition_135.addAllTokens({
    'language-css': [definition_188],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_189, caseSensitive: false))
    ],
  });
  definition_34.addAllTokens({
    'included-cdata': [definition_81],
    'language-css': [definition_82],
  });
  definition_138.addAllTokens({
    'language-javascript': [definition_190],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_189, caseSensitive: false))
    ],
  });
  definition_36.addAllTokens({
    'included-cdata': [definition_83],
    'language-javascript': [definition_84],
  });
  definition_141.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_191))],
    'class-name': [GrammarToken(pattern: RegExp(definition_192))],
  });
  definition_144.addAllTokens({
    'script-punctuation': [definition_193],
  });
  definition_229.addAllTokens({
    'value': [definition_241],
    'punctuation': [
      definition_253,
      GrammarToken(pattern: RegExp(definition_254)),
    ],
  });
  definition_195.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_213))],
    'attr-value': [definition_214],
  });
  definition_230.addAllTokens({
    'value': [definition_243],
    'punctuation': [
      definition_256,
      GrammarToken(pattern: RegExp(definition_254)),
    ],
  });
  definition_197.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_213))],
    'attr-value': [definition_215],
  });
  definition_148.addAllTokens({
    'punctuation': [
      definition_216,
      definition_217,
    ],
    'entity': [
      definition_218,
      GrammarToken(pattern: RegExp(definition_41, caseSensitive: false)),
    ],
  });
  definition_151.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_191))],
  });
  definition_39.addAllTokens({
    'tag': [definition_85],
    'script': [definition_86],
    'special-attr': [
      definition_145,
      definition_146,
    ],
    'attr-value': [definition_88],
    'punctuation': [GrammarToken(pattern: RegExp(definition_89))],
    'spread': [definition_90],
    'attr-name': [definition_91],
    'comment': [
      definition_152,
      definition_153,
    ],
  });
  definition_235.addAllTokens({
    'interpolation-punctuation': [definition_246],
  });
  definition_203.addAllTokens({
    'interpolation': [definition_221],
  });
  definition_99.addAllTokens({
    'template-punctuation': [definition_156],
    'html': [definition_157],
  });
  definition_236.addAllTokens({
    'interpolation-punctuation': [definition_247],
  });
  definition_204.addAllTokens({
    'interpolation': [definition_222],
  });
  definition_101.addAllTokens({
    'template-punctuation': [definition_158],
    'svg': [definition_159],
  });
  definition_237.addAllTokens({
    'interpolation-punctuation': [definition_248],
  });
  definition_205.addAllTokens({
    'interpolation': [definition_223],
  });
  definition_103.addAllTokens({
    'template-punctuation': [definition_160],
    'markdown': [definition_161],
  });
  definition_238.addAllTokens({
    'interpolation-punctuation': [definition_249],
  });
  definition_206.addAllTokens({
    'interpolation': [definition_224],
  });
  definition_105.addAllTokens({
    'template-punctuation': [definition_162],
    'graphql': [definition_163],
  });
  definition_239.addAllTokens({
    'interpolation-punctuation': [definition_250],
  });
  definition_207.addAllTokens({
    'interpolation': [definition_225],
  });
  definition_107.addAllTokens({
    'template-punctuation': [definition_164],
    'sql': [definition_165],
  });
  definition_209.addAllTokens({
    'interpolation-punctuation': [definition_226],
  });
  definition_109.addAllTokens({
    'template-punctuation': [definition_166],
    'interpolation': [definition_167],
    'string': [GrammarToken(pattern: RegExp(definition_136))],
  });
  definition_59.addAllTokens({
    'regex-source': [definition_120],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_121))],
    'regex-flags': [GrammarToken(pattern: RegExp(definition_122))],
  });
  definition_57.addAllTokens({
    'doc-comment': [definition_110],
    'comment': [
      definition_168,
      definition_169,
    ],
    'hashbang': [definition_112],
    'template-string': [
      definition_170,
      definition_171,
      definition_172,
      definition_173,
      definition_174,
      definition_175,
      definition_176,
    ],
    'string-property': [definition_114],
    'string': [definition_115],
    'regex': [definition_116],
    'function-variable': [definition_117],
    'constant': [GrammarToken(pattern: RegExp(definition_17))],
    'keyword': [
      definition_177,
      definition_178,
      definition_179,
      definition_180,
      GrammarToken(pattern: RegExp(definition_66)),
      GrammarToken(pattern: RegExp(definition_67)),
      GrammarToken(pattern: RegExp(definition_68)),
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_19))],
    'function': [GrammarToken(pattern: RegExp(definition_20))],
    'number': [definition_119],
    'operator': [GrammarToken(pattern: RegExp(definition_22))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_23))],
    'builtin': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_71.addAllTokens({
    'at': [definition_129],
    'function': [GrammarToken(pattern: RegExp(definition_130))],
  });
  definition_73.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_131))],
    'generic': [definition_132],
  });
  definition_227.addAllTokens({
    'doc-comment': [definition_9],
    'comment': [
      definition_28,
      definition_29,
    ],
    'hashbang': [definition_10],
    'template-string': [
      definition_46,
      definition_47,
      definition_48,
      definition_49,
      definition_50,
      definition_51,
      definition_52,
    ],
    'string-property': [definition_12],
    'string': [definition_13],
    'class-name': [definition_14],
    'regex': [definition_15],
    'function-variable': [definition_16],
    'constant': [GrammarToken(pattern: RegExp(definition_17))],
    'keyword': [
      definition_62,
      definition_63,
      definition_64,
      definition_65,
      GrammarToken(pattern: RegExp(definition_66)),
      GrammarToken(pattern: RegExp(definition_67)),
      GrammarToken(pattern: RegExp(definition_68)),
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_19))],
    'decorator': [definition_25],
    'generic-function': [definition_26],
    'function': [GrammarToken(pattern: RegExp(definition_20))],
    'number': [definition_21],
    'operator': [GrammarToken(pattern: RegExp(definition_22))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_23))],
    'builtin': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_234.addAllTokens({
    'interpolation-punctuation': [definition_245],
  });
  definition_202.addAllTokens({
    'interpolation': [definition_219],
  });
  definition_97.addAllTokens({
    'template-punctuation': [definition_154],
    'css': [definition_155],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_28,
      definition_29,
    ],
    'prolog': [definition_2],
    'doctype': [definition_3],
    'style': [definition_4],
    'script': [definition_5],
    'cdata': [definition_6],
    'tag': [definition_7],
    'entity': [
      definition_40,
      GrammarToken(pattern: RegExp(definition_41, caseSensitive: false)),
    ],
    'doc-comment': [definition_9],
    'hashbang': [definition_10],
    'template-string': [
      definition_46,
      definition_47,
      definition_48,
      definition_49,
      definition_50,
      definition_51,
      definition_52,
    ],
    'string-property': [definition_12],
    'string': [definition_13],
    'class-name': [definition_14],
    'regex': [definition_15],
    'function-variable': [definition_16],
    'constant': [GrammarToken(pattern: RegExp(definition_17))],
    'keyword': [
      definition_62,
      definition_63,
      definition_64,
      definition_65,
      GrammarToken(pattern: RegExp(definition_66)),
      GrammarToken(pattern: RegExp(definition_67)),
      GrammarToken(pattern: RegExp(definition_68)),
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_19))],
    'function': [GrammarToken(pattern: RegExp(definition_20))],
    'number': [definition_21],
    'operator': [GrammarToken(pattern: RegExp(definition_22))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_23))],
    'decorator': [definition_25],
    'generic-function': [definition_26],
    'builtin': [GrammarToken(pattern: RegExp(definition_27))],
  });

  return LanguageProto(
    'tsx',
    definition_0,
    requiredDependencies: [
      'jsx',
      'markup',
      'xml',
      'javascript',
      'clike',
      'typescript'
    ],
  );
}

final languageTsx = _create();
