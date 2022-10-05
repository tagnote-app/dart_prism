// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = ';.*\$';
  const definition_2 = '(["\'`])(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_8 = '(^\\s*)[A-Za-z._?\$][\\w.?\$@~#]*:';
  const definition_10 = '\\[?BITS (?:16|32|64)\\]?';
  const definition_16 = '(^\\s*)section\\s*[a-z.]+:?';
  const definition_12 = '(?:extern|global)[^;\\r\\n]*';
  const definition_13 = '(?:CPU|DEFAULT|FLOAT).*\$';
  const definition_14 =
      '\\b(?:st\\d|[xyz]mm\\d\\d?|[cdt]r\\d|r\\d\\d?[bwd]?|[abcd][hl]|[er]?[abcd]x|[er]?(?:bp|di|si|sp)|[cdefgs]s)\\b';
  const definition_6 =
      '(?:\\b|(?=\\\$))(?:0[hx](?:\\.[\\da-f]+|[\\da-f]+(?:\\.[\\da-f]+)?)(?:p[+-]?\\d+)?|\\d[\\da-f]+[hx]|\\\$\\d[\\da-f]*|0[oq][0-7]+|[0-7]+[oq]|0[by][01]+|[01]+[by]|0[dt]\\d+|(?:\\d+(?:\\.\\d+)?|\\.\\d+)(?:\\.?e[+-]?\\d+)?[dt]?)\\b';
  const definition_7 = '[\\[\\]*+\\-\\/%<>=&|\$!]';
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_8, multiLine: true),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false, multiLine: true),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    aliases: ['variable'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1, multiLine: true))],
    'string': [GrammarToken(pattern: RegExp(definition_2))],
    'label': [definition_3],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_10)),
      definition_11,
      GrammarToken(pattern: RegExp(definition_12, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_13, multiLine: true)),
    ],
    'register': [definition_5],
    'number': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'nasm',
    definition_0,
  );
}

final languageNasm = _create();
