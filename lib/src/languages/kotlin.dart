// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_28 = Grammar();
  final definition_38 = Grammar();
  final definition_31 = Grammar();
  const definition_24 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_25 = '(^|[^\\\\:])\\/\\/.*';
  const definition_26 = '"""(?:[^\$]|\\\$(?:(?!\\{)|\\{[^{}]*\\}))*?"""';
  const definition_37 = '\\\$(?:[a-z_]\\w*|\\{[^{}]*\\})';
  const definition_42 = '^\\\$\\{?|\\}\$';
  const definition_35 = '[\\s\\S]+';
  const definition_29 =
      '"(?:[^"\\\\\\r\\n\$]|\\\\.|\\\$(?:(?!\\{)|\\{[^{}]*\\}))*"';
  const definition_39 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$(?:[a-z_]\\w*|\\{[^{}]*\\})';
  const definition_16 = '\'(?:[^\'\\\\\\r\\n]|\\\\(?:.|u[a-fA-F0-9]{0,4}))\'';
  const definition_17 = '\\B@(?:\\w+:)?(?:[A-Z]\\w*|\\[[^\\]]+\\])';
  const definition_19 =
      '(^|[^.])\\b(?:abstract|actual|annotation|as|break|by|catch|class|companion|const|constructor|continue|crossinline|data|do|dynamic|else|enum|expect|external|final|finally|for|fun|get|if|import|in|infix|init|inline|inner|interface|internal|is|lateinit|noinline|null|object|open|operator|out|override|package|private|protected|public|reified|return|sealed|set|super|suspend|tailrec|this|throw|to|try|typealias|val|var|vararg|when|where|while)\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_20 = '\\b\\w+@|@\\w+\\b';
  const definition_32 = '(?:`[^\\r\\n`]+`|\\b\\w+)(?=\\s*\\()';
  const definition_33 = '(\\.)(?:`[^\\r\\n`]+`|\\w+)(?=\\s*\\{)';
  const definition_9 =
      '\\b(?:0[xX][\\da-fA-F]+(?:_[\\da-fA-F]+)*|0[bB][01]+(?:_[01]+)*|\\d+(?:_\\d+)*(?:\\.\\d+(?:_\\d+)*)?(?:[eE][+-]?\\d+(?:_\\d+)*)?[fFL]?)\\b';
  const definition_10 =
      '\\+[+=]?|-[-=>]?|==?=?|!(?:!|==?)?|[\\/*%<>]=?|[?:]:?|\\.\\.|&&|\\|\\||\\b(?:and|inv|or|shl|shr|ushr|xor)\\b';
  const definition_11 = '[{}[\\];(),.:]';
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['multiline'],
    inside: definition_28,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_37, caseSensitive: false),
    inside: definition_38,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_42),
    aliases: ['punctuation'],
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_35),
    inside: 'kotlin',
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_29),
    aliases: ['singleline'],
    inside: definition_31,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_39, caseSensitive: false),
    lookbehind: true,
    inside: definition_38,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['builtin'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['symbol'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_32),
    greedy: true,
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_38.addAllTokens({
    'interpolation-punctuation': [definition_40],
    'expression': [definition_41],
  });
  definition_28.addAllTokens({
    'interpolation': [definition_34],
    'string': [GrammarToken(pattern: RegExp(definition_35))],
  });
  definition_31.addAllTokens({
    'interpolation': [definition_36],
    'string': [GrammarToken(pattern: RegExp(definition_35))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_12,
      definition_13,
    ],
    'string-literal': [
      definition_14,
      definition_15,
    ],
    'char': [definition_3],
    'annotation': [definition_4],
    'keyword': [definition_5],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'label': [definition_7],
    'function': [
      definition_22,
      definition_23,
    ],
    'number': [GrammarToken(pattern: RegExp(definition_9))],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'kotlin',
    definition_0,
    aliases: ['kt', 'kts'],
    requiredDependencies: ['clike'],
  );
}

final languageKotlin = _create();
