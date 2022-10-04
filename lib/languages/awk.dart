// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_11 = '^#!.*';
  const definition_13 = '#.*';
  const definition_14 = '(^|[^\\\\])"(?:[^\\\\"\\r\\n]|\\\\.)*"';
  const definition_15 =
      '((?:^|[^\\w\\s)])\\s*)\\/(?:[^\\/\\\\\\r\\n]|\\\\.)*\\/';
  const definition_5 = '\\\$\\w+';
  const definition_6 =
      '\\b(?:BEGIN|BEGINFILE|END|ENDFILE|break|case|continue|default|delete|do|else|exit|for|function|getline|if|in|next|nextfile|printf?|return|switch|while)\\b|@(?:include|load)\\b';
  const definition_7 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_8 =
      '\\b(?:\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?|0x[a-fA-F0-9]+)\\b';
  const definition_9 =
      '--|\\+\\+|!?~|>&|>>|<<|(?:\\*\\*|[<>!=+\\-*/%^])=?|&&|\\|[|&]|[?:]';
  const definition_10 = '[()[\\]{},;]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    aliases: ['comment'],
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
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'hashbang': [definition_1],
    'comment': [definition_2],
    'string': [definition_3],
    'regex': [definition_4],
    'variable': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'number': [GrammarToken(pattern: RegExp(definition_8))],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'awk',
    definition_0,
    aliases: ['gawk'],
  );
}

final languageAwk = _create();
