// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_19 = Grammar();
  const definition_24 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_25 = '(^|[^\\\\:])\\/\\/.*';
  const definition_26 = '#.*';
  const definition_16 =
      '(^|[^\\\\"\'])\'(?:[^\\\\\']|\\\\(?:[xuU][0-9a-fA-F]{0,8}|[\\s\\S]))\'';
  const definition_17 =
      '(^|[^\\\\"\'@])(?:@"(?:[^"]|"")*"(?!")|"(?:[^\\\\\\r\\n"]|\\\\.)*")';
  const definition_18 =
      '(\\b(?:class|enum|extends|instanceof)\\s+)\\w+(?:\\.\\w+)*';
  const definition_27 = '\\.';
  const definition_5 =
      '\\b(?:__FILE__|__LINE__|base|break|case|catch|class|clone|const|constructor|continue|default|delete|else|enum|extends|for|foreach|function|if|in|instanceof|local|null|resume|return|static|switch|this|throw|try|typeof|while|yield)\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 = '\\b\\w+(?=\\()';
  const definition_8 =
      '\\b(?:0x[0-9a-fA-F]+|\\d+(?:\\.(?:\\d+|[eE][+-]?\\d+))?)\\b';
  const definition_20 = '<\\/|\\/>';
  const definition_22 = '@(?=\\()';
  const definition_11 =
      '\\+\\+|--|<=>|<[-<]|>>>?|&&?|\\|\\|?|[-+*/%!=<>]=?|[~^]|::?';
  const definition_12 = '[(){}\\[\\],;.]';
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    inside: definition_19,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['important'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_22),
    aliases: ['operator'],
  );
  definition_19.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_13,
      definition_14,
      definition_15,
    ],
    'char': [definition_2],
    'string': [definition_3],
    'class-name': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [GrammarToken(pattern: RegExp(definition_8))],
    'attribute-punctuation': [definition_9],
    'lambda': [definition_10],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'squirrel',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageSquirrel = _create();
