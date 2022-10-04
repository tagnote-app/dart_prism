// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_22 = Grammar();
  final definition_24 = Grammar();
  final definition_78 = Grammar();
  final definition_26 = Grammar();
  final definition_81 = Grammar();
  final definition_29 = Grammar();
  final definition_75 = Grammar();
  final definition_113 = Grammar();
  final definition_125 = Grammar();
  final definition_144 = Grammar();
  final definition_126 = Grammar();
  final definition_145 = Grammar();
  final definition_116 = Grammar();
  final definition_117 = Grammar();
  final definition_31 = Grammar();
  final definition_85 = Grammar();
  final definition_106 = Grammar();
  final definition_130 = Grammar();
  final definition_108 = Grammar();
  final definition_131 = Grammar();
  final definition_89 = Grammar();
  final definition_91 = Grammar();
  final definition_37 = Grammar();
  final definition_39 = Grammar();
  final definition_50 = Grammar();
  const definition_19 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_20 = '<\\?[\\s\\S]+?\\?>';
  const definition_21 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_76 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_77 = '"[^"]*"|\'[^\']*\'';
  const definition_53 = '^<!|>\$|[[\\]]';
  const definition_54 = '^DOCTYPE';
  const definition_55 = '[^\\s<>\'"]+';
  const definition_23 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_27 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_118 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_102 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_79 = '[\\s\\S]+';
  const definition_25 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_28 = '<(nowiki|pre|source)\\b[^>]*>[\\s\\S]*?<\\/\\1>';
  const definition_83 =
      '<(?:nowiki|pre|source)\\b[^>]*>|<\\/(?:nowiki|pre|source)>';
  const definition_84 = '^(<\\/?)[^\\s>\\/]+';
  const definition_104 = '^[^\\s>\\/:]+:';
  const definition_105 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_119 = '^[^\\s=]+';
  const definition_129 = '=[\\s\\S]+';
  const definition_146 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_132 = '^=';
  const definition_149 = '"|\'';
  const definition_107 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_88 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_134 = '^(\\s*)["\']|["\']\$';
  const definition_66 = '&[\\da-z]{1,8};';
  const definition_33 = '&#x?[\\da-f]{1,8};';
  const definition_64 = '^<\\/?|\\/?>\$';
  const definition_90 = '[^\\s>\\/]+';
  const definition_30 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_34 = '(^|[^\\\\])\\/\\*[\\s\\S]*?\\*\\/';
  const definition_36 = '^(=+)[^=\\r\\n].*?\\1';
  const definition_68 = '^=+|=+\$';
  const definition_69 = '.+';
  const definition_38 = '(\'{2,5}).+?\\1';
  const definition_92 = '(\'\'\'\'\').+?(?=\\1)';
  const definition_94 = '(\'\'\')[^\'](?:.*?[^\'])?(?=\\1)';
  const definition_95 = '(\'\')[^\'](?:.*?[^\'])?(?=\\1)';
  const definition_73 = '^\'\'+|\'\'+\$';
  const definition_40 = '^-{4,}';
  const definition_42 =
      'ISBN +(?:97[89][ -]?)?(?:\\d[ -]?){9}[\\dx]\\b|(?:PMID|RFC) +\\d+';
  const definition_43 = '\\[\\[.+?\\]\\]|\\[.+?\\]';
  const definition_44 = '__[A-Z]+__';
  const definition_45 = '\\{{3}.+?\\}{3}';
  const definition_46 = '\\{\\{.+?\\}\\}';
  const definition_47 = '^#redirect';
  const definition_48 = '~{3,5}';
  const definition_49 = '((?:^|[|!])[|!])[^|\\r\\n]+\\|(?!\\|)';
  const definition_96 = '\\|\$';
  const definition_18 = '^(?:\\{\\||\\|\\}|\\|-|[*#:;!|])|\\|\\||!!';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    greedy: true,
    inside: definition_22,
    global: true,
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_76),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_77),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_23, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_24,
    global: true,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    inside: definition_78,
  );
  final definition_101 = GrammarToken(
    pattern: RegExp(definition_118, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_57 = GrammarToken(
    pattern: RegExp(definition_79),
    inside: 'css',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_26,
    global: true,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    inside: definition_81,
  );
  final definition_103 = GrammarToken(
    pattern: RegExp(definition_118, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_59 = GrammarToken(
    pattern: RegExp(definition_79),
    inside: 'javascript',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_28, caseSensitive: false),
    inside: definition_29,
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_83, caseSensitive: false),
    inside: definition_75,
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_84),
    lookbehind: true,
    inside: definition_113,
  );
  final definition_114 = GrammarToken(
    pattern: RegExp(definition_105, caseSensitive: false),
    lookbehind: true,
    inside: definition_125,
  );
  final definition_135 = GrammarToken(
    pattern: RegExp(definition_129),
    inside: definition_144,
  );
  final definition_152 = GrammarToken(
    pattern: RegExp(definition_146),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_159 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['attr-equals'],
  );
  final definition_115 = GrammarToken(
    pattern: RegExp(definition_107, caseSensitive: false),
    lookbehind: true,
    inside: definition_126,
  );
  final definition_136 = GrammarToken(
    pattern: RegExp(definition_129),
    inside: definition_145,
  );
  final definition_154 = GrammarToken(
    pattern: RegExp(definition_146),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_161 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['attr-equals'],
  );
  final definition_99 = GrammarToken(
    pattern: RegExp(definition_88),
    inside: definition_116,
  );
  final definition_137 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['attr-equals'],
  );
  final definition_138 = GrammarToken(
    pattern: RegExp(definition_134),
    lookbehind: true,
  );
  final definition_139 = GrammarToken(
    pattern: RegExp(definition_66, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_100 = GrammarToken(
    pattern: RegExp(definition_90),
    inside: definition_117,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_30),
    greedy: true,
    inside: definition_31,
    global: true,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_84),
    lookbehind: true,
    inside: definition_85,
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_105, caseSensitive: false),
    lookbehind: true,
    inside: definition_106,
  );
  final definition_120 = GrammarToken(
    pattern: RegExp(definition_129),
    inside: definition_130,
  );
  final definition_140 = GrammarToken(
    pattern: RegExp(definition_146),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_148 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['attr-equals'],
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_107, caseSensitive: false),
    lookbehind: true,
    inside: definition_108,
  );
  final definition_121 = GrammarToken(
    pattern: RegExp(definition_129),
    inside: definition_131,
  );
  final definition_142 = GrammarToken(
    pattern: RegExp(definition_146),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_151 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['attr-equals'],
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_88),
    inside: definition_89,
  );
  final definition_122 = GrammarToken(
    pattern: RegExp(definition_132),
    aliases: ['attr-equals'],
  );
  final definition_123 = GrammarToken(
    pattern: RegExp(definition_134),
    lookbehind: true,
  );
  final definition_124 = GrammarToken(
    pattern: RegExp(definition_66, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_90),
    inside: definition_91,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_66, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
    aliases: ['comment'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_36, multiLine: true),
    inside: definition_37,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_38),
    inside: definition_39,
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_92),
    lookbehind: true,
    aliases: ['bold', 'italic'],
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_94),
    lookbehind: true,
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_95),
    lookbehind: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_40, multiLine: true),
    aliases: ['punctuation'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_49, multiLine: true),
    lookbehind: true,
    inside: definition_50,
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_96),
    aliases: ['punctuation'],
  );
  definition_50.rest = definition_75;
  definition_22.addAllTokens({
    'internal-subset': [definition_51],
    'string': [definition_52],
    'punctuation': [GrammarToken(pattern: RegExp(definition_53))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_54, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_55))],
  });
  definition_78.addAllTokens({
    'language-css': [definition_101],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_102, caseSensitive: false))
    ],
  });
  definition_24.addAllTokens({
    'included-cdata': [definition_56],
    'language-css': [definition_57],
  });
  definition_81.addAllTokens({
    'language-javascript': [definition_103],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_102, caseSensitive: false))
    ],
  });
  definition_26.addAllTokens({
    'included-cdata': [definition_58],
    'language-javascript': [definition_59],
  });
  definition_113.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_104))],
  });
  definition_144.addAllTokens({
    'value': [definition_152],
    'punctuation': [
      definition_159,
      GrammarToken(pattern: RegExp(definition_149)),
    ],
  });
  definition_125.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_119))],
    'attr-value': [definition_135],
  });
  definition_145.addAllTokens({
    'value': [definition_154],
    'punctuation': [
      definition_161,
      GrammarToken(pattern: RegExp(definition_149)),
    ],
  });
  definition_126.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_119))],
    'attr-value': [definition_136],
  });
  definition_116.addAllTokens({
    'punctuation': [
      definition_137,
      definition_138,
    ],
    'entity': [
      definition_139,
      GrammarToken(pattern: RegExp(definition_33, caseSensitive: false)),
    ],
  });
  definition_117.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_104))],
  });
  definition_75.addAllTokens({
    'tag': [definition_97],
    'special-attr': [
      definition_114,
      definition_115,
    ],
    'attr-value': [definition_99],
    'punctuation': [GrammarToken(pattern: RegExp(definition_64))],
    'attr-name': [definition_100],
  });
  definition_29.addAllTokens({
    'tag': [definition_60],
  });
  definition_85.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_104))],
  });
  definition_130.addAllTokens({
    'value': [definition_140],
    'punctuation': [
      definition_148,
      GrammarToken(pattern: RegExp(definition_149)),
    ],
  });
  definition_106.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_119))],
    'attr-value': [definition_120],
  });
  definition_131.addAllTokens({
    'value': [definition_142],
    'punctuation': [
      definition_151,
      GrammarToken(pattern: RegExp(definition_149)),
    ],
  });
  definition_108.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_119))],
    'attr-value': [definition_121],
  });
  definition_89.addAllTokens({
    'punctuation': [
      definition_122,
      definition_123,
    ],
    'entity': [
      definition_124,
      GrammarToken(pattern: RegExp(definition_33, caseSensitive: false)),
    ],
  });
  definition_91.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_104))],
  });
  definition_31.addAllTokens({
    'tag': [definition_61],
    'special-attr': [
      definition_86,
      definition_87,
    ],
    'attr-value': [definition_63],
    'punctuation': [GrammarToken(pattern: RegExp(definition_64))],
    'attr-name': [definition_65],
  });
  definition_37.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_68))],
    'important': [GrammarToken(pattern: RegExp(definition_69))],
  });
  definition_39.addAllTokens({
    'bold-italic': [definition_70],
    'bold': [definition_71],
    'italic': [definition_72],
    'punctuation': [GrammarToken(pattern: RegExp(definition_73))],
  });
  definition_50.addAllTokens({
    'table-bar': [definition_74],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'prolog': [definition_2],
    'doctype': [definition_3],
    'style': [definition_4],
    'script': [definition_5],
    'cdata': [definition_6],
    'nowiki': [definition_7],
    'tag': [definition_8],
    'entity': [
      definition_32,
      GrammarToken(pattern: RegExp(definition_33, caseSensitive: false)),
    ],
    'block-comment': [definition_10],
    'heading': [definition_11],
    'emphasis': [definition_12],
    'hr': [definition_13],
    'url': [
      GrammarToken(pattern: RegExp(definition_42, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_43)),
    ],
    'variable': [
      GrammarToken(pattern: RegExp(definition_44)),
      GrammarToken(pattern: RegExp(definition_45)),
      GrammarToken(pattern: RegExp(definition_46)),
    ],
    'symbol': [
      GrammarToken(
          pattern:
              RegExp(definition_47, caseSensitive: false, multiLine: true)),
      GrammarToken(pattern: RegExp(definition_48)),
    ],
    'table-tag': [definition_17],
    'punctuation': [
      GrammarToken(pattern: RegExp(definition_18, multiLine: true))
    ],
  });

  return LanguageProto(
    'wiki',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageWiki = _create();
