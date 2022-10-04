// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_14 = Grammar();
  final definition_18 = Grammar();
  final definition_62 = Grammar();
  final definition_39 = Grammar();
  final definition_20 = Grammar();
  final definition_24 = Grammar();
  final definition_26 = Grammar();
  final definition_67 = Grammar();
  final definition_28 = Grammar();
  final definition_70 = Grammar();
  final definition_31 = Grammar();
  final definition_73 = Grammar();
  final definition_86 = Grammar();
  final definition_99 = Grammar();
  final definition_88 = Grammar();
  final definition_100 = Grammar();
  final definition_77 = Grammar();
  final definition_79 = Grammar();
  const definition_13 = '(^|[^\\\\])#\\[\\[[\\s\\S]*?\\]\\]#';
  const definition_34 = '^#\\[\\[|\\]\\]#\$';
  const definition_35 = '(^|[^\\\\])#\\*[\\s\\S]*?\\*#';
  const definition_37 = '(^|[^\\\\])##.*';
  const definition_17 =
      '(^|[^\\\\](?:\\\\\\\\)*)#@?(?:[a-z][\\w-]*|\\{[a-z][\\w-]*\\})(?:\\s*\\((?:[^()]|\\([^()]*\\))*\\))?';
  const definition_61 = '^#@?(?:[a-z][\\w-]*|\\{[a-z][\\w-]*\\})|\\bin\\b';
  const definition_80 = '[{}]';
  const definition_19 =
      '(^|[^\\\\](?:\\\\\\\\)*)\\\$!?(?:[a-z][\\w-]*(?:\\([^)]*\\))?(?:\\.[a-z][\\w-]*(?:\\([^)]*\\))?|\\[[^\\]]+\\])*|\\{[^}]+\\})';
  const definition_64 = '"[^"]*"|\'[^\']*\'';
  const definition_65 = '([^\\w-])[a-z][\\w-]*(?=\\()';
  const definition_42 = '\\b\\d+\\b';
  const definition_43 = '\\b(?:false|true)\\b';
  const definition_44 = '[(){}[\\]:,.]';
  const definition_63 =
      '[=!<>]=?|[+*/%-]|&&|\\|\\||\\.\\.|\\b(?:eq|g[et]|l[et]|n(?:e|ot))\\b';
  const definition_21 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_22 = '<\\?[\\s\\S]+?\\?>';
  const definition_23 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_66 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_47 = '^<!|>\$|[[\\]]';
  const definition_48 = '^DOCTYPE';
  const definition_49 = '[^\\s<>\'"]+';
  const definition_25 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_29 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_91 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_82 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_68 = '[\\s\\S]+';
  const definition_27 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_30 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_72 = '^(<\\/?)[^\\s>\\/]+';
  const definition_84 = '^[^\\s>\\/:]+:';
  const definition_85 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_92 = '^[^\\s=]+';
  const definition_98 = '=[\\s\\S]+';
  const definition_108 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_101 = '^=';
  const definition_111 = '"|\'';
  const definition_87 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_76 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_103 = '^(\\s*)["\']|["\']\$';
  const definition_59 = '&[\\da-z]{1,8};';
  const definition_33 = '&#x?[\\da-f]{1,8};';
  const definition_57 = '^<\\/?|\\/?>\$';
  const definition_78 = '[^\\s>\\/]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    greedy: true,
    inside: definition_14,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    lookbehind: true,
    inside: definition_18,
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_61),
    inside: definition_62,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    lookbehind: true,
    inside: definition_20,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_64),
    greedy: true,
    global: true,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_65),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_21),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_23, caseSensitive: false),
    greedy: true,
    inside: definition_24,
    global: true,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_66),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_64),
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_26,
    global: true,
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
    inside: definition_67,
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_91, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_68),
    inside: 'css',
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_28,
    global: true,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
    inside: definition_70,
  );
  final definition_83 = GrammarToken(
    pattern: RegExp(definition_91, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_68),
    inside: 'javascript',
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_30),
    greedy: true,
    inside: definition_31,
    global: true,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_72),
    lookbehind: true,
    inside: definition_73,
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_85, caseSensitive: false),
    lookbehind: true,
    inside: definition_86,
  );
  final definition_93 = GrammarToken(
    pattern: RegExp(definition_98),
    inside: definition_99,
  );
  final definition_104 = GrammarToken(
    pattern: RegExp(definition_108),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_110 = GrammarToken(
    pattern: RegExp(definition_101),
    aliases: ['attr-equals'],
  );
  final definition_75 = GrammarToken(
    pattern: RegExp(definition_87, caseSensitive: false),
    lookbehind: true,
    inside: definition_88,
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_98),
    inside: definition_100,
  );
  final definition_106 = GrammarToken(
    pattern: RegExp(definition_108),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_113 = GrammarToken(
    pattern: RegExp(definition_101),
    aliases: ['attr-equals'],
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_76),
    inside: definition_77,
  );
  final definition_95 = GrammarToken(
    pattern: RegExp(definition_101),
    aliases: ['attr-equals'],
  );
  final definition_96 = GrammarToken(
    pattern: RegExp(definition_103),
    lookbehind: true,
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_59, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_78),
    inside: definition_79,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_59, caseSensitive: false),
    aliases: ['named-entity'],
  );
  definition_18.rest = definition_39;
  definition_77.rest = definition_0;
  definition_14.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_62.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_80))],
  });
  definition_20.addAllTokens({
    'string': [definition_40],
    'function': [definition_41],
    'number': [GrammarToken(pattern: RegExp(definition_42))],
    'boolean': [GrammarToken(pattern: RegExp(definition_43))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_39.addAllTokens({
    'variable': [definition_4],
    'string': [definition_40],
    'number': [GrammarToken(pattern: RegExp(definition_42))],
    'boolean': [GrammarToken(pattern: RegExp(definition_43))],
    'operator': [GrammarToken(pattern: RegExp(definition_63))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_18.addAllTokens({
    'keyword': [definition_38],
  });
  definition_24.addAllTokens({
    'internal-subset': [definition_45],
    'string': [definition_46],
    'punctuation': [GrammarToken(pattern: RegExp(definition_47))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_48, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_49))],
  });
  definition_67.addAllTokens({
    'language-css': [definition_81],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_82, caseSensitive: false))
    ],
  });
  definition_26.addAllTokens({
    'included-cdata': [definition_50],
    'language-css': [definition_51],
  });
  definition_70.addAllTokens({
    'language-javascript': [definition_83],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_82, caseSensitive: false))
    ],
  });
  definition_28.addAllTokens({
    'included-cdata': [definition_52],
    'language-javascript': [definition_53],
  });
  definition_73.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_84))],
  });
  definition_99.addAllTokens({
    'value': [definition_104],
    'punctuation': [
      definition_110,
      GrammarToken(pattern: RegExp(definition_111)),
    ],
  });
  definition_86.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_92))],
    'attr-value': [definition_93],
  });
  definition_100.addAllTokens({
    'value': [definition_106],
    'punctuation': [
      definition_113,
      GrammarToken(pattern: RegExp(definition_111)),
    ],
  });
  definition_88.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_92))],
    'attr-value': [definition_94],
  });
  definition_77.addAllTokens({
    'punctuation': [
      definition_95,
      definition_96,
    ],
    'entity': [
      definition_97,
      GrammarToken(pattern: RegExp(definition_33, caseSensitive: false)),
    ],
  });
  definition_79.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_84))],
  });
  definition_31.addAllTokens({
    'tag': [definition_54],
    'special-attr': [
      definition_74,
      definition_75,
    ],
    'attr-value': [definition_56],
    'punctuation': [GrammarToken(pattern: RegExp(definition_57))],
    'attr-name': [definition_58],
  });
  definition_0.addAllTokens({
    'unparsed': [definition_1],
    'velocity-comment': [
      definition_15,
      definition_16,
    ],
    'directive': [definition_3],
    'variable': [definition_4],
    'comment': [definition_5],
    'prolog': [definition_6],
    'doctype': [definition_7],
    'style': [definition_8],
    'script': [definition_9],
    'cdata': [definition_10],
    'tag': [definition_11],
    'entity': [
      definition_32,
      GrammarToken(pattern: RegExp(definition_33, caseSensitive: false)),
    ],
  });

  return LanguageProto(
    'velocity',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageVelocity = _create();
