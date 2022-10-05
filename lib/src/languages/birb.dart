// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_19 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_20 = '(^|[^\\\\:])\\/\\/.*';
  const definition_14 = 'r?("|\')(?:\\\\.|(?!\\1)[^\\\\])*\\1';
  const definition_15 = '\\b[A-Z](?:[\\d_]*[a-zA-Z]\\w*)?\\b';
  const definition_16 =
      '\\b(?:[A-Z]\\w*|(?!(?:var|void)\\b)[a-z]\\w*)(?=\\s+\\w+\\s*[;,=()])';
  const definition_4 =
      '\\b(?:assert|break|case|class|const|default|else|enum|final|follows|for|grab|if|nest|new|next|noSeeb|return|static|switch|throw|var|void|while)\\b';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_17 = '<\\w+>';
  const definition_7 = '\\b\\w+(?=\\()';
  const definition_8 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_9 =
      '\\+\\+|--|&&|\\|\\||<<=?|>>=?|~(?:\\/=?)?|[+\\-*\\/%&^|=!<>]=?|\\?|:';
  const definition_10 = '[{}[\\];(),.:]';
  const definition_11 = '\\b[a-z_]\\w*\\b';
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    aliases: ['symbol'],
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [
      definition_12,
      definition_13,
    ],
    'string': [definition_2],
    'class-name': [
      GrammarToken(pattern: RegExp(definition_15)),
      GrammarToken(pattern: RegExp(definition_16)),
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'metadata': [definition_6],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
    'variable': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'birb',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageBirb = _create();
