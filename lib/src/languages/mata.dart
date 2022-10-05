// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_17 = Grammar();
  const definition_12 =
      '\\/\\/.*|\\/\\*(?:[^*/]|\\*(?!\\/)|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*\\*\\/';
  const definition_13 = '"[^"\\r\\n]*"|[‘`\']".*?"[’`\']';
  const definition_14 =
      '(\\b(?:class|extends|struct)\\s+)\\w+(?=\\s*(?:\\{|\\bextends\\b))';
  const definition_15 =
      '\\bvoid\\b|\\b(?:(?:col|row)?vector|matrix|scalar)\\b|\\b(?:complex|numeric|pointer(?:\\s*\\([^()]*\\))?|real|string|(?:class|struct)\\s+\\w+|transmorphic)(?:\\s*\\b(?:(?:col|row)?vector|matrix|scalar)\\b)?';
  const definition_21 = '[()]';
  const definition_22 = '\\b(?:class|function|struct|void)\\b';
  const definition_5 =
      '\\b(?:break|class|continue|do|else|end|extends|external|final|for|function|goto|if|pragma|private|protected|public|return|static|struct|unset|unused|version|virtual|while)\\b';
  const definition_6 = '\\bNULL\\b';
  const definition_18 =
      '(^|[^\\w.])(?:\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?|\\d[a-f0-9]*(?:\\.[a-f0-9]+)?x[+-]?\\d+)i?(?![\\w.])';
  const definition_19 = '(^|[^\\w.])(?:\\.[a-z]?)(?![\\w.])';
  const definition_9 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_10 =
      '\\.\\.|\\+\\+|--|&&|\\|\\||:?(?:[!=<>]=|[+\\-*/^<>&|:])|[!?=\\\\#’`\']';
  const definition_11 = '[()[\\]{},;.]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    aliases: ['class-name'],
    inside: definition_17,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    aliases: ['symbol'],
  );
  definition_17.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_21))],
    'keyword': [GrammarToken(pattern: RegExp(definition_22))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'class-name': [definition_3],
    'type': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'constant': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [definition_7],
    'missing': [definition_8],
    'function': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'mata',
    definition_0,
  );
}

final languageMata = _create();
