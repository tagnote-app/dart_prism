// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  const definition_1 = '--.*|\\{-[\\s\\S]*?-\\}';
  const definition_12 =
      '\'(?:[^\\\\\'\\r\\n]|\\\\(?:[abfnrtv\\\\\']|\\d+|x[0-9a-fA-F]+|u\\{[0-9a-fA-F]+\\}))\'';
  const definition_17 = '"""[\\s\\S]*?"""';
  const definition_18 = '"(?:[^\\\\"\\r\\n]|\\\\.)*"';
  const definition_15 =
      '(^[\\t ]*)import\\s+[A-Z]\\w*(?:\\.[A-Z]\\w*)*(?:\\s+as\\s+(?:[A-Z]\\w*)(?:\\.[A-Z]\\w*)*)?(?:\\s+exposing\\s+)?';
  const definition_19 = '\\b(?:as|exposing|import)\\b';
  const definition_5 =
      '\\b(?:alias|as|case|else|exposing|if|in|infixl|infixr|let|module|of|then|type)\\b';
  const definition_6 =
      '\\b(?:abs|acos|always|asin|atan|atan2|ceiling|clamp|compare|cos|curry|degrees|e|flip|floor|fromPolar|identity|isInfinite|isNaN|logBase|max|min|negate|never|not|pi|radians|rem|round|sin|sqrt|tan|toFloat|toPolar|toString|truncate|turns|uncurry|xor)\\b';
  const definition_7 = '\\b(?:\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?|0x[0-9a-f]+)\\b';
  const definition_8 =
      '\\s\\.\\s|[+\\-/*=.\$<>:&|^?%#@~!]{2,}|[+\\-/*=\$<>:&|^?%#@~!]';
  const definition_9 = '\\b(?:[A-Z]\\w*\\.)*[a-z]\\w*\\b';
  const definition_10 = '\\b(?:[A-Z]\\w*\\.)*[A-Z]\\w*\\b';
  const definition_11 = '[{}[\\]|(),.:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15, multiLine: true),
    lookbehind: true,
    inside: definition_16,
  );
  definition_16.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_19))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'char': [definition_2],
    'string': [
      definition_13,
      definition_14,
    ],
    'import-statement': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'builtin': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'hvariable': [GrammarToken(pattern: RegExp(definition_9))],
    'constant': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'elm',
    definition_0,
  );
}

final languageElm = _create();
