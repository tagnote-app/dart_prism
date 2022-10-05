// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  final definition_15 = Grammar();
  final definition_53 = Grammar();
  final definition_17 = Grammar();
  final definition_56 = Grammar();
  final definition_20 = Grammar();
  final definition_59 = Grammar();
  final definition_92 = Grammar();
  final definition_159 = Grammar();
  final definition_94 = Grammar();
  final definition_160 = Grammar();
  final definition_63 = Grammar();
  final definition_65 = Grammar();
  final definition_24 = Grammar();
  final definition_67 = Grammar();
  final definition_135 = Grammar();
  final definition_69 = Grammar();
  final definition_71 = Grammar();
  final definition_73 = Grammar();
  final definition_139 = Grammar();
  final definition_77 = Grammar();
  final definition_79 = Grammar();
  final definition_82 = Grammar();
  final definition_84 = Grammar();
  final definition_86 = Grammar();
  final definition_75 = Grammar();
  const definition_10 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_11 = '<\\?[\\s\\S]+?\\?>';
  const definition_12 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_51 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_52 = '"[^"]*"|\'[^\']*\'';
  const definition_27 = '^<!|>\$|[[\\]]';
  const definition_28 = '^DOCTYPE';
  const definition_29 = '[^\\s<>\'"]+';
  const definition_14 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_18 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_127 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_88 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_54 = '[\\s\\S]+';
  const definition_16 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_19 =
      '<\\/?(?!\\d)[a-z0-9]+(?:\\s+[^\\s>\\/=]+(?:=(?:("|\')(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1|[^\\s\'">=]+))?)*\\s*\\/?>';
  const definition_58 = '^(<\\/?)[^\\s>\\/]+';
  const definition_90 = '^[^\\s>\\/:]+:';
  const definition_91 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_128 = '^[^\\s=]+';
  const definition_158 = '=[\\s\\S]+';
  const definition_175 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_161 = '^=';
  const definition_178 = '"|\'';
  const definition_93 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_62 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_163 = '^(\\s*)["\']|["\']\$';
  const definition_39 = '&[\\da-z]{1,8};';
  const definition_22 = '&#x?[\\da-f]{1,8};';
  const definition_37 = '^<\\/?|\\/?>\$';
  const definition_64 = '[^\\s>\\/]+';
  const definition_23 = '(^|\\r|\\n)\\S[\\s\\S]*?(?=\$|\\r?\\n\\r?\\n|\\r\\r)';
  const definition_66 =
      '^[a-z]\\w*(?:(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})|(?:\\)|\\((?![^|()\\n]+\\)))|[<>=])*\\.';
  const definition_134 =
      '(^[a-z]\\w*)(?:(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})|(?:\\)|\\((?![^|()\\n]+\\)))|[<>=])+(?=\\.)';
  const definition_172 = '\\{[^{}]+\\}';
  const definition_157 = '(\\()[^()]+(?=\\))';
  const definition_174 = '(\\[)[^\\[\\]]+(?=\\])';
  const definition_167 = '[\\\\\\/]\\d+|\\S';
  const definition_98 = '^[a-z]\\w*';
  const definition_99 = '\\.\$';
  const definition_68 =
      '^[*#]+(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*\\s+\\S.*';
  const definition_136 =
      '(^[*#]+)(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})+';
  const definition_101 = '^[*#]+';
  const definition_70 =
      '^(?:(?:(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})|(?:\\)|\\((?![^|()\\n]+\\)))|[<>=^~])+\\.\\s*)?(?:\\|(?:(?:(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})|(?:\\)|\\((?![^|()\\n]+\\)))|[<>=^~_]|[\\\\/]\\d+)+\\.|(?!(?:(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})|(?:\\)|\\((?![^|()\\n]+\\)))|[<>=^~_]|[\\\\/]\\d+)+\\.))[^|]*)+\\|';
  const definition_137 =
      '(^|\\|(?:\\r?\\n|\\r)?)(?:(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})|(?:\\)|\\((?![^|()\\n]+\\)))|[<>=^~_]|[\\\\/]\\d+)+(?=\\.)';
  const definition_103 = '\\||^\\.';
  const definition_72 =
      '(^|[^a-zA-Z\\d])(\\*\\*|__|\\?\\?|[*_%@+\\-^~])(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*.+?\\2(?![a-zA-Z\\d])';
  const definition_138 =
      '(^(\\*\\*?)(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*).+?(?=\\2)';
  const definition_76 =
      '"(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*[^"]+":.+?(?=[^\\w/]?(?:\\s|\$))';
  const definition_151 =
      '(^"(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*)[^"]+(?=")';
  const definition_152 =
      '(^")(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})+';
  const definition_153 = '(:).+';
  const definition_119 = '[":]';
  const definition_78 =
      '!(?:(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})|(?:\\)|\\((?![^|()\\n]+\\)))|[<>=])*(?![<>=])[^!\\s()]+(?:\\([^)]+\\))?!(?::.+?(?=[^\\w/]?(?:\\s|\$)))?';
  const definition_154 =
      '(^!(?:(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})|(?:\\)|\\((?![^|()\\n]+\\)))|[<>=])*)(?![<>=])[^!\\s()]+(?:\\([^)]+\\))?(?=!)';
  const definition_156 =
      '(^!)(?:(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})|(?:\\)|\\((?![^|()\\n]+\\)))|[<>=])+';
  const definition_123 = '[!:]';
  const definition_80 = '\\b\\[\\d+\\]';
  const definition_124 = '\\[|\\]';
  const definition_83 = '\\b[A-Z\\d]+\\([^)]+\\)';
  const definition_126 = '[()]';
  const definition_85 = '\\b\\((?:C|R|TM)\\)';
  const definition_140 =
      '(^(__?)(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*).+?(?=\\2)';
  const definition_141 =
      '(^\\?\\?(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*).+?(?=\\?\\?)';
  const definition_143 =
      '(^@(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*).+?(?=@)';
  const definition_145 =
      '(^\\+(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*).+?(?=\\+)';
  const definition_146 =
      '(^-(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*).+?(?=-)';
  const definition_147 =
      '(^%(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})*).+?(?=%)';
  const definition_148 =
      '(^\\*\\*|__|\\?\\?|[*_%@+\\-^~])(?:\\([^|()\\n]+\\)|\\[[^\\]\\n]+\\]|\\{[^}\\n]+\\})+';
  const definition_112 = '[*_%?@+\\-^~]+';
  const definition_74 = '^\\[[^\\]]+\\]\\S+\$';
  const definition_149 = '(^\\[)[^\\]]+(?=\\])';
  const definition_150 = '(^\\])\\S+\$';
  const definition_115 = '[\\[\\]]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false),
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_52),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_15,
    global: true,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    inside: definition_53,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_127, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_54),
    inside: 'css',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_17,
    global: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    inside: definition_56,
  );
  final definition_89 = GrammarToken(
    pattern: RegExp(definition_127, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_54),
    inside: 'javascript',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_58),
    lookbehind: true,
    inside: definition_59,
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_91, caseSensitive: false),
    lookbehind: true,
    inside: definition_92,
  );
  final definition_129 = GrammarToken(
    pattern: RegExp(definition_158),
    inside: definition_159,
  );
  final definition_168 = GrammarToken(
    pattern: RegExp(definition_175),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_177 = GrammarToken(
    pattern: RegExp(definition_161),
    aliases: ['attr-equals'],
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_93, caseSensitive: false),
    lookbehind: true,
    inside: definition_94,
  );
  final definition_130 = GrammarToken(
    pattern: RegExp(definition_158),
    inside: definition_160,
  );
  final definition_170 = GrammarToken(
    pattern: RegExp(definition_175),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_180 = GrammarToken(
    pattern: RegExp(definition_161),
    aliases: ['attr-equals'],
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_62),
    inside: definition_63,
  );
  final definition_131 = GrammarToken(
    pattern: RegExp(definition_161),
    aliases: ['attr-equals'],
  );
  final definition_132 = GrammarToken(
    pattern: RegExp(definition_163),
    lookbehind: true,
  );
  final definition_133 = GrammarToken(
    pattern: RegExp(definition_39, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_64),
    inside: definition_65,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_39, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    inside: definition_24,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_66),
    inside: definition_67,
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_134),
    lookbehind: true,
    inside: definition_135,
  );
  final definition_164 = GrammarToken(
    pattern: RegExp(definition_172),
    inside: 'css',
  );
  final definition_165 = GrammarToken(
    pattern: RegExp(definition_157),
    lookbehind: true,
    aliases: ['attr-value'],
  );
  final definition_166 = GrammarToken(
    pattern: RegExp(definition_174),
    lookbehind: true,
    aliases: ['attr-value'],
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_68, multiLine: true),
    inside: definition_69,
  );
  final definition_100 = GrammarToken(
    pattern: RegExp(definition_136),
    lookbehind: true,
    inside: definition_135,
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_70, multiLine: true),
    inside: definition_71,
  );
  final definition_102 = GrammarToken(
    pattern: RegExp(definition_137),
    lookbehind: true,
    inside: definition_135,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_72),
    lookbehind: true,
    inside: definition_73,
  );
  final definition_104 = GrammarToken(
    pattern: RegExp(definition_138),
    lookbehind: true,
    inside: definition_139,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_76),
    inside: definition_77,
  );
  final definition_116 = GrammarToken(
    pattern: RegExp(definition_151),
    lookbehind: true,
  );
  final definition_117 = GrammarToken(
    pattern: RegExp(definition_152),
    lookbehind: true,
    inside: definition_135,
  );
  final definition_118 = GrammarToken(
    pattern: RegExp(definition_153),
    lookbehind: true,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_78),
    inside: definition_79,
  );
  final definition_120 = GrammarToken(
    pattern: RegExp(definition_154),
    lookbehind: true,
    aliases: ['url'],
  );
  final definition_121 = GrammarToken(
    pattern: RegExp(definition_156),
    lookbehind: true,
    inside: definition_135,
  );
  final definition_122 = GrammarToken(
    pattern: RegExp(definition_153),
    lookbehind: true,
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['comment'],
    inside: definition_82,
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_83),
    inside: definition_84,
  );
  final definition_125 = GrammarToken(
    pattern: RegExp(definition_157),
    lookbehind: true,
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_85),
    aliases: ['comment'],
    inside: definition_86,
  );
  final definition_105 = GrammarToken(
    pattern: RegExp(definition_140),
    lookbehind: true,
    inside: definition_139,
  );
  final definition_106 = GrammarToken(
    pattern: RegExp(definition_141),
    lookbehind: true,
    aliases: ['string'],
  );
  final definition_107 = GrammarToken(
    pattern: RegExp(definition_143),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_108 = GrammarToken(
    pattern: RegExp(definition_145),
    lookbehind: true,
    inside: definition_139,
  );
  final definition_109 = GrammarToken(
    pattern: RegExp(definition_146),
    lookbehind: true,
    inside: definition_139,
  );
  final definition_110 = GrammarToken(
    pattern: RegExp(definition_147),
    lookbehind: true,
    inside: definition_139,
  );
  final definition_111 = GrammarToken(
    pattern: RegExp(definition_148),
    lookbehind: true,
    inside: definition_135,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_74, multiLine: true),
    inside: definition_75,
  );
  final definition_113 = GrammarToken(
    pattern: RegExp(definition_149),
    lookbehind: true,
  );
  final definition_114 = GrammarToken(
    pattern: RegExp(definition_150),
    lookbehind: true,
  );
  definition_13.addAllTokens({
    'internal-subset': [definition_25],
    'string': [definition_26],
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_28, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_29))],
  });
  definition_53.addAllTokens({
    'language-css': [definition_87],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_88, caseSensitive: false))
    ],
  });
  definition_15.addAllTokens({
    'included-cdata': [definition_30],
    'language-css': [definition_31],
  });
  definition_56.addAllTokens({
    'language-javascript': [definition_89],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_88, caseSensitive: false))
    ],
  });
  definition_17.addAllTokens({
    'included-cdata': [definition_32],
    'language-javascript': [definition_33],
  });
  definition_59.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_90))],
  });
  definition_159.addAllTokens({
    'value': [definition_168],
    'punctuation': [
      definition_177,
      GrammarToken(pattern: RegExp(definition_178)),
    ],
  });
  definition_92.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_128))],
    'attr-value': [definition_129],
  });
  definition_160.addAllTokens({
    'value': [definition_170],
    'punctuation': [
      definition_180,
      GrammarToken(pattern: RegExp(definition_178)),
    ],
  });
  definition_94.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_128))],
    'attr-value': [definition_130],
  });
  definition_63.addAllTokens({
    'punctuation': [
      definition_131,
      definition_132,
    ],
    'entity': [
      definition_133,
      GrammarToken(pattern: RegExp(definition_22, caseSensitive: false)),
    ],
  });
  definition_65.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_90))],
  });
  definition_20.addAllTokens({
    'tag': [definition_34],
    'special-attr': [
      definition_60,
      definition_61,
    ],
    'attr-value': [definition_36],
    'punctuation': [GrammarToken(pattern: RegExp(definition_37))],
    'attr-name': [definition_38],
  });
  definition_135.addAllTokens({
    'css': [definition_164],
    'class-id': [definition_165],
    'lang': [definition_166],
    'punctuation': [GrammarToken(pattern: RegExp(definition_167))],
  });
  definition_67.addAllTokens({
    'modifier': [definition_97],
    'tag': [GrammarToken(pattern: RegExp(definition_98))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_99))],
  });
  definition_69.addAllTokens({
    'modifier': [definition_100],
    'punctuation': [GrammarToken(pattern: RegExp(definition_101))],
  });
  definition_77.addAllTokens({
    'text': [definition_116],
    'modifier': [definition_117],
    'url': [definition_118],
    'punctuation': [GrammarToken(pattern: RegExp(definition_119))],
  });
  definition_79.addAllTokens({
    'source': [definition_120],
    'modifier': [definition_121],
    'url': [definition_122],
    'punctuation': [GrammarToken(pattern: RegExp(definition_123))],
  });
  definition_82.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_124))],
  });
  definition_84.addAllTokens({
    'comment': [definition_125],
    'punctuation': [GrammarToken(pattern: RegExp(definition_126))],
  });
  definition_86.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_126))],
  });
  definition_139.addAllTokens({
    'inline': [definition_44],
    'link': [definition_46],
    'image': [definition_47],
    'footnote': [definition_48],
    'acronym': [definition_49],
    'mark': [definition_50],
  });
  definition_73.addAllTokens({
    'bold': [definition_104],
    'italic': [definition_105],
    'cite': [definition_106],
    'code': [definition_107],
    'inserted': [definition_108],
    'deleted': [definition_109],
    'span': [definition_110],
    'modifier': [definition_111],
    'punctuation': [GrammarToken(pattern: RegExp(definition_112))],
  });
  definition_71.addAllTokens({
    'modifier': [definition_102],
    'punctuation': [GrammarToken(pattern: RegExp(definition_103))],
    'inline': [definition_44],
    'link': [definition_46],
    'image': [definition_47],
    'footnote': [definition_48],
    'acronym': [definition_49],
    'mark': [definition_50],
  });
  definition_75.addAllTokens({
    'string': [definition_113],
    'url': [definition_114],
    'punctuation': [GrammarToken(pattern: RegExp(definition_115))],
  });
  definition_24.addAllTokens({
    'block-tag': [definition_41],
    'list': [definition_42],
    'table': [definition_43],
    'inline': [definition_44],
    'link-ref': [definition_45],
    'link': [definition_46],
    'image': [definition_47],
    'footnote': [definition_48],
    'acronym': [definition_49],
    'mark': [definition_50],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'prolog': [definition_2],
    'doctype': [definition_3],
    'style': [definition_4],
    'script': [definition_5],
    'cdata': [definition_6],
    'tag': [definition_7],
    'entity': [
      definition_21,
      GrammarToken(pattern: RegExp(definition_22, caseSensitive: false)),
    ],
    'phrase': [definition_9],
  });

  return LanguageProto(
    'textile',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageTextile = _create();
