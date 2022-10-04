// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_24 = Grammar();
  final definition_28 = Grammar();
  final definition_109 = Grammar();
  final definition_111 = Grammar();
  final definition_113 = Grammar();
  final definition_68 = Grammar();
  final definition_71 = Grammar();
  final definition_73 = Grammar();
  final definition_36 = Grammar();
  final definition_39 = Grammar();
  final definition_122 = Grammar();
  final definition_47 = Grammar();
  final definition_128 = Grammar();
  final definition_41 = Grammar();
  final definition_124 = Grammar();
  final definition_43 = Grammar();
  final definition_126 = Grammar();
  final definition_50 = Grammar();
  final definition_52 = Grammar();
  final definition_134 = Grammar();
  final definition_54 = Grammar();
  final definition_137 = Grammar();
  final definition_57 = Grammar();
  final definition_140 = Grammar();
  final definition_159 = Grammar();
  final definition_174 = Grammar();
  final definition_161 = Grammar();
  final definition_175 = Grammar();
  final definition_144 = Grammar();
  final definition_146 = Grammar();
  const definition_22 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_23 =
      '(^(?:\\s*[\\r\\n])?)---(?!.)[\\s\\S]*?[\\r\\n]---(?!.)';
  const definition_60 = '^---|---\$';
  const definition_105 = '\\S+(?:\\s+\\S+)*';
  const definition_25 = '^>(?:[\\t ]*>)*';
  const definition_27 =
      '^\\|?(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+(?:\\|(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+)+\\|?(?:(?:\\n|\\r\\n?)|(?![\\s\\S]))\\|?[ \\t]*:?-{3,}:?[ \\t]*(?:\\|[ \\t]*:?-{3,}:?[ \\t]*)+\\|?(?:\\n|\\r\\n?)(?:\\|?(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+(?:\\|(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+)+\\|?(?:(?:\\n|\\r\\n?)|(?![\\s\\S])))*';
  const definition_108 =
      '^(\\|?(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+(?:\\|(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+)+\\|?(?:(?:\\n|\\r\\n?)|(?![\\s\\S]))\\|?[ \\t]*:?-{3,}:?[ \\t]*(?:\\|[ \\t]*:?-{3,}:?[ \\t]*)+\\|?(?:\\n|\\r\\n?))(?:\\|?(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+(?:\\|(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+)+\\|?(?:(?:\\n|\\r\\n?)|(?![\\s\\S])))*\$';
  const definition_164 =
      '(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+';
  const definition_149 = '\\|';
  const definition_110 =
      '^(\\|?(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+(?:\\|(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+)+\\|?(?:(?:\\n|\\r\\n?)|(?![\\s\\S])))\\|?[ \\t]*:?-{3,}:?[ \\t]*(?:\\|[ \\t]*:?-{3,}:?[ \\t]*)+\\|?(?:\\n|\\r\\n?)\$';
  const definition_150 = '\\||:?-{3,}:?';
  const definition_112 =
      '^\\|?(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+(?:\\|(?:\\\\.|``(?:[^`\\r\\n]|`(?!`))+``|`[^`\\r\\n]+`|[^\\\\|\\r\\n`])+)+\\|?(?:(?:\\n|\\r\\n?)|(?![\\s\\S]))\$';
  const definition_65 =
      '((?:^|\\n)[ \\t]*\\n|(?:^|\\r\\n?)[ \\t]*\\r\\n?)(?: {4}|\\t).+(?:(?:\\n|\\r\\n?)(?: {4}|\\t).+)*';
  const definition_67 = '^```[\\s\\S]*?^```\$';
  const definition_152 =
      '^(```.*(?:\\n|\\r\\n?))[\\s\\S]+?(?=(?:\\n|\\r\\n?)^```\$)';
  const definition_153 = '^(```).+';
  const definition_116 = '```';
  const definition_69 = '\\S.*(?:\\n|\\r\\n?)(?:==+|--+)(?=[ \\t]*\$)';
  const definition_118 = '==+\$|--+\$';
  const definition_72 = '(^\\s*)#.+';
  const definition_119 = '^#+|#+\$';
  const definition_33 = '(^\\s*)([*-])(?:[\\t ]*\\2){2,}(?=\\s*\$)';
  const definition_34 = '(^\\s*)(?:[*+-]|\\d+\\.)(?=[\\t ].)';
  const definition_35 =
      '!?\\[[^\\]]+\\]:[\\t ]+(?:\\S+|<(?:\\\\.|[^>\\\\])+>)(?:[\\t ]+(?:"(?:\\\\.|[^"\\\\])*"|\'(?:\\\\.|[^\'\\\\])*\'|\\((?:\\\\.|[^)\\\\])*\\)))?';
  const definition_120 = '^(!?\\[)[^\\]]+';
  const definition_75 =
      '(?:"(?:\\\\.|[^"\\\\])*"|\'(?:\\\\.|[^\'\\\\])*\'|\\((?:\\\\.|[^)\\\\])*\\))\$';
  const definition_76 = '^[\\[\\]!:]|[<>]';
  const definition_38 =
      '((?:^|[^\\\\])(?:\\\\{2})*)(?:\\b__(?:(?!_)(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n]))|_(?:(?!_)(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n])))+_)+__\\b|\\*\\*(?:(?!\\*)(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n]))|\\*(?:(?!\\*)(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n])))+\\*)+\\*\\*)';
  const definition_121 = '(^..)[\\s\\S]+(?=..\$)';
  const definition_46 =
      '((?:^|[^\\\\])(?:\\\\{2})*)(?:!?\\[(?:(?!\\])(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n])))+\\](?:\\([^\\s)]+(?:[\\t ]+"(?:\\\\.|[^"\\\\])*")?\\)|[ \\t]?\\[(?:(?!\\])(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n])))+\\]))';
  const definition_84 = '^!';
  const definition_127 = '(^\\[)[^\\]]+(?=\\])';
  const definition_40 =
      '((?:^|[^\\\\])(?:\\\\{2})*)(?:\\b_(?:(?!_)(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n]))|__(?:(?!_)(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n])))+__)+_\\b|\\*(?:(?!\\*)(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n]))|\\*\\*(?:(?!\\*)(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n])))+\\*\\*)+\\*)';
  const definition_123 = '(^.)[\\s\\S]+(?=.\$)';
  const definition_42 =
      '((?:^|[^\\\\])(?:\\\\{2})*)(?:(~~?)(?:(?!~)(?:\\\\.|[^\\\\\\n\\r]|(?:\\n|\\r\\n?)(?![\\r\\n])))+\\2)';
  const definition_125 = '(^~~?)[\\s\\S]+(?=\\1\$)';
  const definition_44 =
      '(^|[^\\\\`])(?:``[^`\\r\\n]+(?:`[^`\\r\\n]+)*``(?!`)|`[^`\\r\\n]+`(?!`))';
  const definition_82 = '~~?';
  const definition_80 = '[*_]';
  const definition_129 = '(^\\][ \\t]?\\[)[^\\]]+(?=\\]\$)';
  const definition_130 = '(^\\]\\()[^\\s)]+';
  const definition_131 = '(^[ \\t]+)"(?:\\\\.|[^"\\\\])*"(?=\\)\$)';
  const definition_78 = '\\*\\*|__';
  const definition_48 = '<\\?[\\s\\S]+?\\?>';
  const definition_49 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_132 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_133 = '"[^"]*"|\'[^\']*\'';
  const definition_91 = '^<!|>\$|[[\\]]';
  const definition_92 = '^DOCTYPE';
  const definition_93 = '[^\\s<>\'"]+';
  const definition_51 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_55 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_166 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_155 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_135 = '[\\s\\S]+';
  const definition_53 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_56 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_139 = '^(<\\/?)[^\\s>\\/]+';
  const definition_157 = '^[^\\s>\\/:]+:';
  const definition_158 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_167 = '^[^\\s=]+';
  const definition_173 = '=[\\s\\S]+';
  const definition_183 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_176 = '^=';
  const definition_186 = '"|\'';
  const definition_160 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_143 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_178 = '^(\\s*)["\']|["\']\$';
  const definition_103 = '&[\\da-z]{1,8};';
  const definition_59 = '&#x?[\\da-f]{1,8};';
  const definition_101 = '^<\\/?|\\/?>\$';
  const definition_145 = '[^\\s>\\/]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    greedy: true,
    inside: definition_24,
    global: true,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_105),
    aliases: ['yaml', 'language-yaml'],
    inside: 'yaml',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_25, multiLine: true),
    aliases: ['punctuation'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_27, multiLine: true),
    inside: definition_28,
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_108),
    lookbehind: true,
    inside: definition_109,
  );
  final definition_148 = GrammarToken(
    pattern: RegExp(definition_164),
    inside: 'markdown',
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_110),
    lookbehind: true,
    inside: definition_111,
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_112),
    inside: definition_113,
  );
  final definition_151 = GrammarToken(
    pattern: RegExp(definition_164),
    aliases: ['important'],
    inside: 'markdown',
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_65),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_67, multiLine: true),
    greedy: true,
    inside: definition_68,
    global: true,
  );
  final definition_114 = GrammarToken(
    pattern: RegExp(definition_152, multiLine: true),
    lookbehind: true,
  );
  final definition_115 = GrammarToken(
    pattern: RegExp(definition_153),
    lookbehind: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_69, multiLine: true),
    aliases: ['important'],
    inside: definition_71,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_72, multiLine: true),
    lookbehind: true,
    aliases: ['important'],
    inside: definition_73,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_33, multiLine: true),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_34, multiLine: true),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_35),
    inside: definition_36,
    aliases: ['url'],
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_120),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    greedy: true,
    inside: definition_39,
    global: true,
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_121),
    lookbehind: true,
    inside: definition_122,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_46),
    lookbehind: true,
    greedy: true,
    inside: definition_47,
    global: true,
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_127),
    lookbehind: true,
    inside: definition_128,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
    greedy: true,
    inside: definition_41,
    global: true,
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    inside: definition_124,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
    greedy: true,
    inside: definition_43,
    global: true,
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_125),
    lookbehind: true,
    inside: definition_126,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_44),
    lookbehind: true,
    greedy: true,
    aliases: ['code', 'keyword'],
    global: true,
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_129),
    lookbehind: true,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_130),
    lookbehind: true,
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_131),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_48),
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_49, caseSensitive: false),
    greedy: true,
    inside: definition_50,
    global: true,
  );
  final definition_89 = GrammarToken(
    pattern: RegExp(definition_132),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_90 = GrammarToken(
    pattern: RegExp(definition_133),
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_51, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_52,
    global: true,
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_55, caseSensitive: false),
    inside: definition_134,
  );
  final definition_154 = GrammarToken(
    pattern: RegExp(definition_166, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_95 = GrammarToken(
    pattern: RegExp(definition_135),
    inside: 'css',
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_53, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_54,
    global: true,
  );
  final definition_96 = GrammarToken(
    pattern: RegExp(definition_55, caseSensitive: false),
    inside: definition_137,
  );
  final definition_156 = GrammarToken(
    pattern: RegExp(definition_166, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_135),
    inside: 'javascript',
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_55, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_56),
    greedy: true,
    inside: definition_57,
    global: true,
  );
  final definition_98 = GrammarToken(
    pattern: RegExp(definition_139),
    lookbehind: true,
    inside: definition_140,
  );
  final definition_141 = GrammarToken(
    pattern: RegExp(definition_158, caseSensitive: false),
    lookbehind: true,
    inside: definition_159,
  );
  final definition_168 = GrammarToken(
    pattern: RegExp(definition_173),
    inside: definition_174,
  );
  final definition_179 = GrammarToken(
    pattern: RegExp(definition_183),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_185 = GrammarToken(
    pattern: RegExp(definition_176),
    aliases: ['attr-equals'],
  );
  final definition_142 = GrammarToken(
    pattern: RegExp(definition_160, caseSensitive: false),
    lookbehind: true,
    inside: definition_161,
  );
  final definition_169 = GrammarToken(
    pattern: RegExp(definition_173),
    inside: definition_175,
  );
  final definition_181 = GrammarToken(
    pattern: RegExp(definition_183),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_188 = GrammarToken(
    pattern: RegExp(definition_176),
    aliases: ['attr-equals'],
  );
  final definition_100 = GrammarToken(
    pattern: RegExp(definition_143),
    inside: definition_144,
  );
  final definition_170 = GrammarToken(
    pattern: RegExp(definition_176),
    aliases: ['attr-equals'],
  );
  final definition_171 = GrammarToken(
    pattern: RegExp(definition_178),
    lookbehind: true,
  );
  final definition_172 = GrammarToken(
    pattern: RegExp(definition_103, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_102 = GrammarToken(
    pattern: RegExp(definition_145),
    inside: definition_146,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_103, caseSensitive: false),
    aliases: ['named-entity'],
  );
  definition_68.tokenize = customTokenizer_2;
  definition_24.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_60))],
    'front-matter': [definition_61],
  });
  definition_109.addAllTokens({
    'table-data': [definition_148],
    'punctuation': [GrammarToken(pattern: RegExp(definition_149))],
  });
  definition_111.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_150))],
  });
  definition_113.addAllTokens({
    'table-header': [definition_151],
    'punctuation': [GrammarToken(pattern: RegExp(definition_149))],
  });
  definition_28.addAllTokens({
    'table-data-rows': [definition_62],
    'table-line': [definition_63],
    'table-header-row': [definition_64],
  });
  definition_68.addAllTokens({
    'code-block': [definition_114],
    'code-language': [definition_115],
    'punctuation': [GrammarToken(pattern: RegExp(definition_116))],
  });
  definition_71.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_118))],
  });
  definition_73.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_119))],
  });
  definition_36.addAllTokens({
    'variable': [definition_74],
    'string': [GrammarToken(pattern: RegExp(definition_75))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_76))],
  });
  definition_126.addAllTokens({
    'url': [definition_14],
    'bold': [definition_10],
    'italic': [definition_11],
    'code-snippet': [definition_13],
  });
  definition_43.addAllTokens({
    'content': [definition_81],
    'punctuation': [GrammarToken(pattern: RegExp(definition_82))],
  });
  definition_124.addAllTokens({
    'url': [definition_14],
    'bold': [definition_10],
    'strike': [definition_12],
    'code-snippet': [definition_13],
  });
  definition_41.addAllTokens({
    'content': [definition_79],
    'punctuation': [GrammarToken(pattern: RegExp(definition_80))],
  });
  definition_128.addAllTokens({
    'bold': [definition_10],
    'italic': [definition_11],
    'strike': [definition_12],
    'code-snippet': [definition_13],
  });
  definition_47.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_84))],
    'content': [definition_85],
    'variable': [definition_86],
    'url': [definition_87],
    'string': [definition_88],
  });
  definition_122.addAllTokens({
    'url': [definition_14],
    'italic': [definition_11],
    'strike': [definition_12],
    'code-snippet': [definition_13],
  });
  definition_39.addAllTokens({
    'content': [definition_77],
    'punctuation': [GrammarToken(pattern: RegExp(definition_78))],
  });
  definition_50.addAllTokens({
    'internal-subset': [definition_89],
    'string': [definition_90],
    'punctuation': [GrammarToken(pattern: RegExp(definition_91))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_92, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_93))],
  });
  definition_134.addAllTokens({
    'language-css': [definition_154],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_155, caseSensitive: false))
    ],
  });
  definition_52.addAllTokens({
    'included-cdata': [definition_94],
    'language-css': [definition_95],
  });
  definition_137.addAllTokens({
    'language-javascript': [definition_156],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_155, caseSensitive: false))
    ],
  });
  definition_54.addAllTokens({
    'included-cdata': [definition_96],
    'language-javascript': [definition_97],
  });
  definition_140.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_157))],
  });
  definition_174.addAllTokens({
    'value': [definition_179],
    'punctuation': [
      definition_185,
      GrammarToken(pattern: RegExp(definition_186)),
    ],
  });
  definition_159.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_167))],
    'attr-value': [definition_168],
  });
  definition_175.addAllTokens({
    'value': [definition_181],
    'punctuation': [
      definition_188,
      GrammarToken(pattern: RegExp(definition_186)),
    ],
  });
  definition_161.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_167))],
    'attr-value': [definition_169],
  });
  definition_144.addAllTokens({
    'punctuation': [
      definition_170,
      definition_171,
    ],
    'entity': [
      definition_172,
      GrammarToken(pattern: RegExp(definition_59, caseSensitive: false)),
    ],
  });
  definition_146.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_157))],
  });
  definition_57.addAllTokens({
    'tag': [definition_98],
    'special-attr': [
      definition_141,
      definition_142,
    ],
    'attr-value': [definition_100],
    'punctuation': [GrammarToken(pattern: RegExp(definition_101))],
    'attr-name': [definition_102],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'front-matter-block': [definition_2],
    'blockquote': [definition_3],
    'table': [definition_4],
    'code': [
      definition_29,
      definition_30,
    ],
    'title': [
      definition_31,
      definition_32,
    ],
    'hr': [definition_7],
    'list': [definition_8],
    'url-reference': [definition_9],
    'bold': [definition_10],
    'italic': [definition_11],
    'strike': [definition_12],
    'code-snippet': [definition_13],
    'url': [definition_14],
    'prolog': [definition_15],
    'doctype': [definition_16],
    'style': [definition_17],
    'script': [definition_18],
    'cdata': [definition_19],
    'tag': [definition_20],
    'entity': [
      definition_58,
      GrammarToken(pattern: RegExp(definition_59, caseSensitive: false)),
    ],
  });

  return LanguageProto(
    'markdown',
    definition_0,
    aliases: ['md'],
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageMarkdown = _create();
