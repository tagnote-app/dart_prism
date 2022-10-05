// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_17 = Grammar();
  final definition_36 = Grammar();
  final definition_43 = Grammar();
  const definition_16 =
      '@(?:doc|moduledoc)\\s+(?:("""|\'\'\')[\\s\\S]*?\\1|("|\')(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\2)[^\\\\\\r\\n])*\\2)';
  const definition_33 = '^@\\w+';
  const definition_34 = '[\'"][\\s\\S]+';
  const definition_18 = '#.*';
  const definition_19 =
      '~[rR](?:("""|\'\'\')(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])+\\1|([\\/|"\'])(?:\\\\.|(?!\\2)[^\\\\\\r\\n])+\\2|\\((?:\\\\.|[^\\\\)\\r\\n])+\\)|\\[(?:\\\\.|[^\\\\\\]\\r\\n])+\\]|\\{(?:\\\\.|[^\\\\}\\r\\n])+\\}|<(?:\\\\.|[^\\\\>\\r\\n])+>)[uismxfr]*';
  const definition_35 =
      '~[cCsSwW](?:("""|\'\'\')(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])+\\1|([\\/|"\'])(?:\\\\.|(?!\\2)[^\\\\\\r\\n])+\\2|\\((?:\\\\.|[^\\\\)\\r\\n])+\\)|\\[(?:\\\\.|[^\\\\\\]\\r\\n])+\\]|\\{(?:\\\\.|#\\{[^}]+\\}|#(?!\\{)|[^#\\\\}\\r\\n])+\\}|<(?:\\\\.|[^\\\\>\\r\\n])+>)[csa]?';
  const definition_42 = '#\\{[^}]+\\}';
  const definition_46 = '^#\\{|\\}\$';
  const definition_37 = '("""|\'\'\')[\\s\\S]*?\\1';
  const definition_38 =
      '("|\')(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_23 = '(^|[^:]):\\w+';
  const definition_25 = '\\b[A-Z]\\w*\\b';
  const definition_7 = '\\b\\w+\\??:(?!:)';
  const definition_27 = '(^|[^&])&\\d+';
  const definition_29 = '@\\w+';
  const definition_10 =
      '\\b[_a-zA-Z]\\w*[?!]?(?:(?=\\s*(?:\\.\\s*)?\\()|(?=\\/\\d))';
  const definition_11 =
      '\\b(?:0[box][a-f\\d_]+|\\d[\\d_]*)(?:\\.[\\d_]+)?(?:e[+-]?[\\d_]+)?\\b';
  const definition_12 =
      '\\b(?:after|alias|and|case|catch|cond|def(?:callback|delegate|exception|impl|macro|module|n|np|p|protocol|struct)?|do|else|end|fn|for|if|import|not|or|quote|raise|require|rescue|try|unless|unquote|use|when)\\b';
  const definition_13 = '\\b(?:false|nil|true)\\b';
  const definition_30 =
      '\\bin\\b|&&?|\\|[|>]?|\\\\\\\\|::|\\.\\.\\.?|\\+\\+?|-[->]?|<[-=>]|>=|!==?|\\B!|=(?:==?|[>~])?|[*\\/^]';
  const definition_39 = '([^<])<(?!<)';
  const definition_40 = '([^>])>(?!>)';
  const definition_15 = '<<|>>|[.,%\\[\\]{}()]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_16),
    inside: definition_17,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    global: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_35),
    greedy: true,
    inside: definition_36,
    global: true,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_42),
    inside: definition_43,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_46),
    aliases: ['punctuation'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_37),
    greedy: true,
    inside: definition_36,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_38),
    greedy: true,
    inside: definition_36,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    aliases: ['symbol'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_25),
    aliases: ['class-name'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_29),
    aliases: ['variable'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
  );
  definition_43.rest = 'elixir';
  definition_17.addAllTokens({
    'attribute': [GrammarToken(pattern: RegExp(definition_33))],
    'string': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_43.addAllTokens({
    'delimiter': [definition_44],
  });
  definition_36.addAllTokens({
    'interpolation': [definition_41],
  });
  definition_0.addAllTokens({
    'doc': [definition_1],
    'comment': [definition_2],
    'regex': [definition_3],
    'string': [
      definition_20,
      definition_21,
      definition_22,
    ],
    'atom': [definition_5],
    'module': [definition_6],
    'attr-name': [GrammarToken(pattern: RegExp(definition_7))],
    'argument': [definition_8],
    'attribute': [definition_9],
    'function': [GrammarToken(pattern: RegExp(definition_10))],
    'number': [
      GrammarToken(pattern: RegExp(definition_11, caseSensitive: false))
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_12))],
    'boolean': [GrammarToken(pattern: RegExp(definition_13))],
    'operator': [
      GrammarToken(pattern: RegExp(definition_30)),
      definition_31,
      definition_32,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });

  return LanguageProto(
    'elixir',
    definition_0,
  );
}

final languageElixir = _create();
