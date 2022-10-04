// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_35 = Grammar();
  final definition_65 = Grammar();
  final definition_37 = Grammar();
  final definition_40 = Grammar();
  final definition_67 = Grammar();
  final definition_42 = Grammar();
  final definition_69 = Grammar();
  final definition_44 = Grammar();
  final definition_46 = Grammar();
  final definition_25 = Grammar();
  final definition_49 = Grammar();
  final definition_51 = Grammar();
  final definition_31 = Grammar();
  const definition_17 = '#.*|^=begin\\s[\\s\\S]*?^=end';
  const definition_34 =
      '%[qQiIwWs]?(?:([^a-zA-Z0-9\\s{(\\[<=])(?:(?!\\1)[^\\\\]|\\\\[\\s\\S])*\\1|\\((?:[^()\\\\]|\\\\[\\s\\S]|\\((?:[^()\\\\]|\\\\[\\s\\S])*\\))*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S]|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\})*\\}|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S]|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S])*\\])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>)*>)';
  const definition_64 =
      '((?:^|[^\\\\])(?:\\\\{2})*)#\\{(?:[^{}]|\\{[^{}]*\\})*\\}';
  const definition_76 = '^(#\\{)[\\s\\S]+(?=\\}\$)';
  const definition_78 = '^#\\{|\\}\$';
  const definition_59 = '[\\s\\S]+';
  const definition_36 =
      '("|\')(?:#\\{[^}]+\\}|#(?!\\{)|\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\#\\r\\n])*\\1';
  const definition_38 = '<<[-~]?([a-z_]\\w*)[\\r\\n](?:.*[\\r\\n])*?[\\t ]*\\1';
  const definition_66 = '^<<[-~]?[a-z_]\\w*|\\b[a-z_]\\w*\$';
  const definition_73 = '\\b\\w+';
  const definition_74 = '^<<[-~]?';
  const definition_41 =
      '<<[-~]?\'([a-z_]\\w*)\'[\\r\\n](?:.*[\\r\\n])*?[\\t ]*\\1';
  const definition_68 = '^<<[-~]?\'[a-z_]\\w*\'|\\b[a-z_]\\w*\$';
  const definition_75 = '^<<[-~]?\'|\'\$';
  const definition_43 =
      '%x(?:([^a-zA-Z0-9\\s{(\\[<=])(?:(?!\\1)[^\\\\]|\\\\[\\s\\S])*\\1|\\((?:[^()\\\\]|\\\\[\\s\\S]|\\((?:[^()\\\\]|\\\\[\\s\\S])*\\))*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S]|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\})*\\}|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S]|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S])*\\])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>)*>)';
  const definition_45 =
      '`(?:#\\{[^}]+\\}|#(?!\\{)|\\\\(?:\\r\\n|[\\s\\S])|[^\\\\`#\\r\\n])*`';
  const definition_24 =
      '(\\b(?:class|module)\\s+|\\bcatch\\s+\\()[\\w.\\\\]+|\\b[A-Z_]\\w*(?=\\s*\\.\\s*new\\b)';
  const definition_47 = '[.\\\\]';
  const definition_48 =
      '%r(?:([^a-zA-Z0-9\\s{(\\[<=])(?:(?!\\1)[^\\\\]|\\\\[\\s\\S])*\\1|\\((?:[^()\\\\]|\\\\[\\s\\S]|\\((?:[^()\\\\]|\\\\[\\s\\S])*\\))*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S]|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\})*\\}|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S]|\\[(?:[^\\[\\]\\\\]|\\\\[\\s\\S])*\\])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>)*>)[egimnosux]{0,6}';
  const definition_50 =
      '(^|[^/])\\/(?!\\/)(?:\\[[^\\r\\n\\]]+\\]|\\\\.|[^[/\\\\\\r\\n])+\\/[egimnosux]{0,6}(?=\\s*(?:\$|[\\r\\n,.;})#]))';
  const definition_6 = '[@\$]+[a-zA-Z_]\\w*(?:[?!]|\\b)';
  const definition_52 =
      '(^|[^:]):(?:"(?:\\\\.|[^"\\\\\\r\\n])*"|(?:\\b[a-zA-Z_]\\w*|[^\\s\\0-\\x7F]+)[?!]?|\\\$.)';
  const definition_53 =
      '([\\r\\n{(,][ \\t]*)(?:"(?:\\\\.|[^"\\\\\\r\\n])*"|(?:\\b[a-zA-Z_]\\w*|[^\\s\\0-\\x7F]+)[?!]?|\\\$.)(?=:(?!:))';
  const definition_30 = '(\\bdef\\s+)\\w+(?:\\s*\\.\\s*\\w+)?';
  const definition_54 = '\\b\\w+\$';
  const definition_55 = '^self\\b';
  const definition_56 = '^\\w+';
  const definition_57 = '\\.';
  const definition_9 =
      '\\b(?:BEGIN|END|alias|and|begin|break|case|class|def|define_method|defined|do|each|else|elsif|end|ensure|extend|for|if|in|include|module|new|next|nil|not|or|prepend|private|protected|public|raise|redo|require|rescue|retry|return|self|super|then|throw|undef|unless|until|when|while|yield)\\b';
  const definition_10 = '\\b(?:false|true)\\b';
  const definition_11 =
      '\\b(?:Array|Bignum|Binding|Class|Continuation|Dir|Exception|FalseClass|File|Fixnum|Float|Hash|IO|Integer|MatchData|Method|Module|NilClass|Numeric|Object|Proc|Range|Regexp|Stat|String|Struct|Symbol|TMS|Thread|ThreadGroup|Time|TrueClass)\\b';
  const definition_12 = '\\b[A-Z][A-Z0-9_]*(?:[?!]|\\b)';
  const definition_13 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_32 = '::';
  const definition_15 =
      '\\.{2,3}|&\\.|===|<?=>|[!=]?~|(?:&&|\\|\\||<<|>>|\\*\\*|[+\\-*/%<>!^&|=])=?|[?:]';
  const definition_16 = '[(){}[\\].,;]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_17, multiLine: true),
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_34),
    greedy: true,
    inside: definition_35,
    global: true,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_64),
    lookbehind: true,
    inside: definition_65,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_76),
    lookbehind: true,
    inside: 'ruby',
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['punctuation'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_36),
    greedy: true,
    inside: definition_37,
    global: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_38, caseSensitive: false),
    aliases: ['heredoc-string'],
    greedy: true,
    inside: definition_40,
    global: true,
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_66, caseSensitive: false),
    inside: definition_67,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_41, caseSensitive: false),
    aliases: ['heredoc-string'],
    greedy: true,
    inside: definition_42,
    global: true,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_68, caseSensitive: false),
    inside: definition_69,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_43),
    greedy: true,
    inside: definition_44,
    global: true,
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_59),
    aliases: ['string'],
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_45),
    greedy: true,
    inside: definition_46,
    global: true,
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_59),
    aliases: ['string'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    inside: definition_25,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_48),
    greedy: true,
    inside: definition_49,
    global: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_50),
    lookbehind: true,
    greedy: true,
    inside: definition_51,
    global: true,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_53),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: definition_31,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_32),
    aliases: ['punctuation'],
  );
  definition_65.addAllTokens({
    'content': [definition_71],
    'delimiter': [definition_72],
  });
  definition_35.addAllTokens({
    'interpolation': [definition_58],
    'string': [GrammarToken(pattern: RegExp(definition_59))],
  });
  definition_37.addAllTokens({
    'interpolation': [definition_58],
    'string': [GrammarToken(pattern: RegExp(definition_59))],
  });
  definition_67.addAllTokens({
    'symbol': [GrammarToken(pattern: RegExp(definition_73))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_74))],
  });
  definition_40.addAllTokens({
    'delimiter': [definition_60],
    'interpolation': [definition_58],
    'string': [GrammarToken(pattern: RegExp(definition_59))],
  });
  definition_69.addAllTokens({
    'symbol': [GrammarToken(pattern: RegExp(definition_73))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_75))],
  });
  definition_42.addAllTokens({
    'delimiter': [definition_61],
    'string': [GrammarToken(pattern: RegExp(definition_59))],
  });
  definition_44.addAllTokens({
    'interpolation': [definition_58],
    'command': [definition_62],
  });
  definition_46.addAllTokens({
    'interpolation': [definition_58],
    'command': [definition_63],
  });
  definition_25.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_47))],
  });
  definition_49.addAllTokens({
    'interpolation': [definition_58],
    'regex': [GrammarToken(pattern: RegExp(definition_59))],
  });
  definition_51.addAllTokens({
    'interpolation': [definition_58],
    'regex': [GrammarToken(pattern: RegExp(definition_59))],
  });
  definition_31.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_54))],
    'keyword': [GrammarToken(pattern: RegExp(definition_55))],
    'class-name': [GrammarToken(pattern: RegExp(definition_56))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string-literal': [
      definition_18,
      definition_19,
      definition_20,
      definition_21,
    ],
    'command-literal': [
      definition_22,
      definition_23,
    ],
    'class-name': [definition_4],
    'regex-literal': [
      definition_26,
      definition_27,
    ],
    'variable': [GrammarToken(pattern: RegExp(definition_6))],
    'symbol': [
      definition_28,
      definition_29,
    ],
    'method-definition': [definition_8],
    'keyword': [GrammarToken(pattern: RegExp(definition_9))],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'builtin': [GrammarToken(pattern: RegExp(definition_11))],
    'constant': [GrammarToken(pattern: RegExp(definition_12))],
    'number': [
      GrammarToken(pattern: RegExp(definition_13, caseSensitive: false))
    ],
    'double-colon': [definition_14],
    'operator': [GrammarToken(pattern: RegExp(definition_15))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });

  return LanguageProto(
    'ruby',
    definition_0,
    aliases: ['rb'],
    requiredDependencies: ['clike'],
  );
}

final languageRuby = _create();
