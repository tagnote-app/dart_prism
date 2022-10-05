// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  const definition_11 = '(^|[^\\\\\$])#.*';
  const definition_16 = '\\b(?:FIXME|TODO|XXX)\\b';
  const definition_13 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_3 = '\\b[TF]\\b';
  const definition_14 = '(\\b(?:event|function|hook)[ \\t]+)\\w+(?:::\\w+)?';
  const definition_5 =
      '(?:@(?:load(?:-(?:plugin|sigs))?|unload|prefixes|ifn?def|else|(?:end)?if|DIR|FILENAME))|(?:&?(?:add_func|create_expire|default|delete_func|encrypt|error_handler|expire_func|group|log|mergeable|optional|persistent|priority|raw_output|read_expire|redef|rotate_interval|rotate_size|synchronized|type_column|write_expire))';
  const definition_15 = '(\\bconst[ \\t]+)\\w+';
  const definition_7 =
      '\\b(?:add|addr|alarm|any|bool|break|const|continue|count|delete|double|else|enum|event|export|file|for|function|global|hook|if|in|int|interval|local|module|next|of|opaque|pattern|port|print|record|return|schedule|set|string|subnet|table|time|timeout|using|vector|when)\\b';
  const definition_8 =
      '--?|\\+\\+?|!=?=?|<=?|>=?|==?=?|&&|\\|\\|?|\\?|\\*|\\/|~|\\^|%';
  const definition_9 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_10 = '[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    inside: definition_12,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    lookbehind: true,
  );
  definition_12.addAllTokens({
    'italic': [GrammarToken(pattern: RegExp(definition_16))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'boolean': [GrammarToken(pattern: RegExp(definition_3))],
    'function': [definition_4],
    'builtin': [GrammarToken(pattern: RegExp(definition_5))],
    'constant': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'bro',
    definition_0,
  );
}

final languageBro = _create();
