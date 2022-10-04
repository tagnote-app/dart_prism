// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_19 = Grammar();
  final definition_21 = Grammar();
  final definition_64 = Grammar();
  final definition_23 = Grammar();
  final definition_67 = Grammar();
  final definition_26 = Grammar();
  final definition_70 = Grammar();
  final definition_84 = Grammar();
  final definition_99 = Grammar();
  final definition_86 = Grammar();
  final definition_100 = Grammar();
  final definition_74 = Grammar();
  final definition_32 = Grammar();
  final definition_35 = Grammar();
  final definition_37 = Grammar();
  final definition_76 = Grammar();
  const definition_16 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_17 = '<\\?[\\s\\S]+?\\?>';
  const definition_18 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_62 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_63 = '"[^"]*"|\'[^\']*\'';
  const definition_42 = '^<!|>\$|[[\\]]';
  const definition_43 = '^DOCTYPE';
  const definition_44 = '[^\\s<>\'"]+';
  const definition_20 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_24 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_90 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_80 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_65 = '[\\s\\S]+';
  const definition_22 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_25 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_69 = '^(<\\/?)[^\\s>\\/]+';
  const definition_82 = '^[^\\s>\\/:]+:';
  const definition_83 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_91 = '^[^\\s=]+';
  const definition_98 = '=[\\s\\S]+';
  const definition_108 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_101 = '^=';
  const definition_111 = '"|\'';
  const definition_85 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_73 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_31 =
      '(^|[^^])\\((?:[^()]|\\((?:[^()]|\\((?:[^()])*\\))*\\))*\\)';
  const definition_77 = '(^|[^^])(["\'])(?:(?!\\2)[^^]|\\^[\\s\\S])*\\2';
  const definition_33 =
      '(^|[^^])(?:\\^(?:case|eval|for|if|switch|throw)\\b|@(?:BASE|CLASS|GET(?:_DEFAULT)?|OPTIONS|SET_DEFAULT|USE)\\b)';
  const definition_34 =
      '(^|[^^])\\B\\\$(?:\\w+|(?=[.{]))(?:(?:\\.|::?)\\w+)*(?:\\.|::?)?';
  const definition_60 = '\\.|:+';
  const definition_36 = '(^|[^^])\\B[@^]\\w+(?:(?:\\.|::?)\\w+)*(?:\\.|::?)?';
  const definition_78 = '(^@)(?:GET_|SET_)';
  const definition_57 = '\\b(?:false|true)\\b';
  const definition_58 = '\\b(?:0x[a-f\\d]+|\\d+(?:\\.\\d*)?(?:e[+-]?\\d+)?)\\b';
  const definition_38 = '\\^(?:[\$^;@()\\[\\]{}"\':]|#[a-f\\d]*)';
  const definition_59 =
      '[~+*\\/\\\\%]|!(?:\\|\\|?|=)?|&&?|\\|\\|?|==|<[<=]?|>[>=]?|-[fd]?|\\b(?:def|eq|ge|gt|in|is|le|lt|ne)\\b';
  const definition_15 = '[\\[\\](){};]';
  const definition_103 = '^(\\s*)["\']|["\']\$';
  const definition_54 = '&[\\da-z]{1,8};';
  const definition_28 = '&#x?[\\da-f]{1,8};';
  const definition_52 = '^<\\/?|\\/?>\$';
  const definition_75 = '[^\\s>\\/]+';
  const definition_29 = '(\\s)#.*';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    greedy: true,
    inside: definition_19,
    global: true,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_62),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_63),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_20, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_21,
    global: true,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    inside: definition_64,
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_90, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_65),
    inside: 'css',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_23,
    global: true,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    inside: definition_67,
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_90, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_65),
    inside: 'javascript',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    inside: definition_26,
    global: true,
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
    inside: definition_70,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_83, caseSensitive: false),
    lookbehind: true,
    inside: definition_84,
  );
  final definition_92 = GrammarToken(
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
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_85, caseSensitive: false),
    lookbehind: true,
    inside: definition_86,
  );
  final definition_93 = GrammarToken(
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
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_73),
    inside: definition_74,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_31),
    greedy: true,
    lookbehind: true,
    inside: definition_32,
    global: true,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_77),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
    inside: definition_35,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
    inside: definition_37,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_78),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_38, caseSensitive: false),
    aliases: ['builtin'],
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_15),
    aliases: ['punctuation'],
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
    pattern: RegExp(definition_54, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_75),
    inside: definition_76,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_54, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    aliases: ['comment'],
  );
  definition_19.addAllTokens({
    'internal-subset': [definition_40],
    'string': [definition_41],
    'punctuation': [GrammarToken(pattern: RegExp(definition_42))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_43, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_64.addAllTokens({
    'language-css': [definition_79],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_80, caseSensitive: false))
    ],
  });
  definition_21.addAllTokens({
    'included-cdata': [definition_45],
    'language-css': [definition_46],
  });
  definition_67.addAllTokens({
    'language-javascript': [definition_81],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_80, caseSensitive: false))
    ],
  });
  definition_23.addAllTokens({
    'included-cdata': [definition_47],
    'language-javascript': [definition_48],
  });
  definition_70.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_82))],
  });
  definition_99.addAllTokens({
    'value': [definition_104],
    'punctuation': [
      definition_110,
      GrammarToken(pattern: RegExp(definition_111)),
    ],
  });
  definition_84.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_91))],
    'attr-value': [definition_92],
  });
  definition_100.addAllTokens({
    'value': [definition_106],
    'punctuation': [
      definition_113,
      GrammarToken(pattern: RegExp(definition_111)),
    ],
  });
  definition_86.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_91))],
    'attr-value': [definition_93],
  });
  definition_35.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_60))],
  });
  definition_37.addAllTokens({
    'keyword': [definition_61],
    'punctuation': [GrammarToken(pattern: RegExp(definition_60))],
  });
  definition_32.addAllTokens({
    'string': [definition_56],
    'keyword': [definition_11],
    'variable': [definition_12],
    'function': [definition_13],
    'boolean': [GrammarToken(pattern: RegExp(definition_57))],
    'number': [
      GrammarToken(pattern: RegExp(definition_58, caseSensitive: false))
    ],
    'escape': [definition_14],
    'operator': [GrammarToken(pattern: RegExp(definition_59))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });
  definition_74.addAllTokens({
    'expression': [definition_10],
    'keyword': [definition_11],
    'variable': [definition_12],
    'function': [definition_13],
    'escape': [definition_14],
    'parser-punctuation': [definition_87],
    'punctuation': [
      definition_95,
      definition_96,
    ],
    'entity': [
      definition_97,
      GrammarToken(pattern: RegExp(definition_28, caseSensitive: false)),
    ],
  });
  definition_76.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_82))],
  });
  definition_26.addAllTokens({
    'tag': [definition_49],
    'special-attr': [
      definition_71,
      definition_72,
    ],
    'attr-value': [definition_51],
    'punctuation': [GrammarToken(pattern: RegExp(definition_52))],
    'attr-name': [definition_53],
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
      definition_27,
      GrammarToken(pattern: RegExp(definition_28, caseSensitive: false)),
    ],
    'parser-comment': [definition_9],
    'expression': [definition_10],
    'keyword': [definition_11],
    'variable': [definition_12],
    'function': [definition_13],
    'escape': [definition_14],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });

  return LanguageProto(
    'parser',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageParser = _create();
