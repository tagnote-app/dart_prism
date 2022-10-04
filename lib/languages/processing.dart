// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  const definition_19 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_20 = '(^|[^\\\\:])\\/\\/.*';
  const definition_14 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_15 =
      '(\\b(?:class|extends|implements|instanceof|interface|new|trait)\\s+|\\bcatch\\s+\\()[\\w.\\\\]+';
  const definition_21 = '[.\\\\]';
  const definition_4 =
      '\\b(?:break|case|catch|class|continue|default|else|extends|final|for|if|implements|import|new|null|private|public|return|static|super|switch|this|try|void|while)\\b';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 = '\\b\\w+(?=\\s*\\()';
  const definition_7 = '\\b(?!XML\\b)[A-Z][A-Z\\d_]+\\b';
  const definition_17 =
      '\\b(?:boolean|byte|char|color|double|float|int|[A-Z]\\w*)\\b';
  const definition_9 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_10 = '<[<=]?|>[>=]?|&&?|\\|\\|?|[%?]|[!=+\\-*\\/]=?';
  const definition_11 = '[{}[\\];(),.:]';
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
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    lookbehind: true,
    inside: definition_16,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['class-name'],
  );
  definition_16.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_21))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_12,
      definition_13,
    ],
    'string': [definition_2],
    'class-name': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [GrammarToken(pattern: RegExp(definition_6))],
    'constant': [GrammarToken(pattern: RegExp(definition_7))],
    'type': [definition_8],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'processing',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageProcessing = _create();
