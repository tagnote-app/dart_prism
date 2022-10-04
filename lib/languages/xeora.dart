// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_20 = Grammar();
  final definition_22 = Grammar();
  final definition_76 = Grammar();
  final definition_24 = Grammar();
  final definition_79 = Grammar();
  final definition_27 = Grammar();
  final definition_82 = Grammar();
  final definition_109 = Grammar();
  final definition_130 = Grammar();
  final definition_111 = Grammar();
  final definition_131 = Grammar();
  final definition_86 = Grammar();
  final definition_88 = Grammar();
  final definition_31 = Grammar();
  final definition_33 = Grammar();
  final definition_35 = Grammar();
  final definition_93 = Grammar();
  final definition_38 = Grammar();
  final definition_40 = Grammar();
  final definition_97 = Grammar();
  final definition_42 = Grammar();
  final definition_98 = Grammar();
  final definition_100 = Grammar();
  final definition_44 = Grammar();
  final definition_46 = Grammar();
  const definition_17 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_18 = '<\\?[\\s\\S]+?\\?>';
  const definition_19 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_74 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_75 = '"[^"]*"|\'[^\']*\'';
  const definition_49 = '^<!|>\$|[[\\]]';
  const definition_50 = '^DOCTYPE';
  const definition_51 = '[^\\s<>\'"]+';
  const definition_21 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_25 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_119 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_105 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_77 = '[\\s\\S]+';
  const definition_23 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_26 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_81 = '^(<\\/?)[^\\s>\\/]+';
  const definition_107 = '^[^\\s>\\/:]+:';
  const definition_108 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_120 = '^[^\\s=]+';
  const definition_129 = '=[\\s\\S]+';
  const definition_139 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_132 = '^=';
  const definition_142 = '"|\'';
  const definition_110 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_85 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_134 = '^(\\s*)["\']|["\']\$';
  const definition_61 = '&[\\da-z]{1,8};';
  const definition_29 = '&#x?[\\da-f]{1,8};';
  const definition_59 = '^<\\/?|\\/?>\$';
  const definition_87 = '[^\\s>\\/]+';
  const definition_30 = '\\\$(?:DomainContents|PageRenderDuration)\\\$';
  const definition_89 = '\\\$';
  const definition_32 = '\\\$@?(?:#+|[-+*~=^])?[\\w.]+\\\$';
  const definition_90 = '[\$.]';
  const definition_91 = '#+|[-+*~=^@]';
  const definition_34 =
      '\\\$F:[-\\w.]+\\?[-\\w.]+(?:,(?:(?:@[-#]*\\w+\\.[\\w+.]\\.*)*\\|)*(?:(?:[\\w+]|[-#*.~^]+[\\w+]|=\\S)(?:[^\$=]|=+[^=])*=*|(?:@[-#]*\\w+\\.[\\w+.]\\.*)+(?:(?:[\\w+]|[-#*~^][-#*.~^]*[\\w+]|=\\S)(?:[^\$=]|=+[^=])*=*)?)?)?\\\$';
  const definition_92 = '(?:[,|])@?(?:#+|[-+*~=^])?[\\w.]+';
  const definition_126 = '[,.|]';
  const definition_94 = '\\\$\\w:|[\$:?.,|]';
  const definition_37 =
      '\\\$XF:\\{[-\\w.]+\\?[-\\w.]+(?:,(?:(?:@[-#]*\\w+\\.[\\w+.]\\.*)*\\|)*(?:(?:[\\w+]|[-#*.~^]+[\\w+]|=\\S)(?:[^\$=]|=+[^=])*=*|(?:@[-#]*\\w+\\.[\\w+.]\\.*)+(?:(?:[\\w+]|[-#*~^][-#*.~^]*[\\w+]|=\\S)(?:[^\$=]|=+[^=])*=*)?)?)?\\}:XF\\\$';
  const definition_95 = '[\$:{}?.,|]';
  const definition_39 =
      '\\\$\\w(?:#\\d+\\+?)?(?:\\[[-\\w.]+\\])?:[-\\/\\w.]+\\\$';
  const definition_96 = '\\\$(?:\\w:|C(?:\\[|#\\d))?|[:{[\\]]';
  const definition_127 = '#\\d';
  const definition_41 =
      '\\\$\\w+:\\{|\\\$\\w(?:#\\d+\\+?)?(?:\\[[-\\w.]+\\])?:[-\\w.]+:\\{(?:![A-Z]+)?';
  const definition_99 = '![A-Z]+\$';
  const definition_128 = '!';
  const definition_43 = '\\}:[-\\w.]+:\\{';
  const definition_102 = '[:{}]';
  const definition_45 = '\\}:[-\\w.]+\\\$';
  const definition_103 = '[:{}\$]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_74),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_75),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_22,
    global: true,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    inside: definition_76,
  );
  final definition_104 = GrammarToken(
    pattern: RegExp(definition_119, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: 'css',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_23, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_24,
    global: true,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    inside: definition_79,
  );
  final definition_106 = GrammarToken(
    pattern: RegExp(definition_119, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: 'javascript',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    inside: definition_27,
    global: true,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_81),
    lookbehind: true,
    inside: definition_82,
  );
  final definition_83 = GrammarToken(
    pattern: RegExp(definition_108, caseSensitive: false),
    lookbehind: true,
    inside: definition_109,
  );
  final definition_121 = GrammarToken(
    pattern: RegExp(definition_129),
    inside: definition_130,
  );
  final definition_135 = GrammarToken(
    pattern: RegExp(definition_139),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_141 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['attr-equals'],
  );
  final definition_84 = GrammarToken(
    pattern: RegExp(definition_110, caseSensitive: false),
    lookbehind: true,
    inside: definition_111,
  );
  final definition_122 = GrammarToken(
    pattern: RegExp(definition_129),
    inside: definition_131,
  );
  final definition_137 = GrammarToken(
    pattern: RegExp(definition_139),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_144 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['attr-equals'],
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_85),
    inside: definition_86,
  );
  final definition_123 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['attr-equals'],
  );
  final definition_124 = GrammarToken(
    pattern: RegExp(definition_134),
    lookbehind: true,
  );
  final definition_125 = GrammarToken(
    pattern: RegExp(definition_61, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_87),
    inside: definition_88,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_61, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_30),
    inside: definition_31,
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_89),
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_32),
    inside: definition_33,
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_90),
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_91),
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_34),
    inside: definition_35,
    aliases: ['function'],
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_92),
    inside: definition_93,
  );
  final definition_114 = GrammarToken(
    pattern: RegExp(definition_126),
  );
  final definition_115 = GrammarToken(
    pattern: RegExp(definition_91),
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_94),
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_37),
    inside: definition_38,
    aliases: ['function'],
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_95),
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_39),
    inside: definition_40,
    aliases: ['function'],
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_96),
    inside: definition_97,
  );
  final definition_116 = GrammarToken(
    pattern: RegExp(definition_127),
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_41),
    inside: definition_42,
    aliases: ['function'],
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_96),
    inside: definition_98,
  );
  final definition_117 = GrammarToken(
    pattern: RegExp(definition_127),
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_99),
    inside: definition_100,
    aliases: ['keyword'],
  );
  final definition_118 = GrammarToken(
    pattern: RegExp(definition_128),
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_43),
    inside: definition_44,
    aliases: ['function'],
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_102),
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_45),
    inside: definition_46,
    aliases: ['function'],
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_103),
  );
  definition_20.addAllTokens({
    'internal-subset': [definition_47],
    'string': [definition_48],
    'punctuation': [GrammarToken(pattern: RegExp(definition_49))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_50, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_51))],
  });
  definition_76.addAllTokens({
    'language-css': [definition_104],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_105, caseSensitive: false))
    ],
  });
  definition_22.addAllTokens({
    'included-cdata': [definition_52],
    'language-css': [definition_53],
  });
  definition_79.addAllTokens({
    'language-javascript': [definition_106],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_105, caseSensitive: false))
    ],
  });
  definition_24.addAllTokens({
    'included-cdata': [definition_54],
    'language-javascript': [definition_55],
  });
  definition_82.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_107))],
  });
  definition_130.addAllTokens({
    'value': [definition_135],
    'punctuation': [
      definition_141,
      GrammarToken(pattern: RegExp(definition_142)),
    ],
  });
  definition_109.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_120))],
    'attr-value': [definition_121],
  });
  definition_131.addAllTokens({
    'value': [definition_137],
    'punctuation': [
      definition_144,
      GrammarToken(pattern: RegExp(definition_142)),
    ],
  });
  definition_111.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_120))],
    'attr-value': [definition_122],
  });
  definition_86.addAllTokens({
    'punctuation': [
      definition_123,
      definition_124,
    ],
    'entity': [
      definition_125,
      GrammarToken(pattern: RegExp(definition_29, caseSensitive: false)),
    ],
  });
  definition_88.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_107))],
  });
  definition_27.addAllTokens({
    'tag': [definition_56],
    'special-attr': [
      definition_83,
      definition_84,
    ],
    'attr-value': [definition_58],
    'punctuation': [GrammarToken(pattern: RegExp(definition_59))],
    'attr-name': [definition_60],
  });
  definition_31.addAllTokens({
    'punctuation': [definition_63],
  });
  definition_33.addAllTokens({
    'punctuation': [definition_64],
    'operator': [definition_65],
  });
  definition_93.addAllTokens({
    'punctuation': [definition_114],
    'operator': [definition_115],
  });
  definition_35.addAllTokens({
    'variable': [definition_66],
    'punctuation': [definition_67],
  });
  definition_38.addAllTokens({
    'variable': [definition_66],
    'punctuation': [definition_68],
  });
  definition_97.addAllTokens({
    'tag': [definition_116],
  });
  definition_40.addAllTokens({
    'punctuation': [definition_69],
  });
  definition_98.addAllTokens({
    'tag': [definition_117],
  });
  definition_100.addAllTokens({
    'punctuation': [definition_118],
  });
  definition_42.addAllTokens({
    'punctuation': [definition_70],
    'attribute': [definition_71],
  });
  definition_44.addAllTokens({
    'punctuation': [definition_72],
  });
  definition_46.addAllTokens({
    'punctuation': [definition_73],
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
      definition_28,
      GrammarToken(pattern: RegExp(definition_29, caseSensitive: false)),
    ],
    'constant': [definition_9],
    'variable': [definition_10],
    'function-inline': [definition_11],
    'function-block': [definition_12],
    'directive-inline': [definition_13],
    'directive-block-open': [definition_14],
    'directive-block-separator': [definition_15],
    'directive-block-close': [definition_16],
  });

  return LanguageProto(
    'xeora',
    definition_0,
    aliases: ['xeoracube'],
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageXeora = _create();
