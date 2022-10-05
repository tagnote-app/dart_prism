// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_22 = Grammar();
  final definition_24 = Grammar();
  final definition_52 = Grammar();
  final definition_97 = Grammar();
  final definition_54 = Grammar();
  final definition_57 = Grammar();
  final definition_99 = Grammar();
  final definition_59 = Grammar();
  final definition_101 = Grammar();
  final definition_61 = Grammar();
  final definition_63 = Grammar();
  final definition_33 = Grammar();
  final definition_66 = Grammar();
  final definition_68 = Grammar();
  final definition_39 = Grammar();
  const definition_20 = '#.*|^=begin\\s[\\s\\S]*?^=end';
  const definition_21 = '@\\[.*?\\]';
  const definition_76 = '^@\\[|\\]\$';
  const definition_77 = '^(\\s*)\\w+';
  const definition_79 = '\\S(?:[\\s\\S]*\\S)?';
  const definition_23 = '\\{(?:\\{.*?\\}|%.*?%)\\}';
  const definition_81 = '^(\\{.)[\\s\\S]+(?=.\\}\$)';
  const definition_82 = '^\\{[\\{%]|[\\}%]\\}\$';
  const definition_25 =
      '\'(?:[^\\\\\\r\\n]{1,2}|\\\\(?:.|u(?:[A-Fa-f0-9]{1,4}|\\{[A-Fa-f0-9]{1,6}\\})))\'';
  const definition_51 =
      '%[qQiIwWs]?(?:([^a-zA-Z0-9\\s{(\\[<=])(?:(?!\\1)[^\\\\]|\\\\[\\s\\S])*\\1|\\((?:[^()\\\\]|\\\\[\\s\\S]|\\((?:[^()\\\\]|\\\\[\\s\\S])*\\))*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S]|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\})*\\}|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S]|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S])*\\])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>)*>)';
  const definition_96 =
      '((?:^|[^\\\\])(?:\\\\{2})*)#\\{(?:[^{}]|\\{[^{}]*\\})*\\}';
  const definition_108 = '^(#\\{)[\\s\\S]+(?=\\}\$)';
  const definition_109 = '^#\\{|\\}\$';
  const definition_85 = '[\\s\\S]+';
  const definition_53 =
      '("|\')(?:#\\{[^}]+\\}|#(?!\\{)|\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\#\\r\\n])*\\1';
  const definition_55 = '<<[-~]?([a-z_]\\w*)[\\r\\n](?:.*[\\r\\n])*?[\\t ]*\\1';
  const definition_98 = '^<<[-~]?[a-z_]\\w*|\\b[a-z_]\\w*\$';
  const definition_105 = '\\b\\w+';
  const definition_106 = '^<<[-~]?';
  const definition_58 =
      '<<[-~]?\'([a-z_]\\w*)\'[\\r\\n](?:.*[\\r\\n])*?[\\t ]*\\1';
  const definition_100 = '^<<[-~]?\'[a-z_]\\w*\'|\\b[a-z_]\\w*\$';
  const definition_107 = '^<<[-~]?\'|\'\$';
  const definition_60 =
      '%x(?:([^a-zA-Z0-9\\s{(\\[<=])(?:(?!\\1)[^\\\\]|\\\\[\\s\\S])*\\1|\\((?:[^()\\\\]|\\\\[\\s\\S]|\\((?:[^()\\\\]|\\\\[\\s\\S])*\\))*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S]|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\})*\\}|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S]|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S])*\\])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>)*>)';
  const definition_62 =
      '`(?:#\\{[^}]+\\}|#(?!\\{)|\\\\(?:\\r\\n|[\\s\\S])|[^\\\\`#\\r\\n])*`';
  const definition_32 =
      '(\\b(?:class|module)\\s+|\\bcatch\\s+\\()[\\w.\\\\]+|\\b[A-Z_]\\w*(?=\\s*\\.\\s*new\\b)';
  const definition_64 = '[.\\\\]';
  const definition_65 =
      '%r(?:([^a-zA-Z0-9\\s{(\\[<=])(?:(?!\\1)[^\\\\]|\\\\[\\s\\S])*\\1|\\((?:[^()\\\\]|\\\\[\\s\\S]|\\((?:[^()\\\\]|\\\\[\\s\\S])*\\))*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S]|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\})*\\}|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S]|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S])*\\])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>)*>)[egimnosux]{0,6}';
  const definition_67 =
      '(^|[^/])\\/(?!\\/)(?:\\[[^\\r\\n\\]]+\\]|\\\\.|[^[/\\\\\\r\\n])+\\/[egimnosux]{0,6}(?=\\s*(?:\$|[\\r\\n,.;})#]))';
  const definition_9 = '[@\$]+[a-zA-Z_]\\w*(?:[?!]|\\b)';
  const definition_69 =
      '(^|[^:]):(?:"(?:\\\\.|[^"\\\\\\r\\n])*"|(?:\\b[a-zA-Z_]\\w*|[^\\s\\0-\\x7F]+)[?!]?|\\\$.)';
  const definition_70 =
      '([\\r\\n{(,][ \\t]*)(?:"(?:\\\\.|[^"\\\\\\r\\n])*"|(?:\\b[a-zA-Z_]\\w*|[^\\s\\0-\\x7F]+)[?!]?|\\\$.)(?=:(?!:))';
  const definition_38 = '(\\bdef\\s+)\\w+(?:\\s*\\.\\s*\\w+)?';
  const definition_71 = '\\b\\w+\$';
  const definition_72 = '^self\\b';
  const definition_73 = '^\\w+';
  const definition_74 = '\\.';
  const definition_40 =
      '\\b(?:__DIR__|__END_LINE__|__FILE__|__LINE__|abstract|alias|annotation|as|asm|begin|break|case|class|def|do|else|elsif|end|ensure|enum|extend|for|fun|if|ifdef|include|instance_sizeof|lib|macro|module|next|of|out|pointerof|private|protected|ptr|require|rescue|return|select|self|sizeof|struct|super|then|type|typeof|undef|uninitialized|union|unless|until|when|while|with|yield)\\b';
  const definition_75 = '(\\.\\s*)(?:is_a|responds_to)\\?';
  const definition_13 = '\\b(?:false|true)\\b';
  const definition_14 =
      '\\b(?:Array|Bignum|Binding|Class|Continuation|Dir|Exception|FalseClass|File|Fixnum|Float|Hash|IO|Integer|MatchData|Method|Module|NilClass|Numeric|Object|Proc|Range|Regexp|Stat|String|Struct|Symbol|TMS|Thread|ThreadGroup|Time|TrueClass)\\b';
  const definition_15 = '\\b[A-Z][A-Z0-9_]*(?:[?!]|\\b)';
  const definition_16 =
      '\\b(?:0b[01_]*[01]|0o[0-7_]*[0-7]|0x[\\da-fA-F_]*[\\da-fA-F]|(?:\\d(?:[\\d_]*\\d)?)(?:\\.[\\d_]*\\d)?(?:[eE][+-]?[\\d_]*\\d)?)(?:_(?:[uif](?:8|16|32|64))?)?\\b';
  const definition_42 = '::';
  const definition_44 = '->';
  const definition_45 =
      '\\.{2,3}|&\\.|===|<?=>|[!=]?~|(?:&&|\\|\\||<<|>>|\\*\\*|[+\\-*/%<>!^&|=])=?|[?:]';
  const definition_19 = '[(){}[\\].,;\\\\]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_20, multiLine: true),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_21),
    inside: definition_22,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_76),
    aliases: ['punctuation'],
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_77),
    lookbehind: true,
    aliases: ['class-name'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_79),
    inside: 'crystal',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_23),
    inside: definition_24,
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_81),
    lookbehind: true,
    inside: 'crystal',
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_82),
    aliases: ['operator'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    global: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_51),
    greedy: true,
    inside: definition_52,
    global: true,
  );
  final definition_84 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
    inside: definition_97,
  );
  final definition_103 = GrammarToken(
    pattern: RegExp(definition_108),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_104 = GrammarToken(
    pattern: RegExp(definition_109),
    aliases: ['punctuation'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_53),
    greedy: true,
    inside: definition_54,
    global: true,
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
    inside: definition_97,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_55, caseSensitive: false),
    greedy: true,
    aliases: ['heredoc-string'],
    inside: definition_57,
    global: true,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_98, caseSensitive: false),
    inside: definition_99,
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
    inside: definition_97,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_58, caseSensitive: false),
    greedy: true,
    aliases: ['heredoc-string'],
    inside: definition_59,
    global: true,
  );
  final definition_89 = GrammarToken(
    pattern: RegExp(definition_100, caseSensitive: false),
    inside: definition_101,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_60),
    greedy: true,
    inside: definition_61,
    global: true,
  );
  final definition_90 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
    inside: definition_97,
  );
  final definition_91 = GrammarToken(
    pattern: RegExp(definition_85),
    aliases: ['string'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_62),
    greedy: true,
    inside: definition_63,
    global: true,
  );
  final definition_92 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
    inside: definition_97,
  );
  final definition_93 = GrammarToken(
    pattern: RegExp(definition_85),
    aliases: ['string'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
    inside: definition_33,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_65),
    greedy: true,
    inside: definition_66,
    global: true,
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
    inside: definition_97,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_67),
    lookbehind: true,
    greedy: true,
    inside: definition_68,
    global: true,
  );
  final definition_95 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
    inside: definition_97,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_70),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    inside: definition_39,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_75),
    lookbehind: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_42),
    aliases: ['punctuation'],
  );
  definition_22.addAllTokens({
    'delimiter': [definition_46],
    'attribute': [definition_47],
    'args': [definition_48],
  });
  definition_24.addAllTokens({
    'content': [definition_49],
    'delimiter': [definition_50],
  });
  definition_97.addAllTokens({
    'content': [definition_103],
    'delimiter': [definition_104],
  });
  definition_52.addAllTokens({
    'interpolation': [definition_84],
    'string': [GrammarToken(pattern: RegExp(definition_85))],
  });
  definition_54.addAllTokens({
    'interpolation': [definition_86],
    'string': [GrammarToken(pattern: RegExp(definition_85))],
  });
  definition_99.addAllTokens({
    'symbol': [GrammarToken(pattern: RegExp(definition_105))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_106))],
  });
  definition_57.addAllTokens({
    'delimiter': [definition_87],
    'interpolation': [definition_88],
    'string': [GrammarToken(pattern: RegExp(definition_85))],
  });
  definition_101.addAllTokens({
    'symbol': [GrammarToken(pattern: RegExp(definition_105))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_107))],
  });
  definition_59.addAllTokens({
    'delimiter': [definition_89],
    'string': [GrammarToken(pattern: RegExp(definition_85))],
  });
  definition_61.addAllTokens({
    'interpolation': [definition_90],
    'command': [definition_91],
  });
  definition_63.addAllTokens({
    'interpolation': [definition_92],
    'command': [definition_93],
  });
  definition_33.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_64))],
  });
  definition_66.addAllTokens({
    'interpolation': [definition_94],
    'regex': [GrammarToken(pattern: RegExp(definition_85))],
  });
  definition_68.addAllTokens({
    'interpolation': [definition_95],
    'regex': [GrammarToken(pattern: RegExp(definition_85))],
  });
  definition_39.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_71))],
    'keyword': [GrammarToken(pattern: RegExp(definition_72))],
    'class-name': [GrammarToken(pattern: RegExp(definition_73))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_74))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'attribute': [definition_2],
    'expansion': [definition_3],
    'char': [definition_4],
    'string-literal': [
      definition_26,
      definition_27,
      definition_28,
      definition_29,
    ],
    'command-literal': [
      definition_30,
      definition_31,
    ],
    'class-name': [definition_7],
    'regex-literal': [
      definition_34,
      definition_35,
    ],
    'variable': [GrammarToken(pattern: RegExp(definition_9))],
    'symbol': [
      definition_36,
      definition_37,
    ],
    'method-definition': [definition_11],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_40)),
      definition_41,
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_13))],
    'builtin': [GrammarToken(pattern: RegExp(definition_14))],
    'constant': [GrammarToken(pattern: RegExp(definition_15))],
    'number': [GrammarToken(pattern: RegExp(definition_16))],
    'double-colon': [definition_17],
    'operator': [
      GrammarToken(pattern: RegExp(definition_44)),
      GrammarToken(pattern: RegExp(definition_45)),
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });

  return LanguageProto(
    'crystal',
    definition_0,
    requiredDependencies: ['ruby', 'clike'],
  );
}

final languageCrystal = _create();
