// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_14 = Grammar();
  const definition_15 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_16 = '(^|[^\\\\:])\\/\\/.*';
  const definition_12 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_13 =
      '(\\b(?:class|extends|implements|instanceof|interface|new|trait)\\s+|\\bcatch\\s+\\()[\\w.\\\\]+';
  const definition_17 = '[.\\\\]';
  const definition_4 =
      '\\b(?:break|catch|continue|do|else|finally|for|function|if|in|instanceof|new|null|return|throw|try|while)\\b';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 = '\\b\\w+(?=\\()';
  const definition_7 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_8 = '[<>]=?|[!=]=?=?|--?|\\+\\+?|&&?|\\|\\|?|[?*/~^%]';
  const definition_9 = '[{}[\\];(),.:]';
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13, caseSensitive: false),
    lookbehind: true,
    inside: definition_14,
  );
  definition_14.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_17))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_10,
      definition_11,
    ],
    'string': [definition_2],
    'class-name': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'clike',
    definition_0,
  );
}

final languageClike = _create();
