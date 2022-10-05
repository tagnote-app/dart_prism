// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '#.*';
  const definition_10 =
      '(["\'])(?:(?!\\1)[^\\\\\\r\\n_]|\\\\.|_(?!\\1)(?:\\r\\n|[\\s\\S]))*\\1';
  const definition_3 =
      '\\b(?:\\d+r[a-z\\d]+|\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?)\\b|\\.\\d+\\b';
  const definition_11 =
      '&(?:allocated|ascii|clock|collections|cset|current|date|dateline|digits|dump|e|error(?:number|text|value)?|errout|fail|features|file|host|input|lcase|letters|level|line|main|null|output|phi|pi|pos|progname|random|regions|source|storage|subject|time|trace|ucase|version)\\b';
  const definition_13 = '\\\$\\w+';
  const definition_6 =
      '\\b(?:break|by|case|create|default|do|else|end|every|fail|global|if|initial|invocable|link|local|next|not|of|procedure|record|repeat|return|static|suspend|then|to|until|while)\\b';
  const definition_7 = '\\b(?!\\d)\\w+(?=\\s*[({]|\\s*!\\s*\\[)';
  const definition_8 =
      '[+-]:(?!=)|(?:[\\/?@^%&]|\\+\\+?|--?|==?=?|~==?=?|\\*\\*?|\\|\\|\\|?|<(?:->?|<?=?)|>>?=?)(?::=)?|:(?:=:?)?|[!.\\\\|~]';
  const definition_9 = '[\\[\\](){},;]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11),
    aliases: ['variable'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['builtin'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'number': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'builtin-keyword': [definition_4],
    'directive': [definition_5],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'icon',
    definition_0,
  );
}

final languageIcon = _create();
