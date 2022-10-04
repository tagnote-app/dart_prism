// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_14 = '\\(\\*[\\s\\S]*?\\*\\)';
  const definition_15 = '\'(?:[^\\\\\\r\\n\']|\\\\(?:.|[ox]?[0-9a-f]{1,3}))\'';
  const definition_30 = '"(?:\\\\(?:[\\s\\S]|\\r\\n)|[^\\\\\\r\\n"])*"';
  const definition_31 = '\\{([a-z_]*)\\|[\\s\\S]*?\\|\\1\\}';
  const definition_18 = '\\b(?:0b[01][01_]*|0o[0-7][0-7_]*)\\b';
  const definition_19 =
      '\\b0x[a-f0-9][a-f0-9_]*(?:\\.[a-f0-9_]*)?(?:p[+-]?\\d[\\d_]*)?(?!\\w)';
  const definition_20 =
      '\\b\\d[\\d_]*(?:\\.[\\d_]*)?(?:e[+-]?\\d[\\d_]*)?(?!\\w)';
  const definition_21 = '\\B#\\w+';
  const definition_23 = '\\B~\\w+';
  const definition_24 = '\\B\'\\w+';
  const definition_26 = '`\\w+';
  const definition_9 =
      '\\b(?:as|assert|begin|class|constraint|do|done|downto|else|end|exception|external|for|fun|function|functor|if|in|include|inherit|initializer|lazy|let|match|method|module|mutable|new|nonrec|object|of|open|private|rec|sig|struct|then|to|try|type|val|value|virtual|when|where|while|with)\\b';
  const definition_10 = '\\b(?:false|true)\\b';
  const definition_28 = '\\[[<>|]|[>|]\\]|\\{<|>\\}';
  const definition_12 =
      '\\.[.~]|:[=>]|[=<>@^|&+\\-*\\/\$%!?~][!\$%&*+\\-.\\/:<=>?@^|~]*|\\b(?:and|asr|land|lor|lsl|lsr|lxor|mod|or)\\b';
  const definition_13 = ';;|::|[(){}\\[\\].,:;#]|\\b_\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_30),
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_31),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_21),
    aliases: ['property'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['property'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['function'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['symbol'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['punctuation'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'char': [definition_2],
    'string': [
      definition_16,
      definition_17,
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_18, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_20, caseSensitive: false)),
    ],
    'directive': [definition_5],
    'label': [definition_6],
    'type-variable': [definition_7],
    'variant': [definition_8],
    'keyword': [GrammarToken(pattern: RegExp(definition_9))],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'operator-like-punctuation': [definition_11],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'ocaml',
    definition_0,
  );
}

final languageOcaml = _create();
