// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  const definition_12 = '\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_13 = '`(?:\\\\.|[^\\\\`])*`';
  const definition_24 = '^`|`\$';
  const definition_25 = '[\\s\\S]+';
  const definition_16 = '"(?:\\\\.|[^\\\\"\\r\\n])*"';
  const definition_4 = '\\\$\\w+';
  const definition_5 = '\\b0x[\\da-fA-F]+\\b|\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+';
  const definition_17 = '-[^\\d\\W]\\w*';
  const definition_7 =
      '\\b(?:break|case|continue|default|do|else|float|for|global|if|in|int|matrix|proc|return|string|switch|vector|while)\\b';
  const definition_19 =
      '((?:^|[{;])[ \\t]*)[a-z_]\\w*\\b(?!\\s*(?:\\.(?!\\.)|[[{=]))|\\b[a-z_]\\w*(?=[ \\t]*\\()';
  const definition_20 = '<<|>>';
  const definition_10 = '\\+[+=]?|-[-=]?|&&|\\|\\||[<>]=?|[*\\/!=]=?|[%^]';
  const definition_11 = '[.,:;?\\[\\](){}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    aliases: ['italic'],
    inside: definition_15,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['punctuation'],
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_25),
    inside: 'mel',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['operator'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['punctuation'],
  );
  definition_15.addAllTokens({
    'delimiter': [definition_22],
    'statement': [definition_23],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'code': [definition_2],
    'string': [definition_3],
    'variable': [GrammarToken(pattern: RegExp(definition_4))],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'flag': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'function': [definition_8],
    'tensor-punctuation': [definition_9],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'mel',
    definition_0,
  );
}

final languageMel = _create();
