// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  final definition_14 = Grammar();
  final definition_40 = Grammar();
  final definition_16 = Grammar();
  final definition_43 = Grammar();
  final definition_19 = Grammar();
  final definition_46 = Grammar();
  final definition_58 = Grammar();
  final definition_71 = Grammar();
  final definition_60 = Grammar();
  final definition_72 = Grammar();
  final definition_50 = Grammar();
  final definition_52 = Grammar();
  const definition_9 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_10 = '<\\?[\\s\\S]+?\\?>';
  const definition_11 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_38 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_39 = '"[^"]*"|\'[^\']*\'';
  const definition_24 = '^<!|>\$|[[\\]]';
  const definition_25 = '^DOCTYPE';
  const definition_26 = '[^\\s<>\'"]+';
  const definition_13 =
      '(<style[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/style>)';
  const definition_17 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_63 = '(^<!\\[CDATA\\[)[\\s\\S]+?(?=\\]\\]>\$)';
  const definition_54 = '^<!\\[CDATA\\[|\\]\\]>\$';
  const definition_41 = '[\\s\\S]+';
  const definition_15 =
      '(<script[^>]*>)(?:<!\\[CDATA\\[(?:[^\\]]|\\](?!\\]>))*\\]\\]>|(?!<!\\[CDATA\\[)[\\s\\S])*?(?=<\\/script>)';
  const definition_18 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_45 = '^(<\\/?)[^\\s>\\/]+';
  const definition_56 = '^[^\\s>\\/:]+:';
  const definition_57 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_64 = '^[^\\s=]+';
  const definition_70 = '=[\\s\\S]+';
  const definition_80 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_73 = '^=';
  const definition_83 = '"|\'';
  const definition_59 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_49 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_75 = '^(\\s*)["\']|["\']\$';
  const definition_36 = '&[\\da-z]{1,8};';
  const definition_21 = '&#x?[\\da-f]{1,8};';
  const definition_34 = '^<\\/?|\\/?>\$';
  const definition_51 = '[^\\s>\\/]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false),
    greedy: true,
    inside: definition_12,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    greedy: true,
    inside: definition_0,
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_39),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_14,
    global: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    inside: definition_40,
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_63, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_41),
    inside: 'css',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_16,
    global: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    inside: definition_43,
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_63, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_41),
    inside: 'javascript',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    inside: definition_19,
    global: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
    inside: definition_46,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_57, caseSensitive: false),
    lookbehind: true,
    inside: definition_58,
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_70),
    inside: definition_71,
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_80),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_82 = GrammarToken(
    pattern: RegExp(definition_73),
    aliases: ['attr-equals'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_59, caseSensitive: false),
    lookbehind: true,
    inside: definition_60,
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_70),
    inside: definition_72,
  );
  final definition_78 = GrammarToken(
    pattern: RegExp(definition_80),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_73),
    aliases: ['attr-equals'],
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_49),
    inside: definition_50,
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_73),
    aliases: ['attr-equals'],
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_75),
    lookbehind: true,
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_36, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_51),
    inside: definition_52,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_36, caseSensitive: false),
    aliases: ['named-entity'],
  );
  definition_12.addAllTokens({
    'internal-subset': [definition_22],
    'string': [definition_23],
    'punctuation': [GrammarToken(pattern: RegExp(definition_24))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_25, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_40.addAllTokens({
    'language-css': [definition_53],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_54, caseSensitive: false))
    ],
  });
  definition_14.addAllTokens({
    'included-cdata': [definition_27],
    'language-css': [definition_28],
  });
  definition_43.addAllTokens({
    'language-javascript': [definition_55],
    'cdata': [
      GrammarToken(pattern: RegExp(definition_54, caseSensitive: false))
    ],
  });
  definition_16.addAllTokens({
    'included-cdata': [definition_29],
    'language-javascript': [definition_30],
  });
  definition_46.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_56))],
  });
  definition_71.addAllTokens({
    'value': [definition_76],
    'punctuation': [
      definition_82,
      GrammarToken(pattern: RegExp(definition_83)),
    ],
  });
  definition_58.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_64))],
    'attr-value': [definition_65],
  });
  definition_72.addAllTokens({
    'value': [definition_78],
    'punctuation': [
      definition_85,
      GrammarToken(pattern: RegExp(definition_83)),
    ],
  });
  definition_60.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_64))],
    'attr-value': [definition_66],
  });
  definition_50.addAllTokens({
    'punctuation': [
      definition_67,
      definition_68,
    ],
    'entity': [
      definition_69,
      GrammarToken(pattern: RegExp(definition_21, caseSensitive: false)),
    ],
  });
  definition_52.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_56))],
  });
  definition_19.addAllTokens({
    'tag': [definition_31],
    'special-attr': [
      definition_47,
      definition_48,
    ],
    'attr-value': [definition_33],
    'punctuation': [GrammarToken(pattern: RegExp(definition_34))],
    'attr-name': [definition_35],
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
      definition_20,
      GrammarToken(pattern: RegExp(definition_21, caseSensitive: false)),
    ],
  });

  return LanguageProto(
    'markup',
    definition_0,
    aliases: ['html', 'svg', 'mathml'],
    requiredDependencies: ['xml'],
  );
}

final languageMarkup = _create();
