// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_18 = Grammar();
  final definition_20 = Grammar();
  final definition_59 = Grammar();
  final definition_25 = Grammar();
  final definition_62 = Grammar();
  final definition_28 = Grammar();
  final definition_65 = Grammar();
  final definition_79 = Grammar();
  final definition_92 = Grammar();
  final definition_81 = Grammar();
  final definition_93 = Grammar();
  final definition_69 = Grammar();
  final definition_35 = Grammar();
  final definition_71 = Grammar();
  final definition_33 = Grammar();
  const definition_13 = '<%--[\\s\\S]*?--%>';
  const definition_15 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_16 = '<\\?[\\s\\S]+?\\?>';
  const definition_17 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_57 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_58 = '"[^"]*"|\'[^\']*\'';
  const definition_40 = '^<!|>\$|[[\\]]';
  const definition_41 = '^DOCTYPE';
  const definition_42 = '[^\\s<>\'"]+';
  const definition_19 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_26 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_84 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_75 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_60 = '[\\s\\S]+';
  const definition_21 =
      '(<script(?=.*runat=[\'"]?server\\b)[^>]*>)[\\s\\S]*?(?=<\\/script>)';
  const definition_24 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_27 =
      '<(?!%)\\/?[^\\s>\\/]+(?:\\s+[^\\s>\\/=]+(?:=(?:("|\')(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1|[^\\s\'">=]+))?)*\\s*\\/?>';
  const definition_64 = '^(<\\/?)[^\\s>\\/]+';
  const definition_77 = '^[^\\s>\\/:]+:';
  const definition_78 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_85 = '^[^\\s=]+';
  const definition_91 = '=[\\s\\S]+';
  const definition_101 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_94 = '^=';
  const definition_104 = '"|\'';
  const definition_80 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_68 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_34 = '<%.*%>';
  const definition_73 = '<%\\s*?[\$=%#:]{0,2}|%>';
  const definition_96 = '^(\\s*)["\']|["\']\$';
  const definition_53 = '&[\\da-z]{1,8};';
  const definition_30 = '&#x?[\\da-f]{1,8};';
  const definition_51 = '^<\\/?|\\/?>\$';
  const definition_70 = '[^\\s>\\/]+';
  const definition_31 = '<%\\s*@.*%>';
  const definition_72 =
      '<%\\s*@\\s*(?:Assembly|Control|Implements|Import|Master(?:Type)?|OutputCache|Page|PreviousPageType|Reference|Register)?|%>';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['asp', 'comment'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    greedy: true,
    inside: definition_18,
    global: true,
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_57),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_58),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false),
    inside: definition_59,
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_84, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_60),
    inside: 'css',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
    aliases: ['asp', 'script'],
    inside: 'csharp',
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_25,
    global: true,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false),
    inside: definition_62,
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_84, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_60),
    inside: 'javascript',
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_27),
    greedy: true,
    inside: definition_28,
    global: true,
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_64),
    lookbehind: true,
    inside: definition_65,
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_78, caseSensitive: false),
    lookbehind: true,
    inside: definition_79,
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_91),
    inside: definition_92,
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_101),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_103 = GrammarToken(
    pattern: RegExp(definition_94),
    aliases: ['attr-equals'],
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_80, caseSensitive: false),
    lookbehind: true,
    inside: definition_81,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_91),
    inside: definition_93,
  );
  final definition_99 = GrammarToken(
    pattern: RegExp(definition_101),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_106 = GrammarToken(
    pattern: RegExp(definition_94),
    aliases: ['attr-equals'],
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_68),
    inside: definition_69,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_34),
    aliases: ['tag'],
    inside: definition_35,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_73),
    aliases: ['tag'],
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_94),
    aliases: ['attr-equals'],
  );
  final definition_89 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
  );
  final definition_90 = GrammarToken(
    pattern: RegExp(definition_53, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_70),
    inside: definition_71,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_53, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_31),
    aliases: ['tag'],
    inside: definition_33,
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_72, caseSensitive: false),
    aliases: ['tag'],
  );
  definition_35.rest = 'csharp';
  definition_33.rest = definition_28;
  definition_18.addAllTokens({
    'internal-subset': [definition_38],
    'string': [definition_39],
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_41, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_42))],
  });
  definition_59.addAllTokens({
    'language-css': [definition_74],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_75, caseSensitive: false))
    ],
  });
  definition_20.addAllTokens({
    'included-cdata': [definition_43],
    'language-css': [definition_44],
  });
  definition_62.addAllTokens({
    'language-javascript': [definition_76],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_75, caseSensitive: false))
    ],
  });
  definition_25.addAllTokens({
    'included-cdata': [definition_46],
    'language-javascript': [definition_47],
  });
  definition_65.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_77))],
  });
  definition_92.addAllTokens({
    'value': [definition_97],
    'punctuation': [
      definition_103,
      GrammarToken(pattern: RegExp(definition_104)),
    ],
  });
  definition_79.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_85))],
    'attr-value': [definition_86],
  });
  definition_93.addAllTokens({
    'value': [definition_99],
    'punctuation': [
      definition_106,
      GrammarToken(pattern: RegExp(definition_104)),
    ],
  });
  definition_81.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_85))],
    'attr-value': [definition_87],
  });
  definition_35.addAllTokens({
    'directive': [definition_56],
  });
  definition_69.addAllTokens({
    'directive': [definition_12],
    'punctuation': [
      definition_88,
      definition_89,
    ],
    'entity': [
      definition_90,
      GrammarToken(pattern: RegExp(definition_30, caseSensitive: false)),
    ],
  });
  definition_71.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_77))],
  });
  definition_28.addAllTokens({
    'tag': [definition_48],
    'special-attr': [
      definition_66,
      definition_67,
    ],
    'attr-value': [definition_50],
    'punctuation': [GrammarToken(pattern: RegExp(definition_51))],
    'attr-name': [definition_52],
  });
  definition_33.addAllTokens({
    'page-directive': [definition_55],
  });
  definition_0.addAllTokens({
    'asp-comment': [definition_1],
    'comment': [definition_2],
    'prolog': [definition_3],
    'doctype': [definition_4],
    'style': [definition_5],
    'asp-script': [definition_6],
    'script': [definition_7],
    'cdata': [definition_8],
    'tag': [definition_9],
    'entity': [
      definition_29,
      GrammarToken(pattern: RegExp(definition_30, caseSensitive: false)),
    ],
    'page-directive': [definition_11],
    'directive': [definition_12],
  });

  return LanguageProto(
    'aspnet',
    definition_0,
    requiredDependencies: ['markup', 'xml', 'csharp', 'clike'],
  );
}

final languageAspnet = _create();
