// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_27 = Grammar();
  final definition_29 = Grammar();
  final definition_72 = Grammar();
  final definition_31 = Grammar();
  final definition_75 = Grammar();
  final definition_34 = Grammar();
  final definition_78 = Grammar();
  final definition_90 = Grammar();
  final definition_105 = Grammar();
  final definition_92 = Grammar();
  final definition_106 = Grammar();
  final definition_82 = Grammar();
  final definition_84 = Grammar();
  const definition_24 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_25 = '<\\?[\\s\\S]+?\\?>';
  const definition_26 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_70 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_71 = '"[^"]*"|\'[^\']*\'';
  const definition_55 = '^<!|>\$|[[\\]]';
  const definition_56 = '^DOCTYPE';
  const definition_57 = '[^\\s<>\'"]+';
  const definition_28 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_32 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_96 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_86 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_73 = '[\\s\\S]+';
  const definition_30 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_33 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s+[^\\s>\\/=]+(?:=(?:("|\')(?:\\\\[\\s\\S]|\\{(?!\\{)(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])+\\}|(?!\\1)[^\\\\])*\\1|[^\\s\'">=]+))?)*\\s*\\/?>';
  const definition_77 = '^(<\\/?)[^\\s>\\/]+';
  const definition_88 = '^[^\\s>\\/:]+:';
  const definition_89 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_97 = '^[^\\s=]+';
  const definition_104 = '=[\\s\\S]+';
  const definition_111 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_118 = '^=';
  const definition_114 = '"|\'';
  const definition_91 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_81 =
      '=(?:("|\')(?:\\\\[\\s\\S]|\\{(?!\\{)(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])+\\}|(?!\\1)[^\\\\])*\\1|[^\\s\'">=]+)';
  const definition_93 = '^="|"\$';
  const definition_67 = '&[\\da-z]{1,8};';
  const definition_36 = '&#x?[\\da-f]{1,8};';
  const definition_101 =
      '\\{(?!\\{)(?:\\{(?:\\{[^{}]*\\}|[^{}])*\\}|[^{}])+\\}';
  const definition_65 = '^<\\/?|\\/?>\$';
  const definition_83 = '[^\\s>\\/]+';
  const definition_37 = '\\(:[\\s\\S]*?:\\)';
  const definition_39 = '(["\'])(?:\\1\\1|(?!\\1)[\\s\\S])*\\1';
  const definition_40 = '\\(#.+?#\\)';
  const definition_12 = '\\\$[-\\w:]+';
  const definition_42 =
      '(^|[^-])(?:ancestor(?:-or-self)?|attribute|child|descendant(?:-or-self)?|following(?:-sibling)?|parent|preceding(?:-sibling)?|self)(?=::)';
  const definition_44 =
      '(^|[^:-])\\b(?:and|castable as|div|eq|except|ge|gt|idiv|instance of|intersect|is|le|lt|mod|ne|or|union)\\b(?=\$|[^:-])';
  const definition_45 =
      '(^|[^:-])\\b(?:as|ascending|at|base-uri|boundary-space|case|cast as|collation|construction|copy-namespaces|declare|default|descending|else|empty (?:greatest|least)|encoding|every|external|for|function|if|import|in|inherit|lax|let|map|module|namespace|no-inherit|no-preserve|option|order(?: by|ed|ing)?|preserve|return|satisfies|schema|some|stable|strict|strip|then|to|treat as|typeswitch|unordered|validate|variable|version|where|xquery)\\b(?=\$|[^:-])';
  const definition_16 = '[\\w-]+(?::[\\w-]+)*(?=\\s*\\()';
  const definition_46 = '(element\\s+)[\\w-]+(?::[\\w-]+)*';
  const definition_48 = '(attribute\\s+)[\\w-]+(?::[\\w-]+)*';
  const definition_50 =
      '(^|[^:-])\\b(?:attribute|comment|document|element|processing-instruction|text|xs:(?:ENTITIES|ENTITY|ID|IDREFS?|NCName|NMTOKENS?|NOTATION|Name|QName|anyAtomicType|anyType|anyURI|base64Binary|boolean|byte|date|dateTime|dayTimeDuration|decimal|double|duration|float|gDay|gMonth|gMonthDay|gYear|gYearMonth|hexBinary|int|integer|language|long|negativeInteger|nonNegativeInteger|nonPositiveInteger|normalizedString|positiveInteger|short|string|time|token|unsigned(?:Byte|Int|Long|Short)|untyped(?:Atomic)?|yearMonthDuration))\\b(?=\$|[^:-])';
  const definition_20 = '\\b\\d+(?:\\.\\d+)?(?:E[+-]?\\d+)?';
  const definition_51 = '[+*=?|@]|\\.\\.?|:=|!=|<[=<]?|>[=>]?';
  const definition_69 = '(\\s)-(?=\\s)';
  const definition_22 = '[[\\](){},;:/]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false),
    greedy: true,
    inside: definition_27,
    global: true,
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_70),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_71),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_28, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_29,
    global: true,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_32, caseSensitive: false),
    inside: definition_72,
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_96, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_59 = GrammarToken(
    pattern: RegExp(definition_73),
    inside: 'css',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_30, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_31,
    global: true,
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_32, caseSensitive: false),
    inside: definition_75,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_96, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_73),
    inside: 'javascript',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_32, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_33),
    greedy: true,
    inside: definition_34,
    global: true,
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_77),
    lookbehind: true,
    inside: definition_78,
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_89, caseSensitive: false),
    lookbehind: true,
    inside: definition_90,
  );
  final definition_98 = GrammarToken(
    pattern: RegExp(definition_104),
    inside: definition_105,
  );
  final definition_107 = GrammarToken(
    pattern: RegExp(definition_111),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_113 = GrammarToken(
    pattern: RegExp(definition_118),
    aliases: ['attr-equals'],
  );
  final definition_80 = GrammarToken(
    pattern: RegExp(definition_91, caseSensitive: false),
    lookbehind: true,
    inside: definition_92,
  );
  final definition_99 = GrammarToken(
    pattern: RegExp(definition_104),
    inside: definition_106,
  );
  final definition_109 = GrammarToken(
    pattern: RegExp(definition_111),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_116 = GrammarToken(
    pattern: RegExp(definition_118),
    aliases: ['attr-equals'],
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_81),
    inside: definition_82,
  );
  final definition_100 = GrammarToken(
    pattern: RegExp(definition_67, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_95 = GrammarToken(
    pattern: RegExp(definition_101),
    aliases: ['language-xquery'],
    inside: 'xquery',
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_83),
    inside: definition_84,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_67, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_37),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_39),
    greedy: true,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_40),
    aliases: ['symbol'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_44),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_46),
    lookbehind: true,
    aliases: ['tag'],
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_48),
    lookbehind: true,
    aliases: ['attr-name'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_50),
    lookbehind: true,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
  );
  definition_0.tokenize = customTokenizer_1;
  definition_27.addAllTokens({
    'internal-subset': [definition_53],
    'string': [definition_54],
    'punctuation': [GrammarToken(pattern: RegExp(definition_55))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_56, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_72.addAllTokens({
    'language-css': [definition_85],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_86, caseSensitive: false))
    ],
  });
  definition_29.addAllTokens({
    'included-cdata': [definition_58],
    'language-css': [definition_59],
  });
  definition_75.addAllTokens({
    'language-javascript': [definition_87],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_86, caseSensitive: false))
    ],
  });
  definition_31.addAllTokens({
    'included-cdata': [definition_60],
    'language-javascript': [definition_61],
  });
  definition_78.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_88))],
  });
  definition_105.addAllTokens({
    'value': [definition_107],
    'punctuation': [
      definition_113,
      GrammarToken(pattern: RegExp(definition_114)),
    ],
  });
  definition_90.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_97))],
    'attr-value': [definition_98],
  });
  definition_106.addAllTokens({
    'value': [definition_109],
    'punctuation': [
      definition_116,
      GrammarToken(pattern: RegExp(definition_114)),
    ],
  });
  definition_92.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_97))],
    'attr-value': [definition_99],
  });
  definition_82.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_93))],
    'entity': [
      definition_100,
      GrammarToken(pattern: RegExp(definition_36, caseSensitive: false)),
    ],
    'expression': [definition_95],
  });
  definition_84.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_88))],
  });
  definition_34.addAllTokens({
    'tag': [definition_62],
    'special-attr': [
      definition_79,
      definition_80,
    ],
    'attr-value': [definition_64],
    'punctuation': [GrammarToken(pattern: RegExp(definition_65))],
    'attr-name': [definition_66],
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
      definition_35,
      GrammarToken(pattern: RegExp(definition_36, caseSensitive: false)),
    ],
    'xquery-comment': [definition_9],
    'string': [definition_10],
    'extension': [definition_11],
    'variable': [GrammarToken(pattern: RegExp(definition_12))],
    'axis': [definition_13],
    'keyword-operator': [definition_14],
    'keyword': [definition_15],
    'function': [GrammarToken(pattern: RegExp(definition_16))],
    'xquery-element': [definition_17],
    'xquery-attribute': [definition_18],
    'builtin': [definition_19],
    'number': [GrammarToken(pattern: RegExp(definition_20))],
    'operator': [
      GrammarToken(pattern: RegExp(definition_51)),
      definition_52,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_22))],
  });

  return LanguageProto(
    'xquery',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageXquery = _create();
