// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  const definition_10 = '\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/|^#.*';
  const definition_11 =
      '(\\b(?:digraph|graph|subgraph)[ \\t\\r\\n]+)(?:[a-zA-Z_\\x80-\\uFFFF][\\w\\x80-\\uFFFF]*|-?(?:\\.\\d+|\\d+(?:\\.\\d*)?)|"[^"\\\\]*(?:\\\\[\\s\\S][^"\\\\]*)*"|<(?:[^<>]|(?!<!--)<(?:[^<>"\']|"[^"]*"|\'[^\']*\')+>|<!--(?:[^-]|-(?!->))*-->)*>)';
  const definition_20 = '(^<)[\\s\\S]+(?=>\$)';
  const definition_14 =
      '(=[ \\t\\r\\n]*)(?:[a-zA-Z_\\x80-\\uFFFF][\\w\\x80-\\uFFFF]*|-?(?:\\.\\d+|\\d+(?:\\.\\d*)?)|"[^"\\\\]*(?:\\\\[\\s\\S][^"\\\\]*)*"|<(?:[^<>]|(?!<!--)<(?:[^<>"\']|"[^"]*"|\'[^\']*\')+>|<!--(?:[^-]|-(?!->))*-->)*>)';
  const definition_15 =
      '([\\[;, \\t\\r\\n])(?:[a-zA-Z_\\x80-\\uFFFF][\\w\\x80-\\uFFFF]*|-?(?:\\.\\d+|\\d+(?:\\.\\d*)?)|"[^"\\\\]*(?:\\\\[\\s\\S][^"\\\\]*)*"|<(?:[^<>]|(?!<!--)<(?:[^<>"\']|"[^"]*"|\'[^\']*\')+>|<!--(?:[^-]|-(?!->))*-->)*>)(?=[ \\t\\r\\n]*=)';
  const definition_5 = '\\b(?:digraph|edge|graph|node|strict|subgraph)\\b';
  const definition_16 =
      '(:[ \\t\\r\\n]*)(?:[ewc_]|[ns][ew]?)(?![\\w\\x80-\\uFFFF])';
  const definition_18 =
      '(^|[^-.\\w\\x80-\\uFFFF\\\\])(?:[a-zA-Z_\\x80-\\uFFFF][\\w\\x80-\\uFFFF]*|-?(?:\\.\\d+|\\d+(?:\\.\\d*)?)|"[^"\\\\]*(?:\\\\[\\s\\S][^"\\\\]*)*"|<(?:[^<>]|(?!<!--)<(?:[^<>"\']|"[^"]*"|\'[^\']*\')+>|<!--(?:[^-]|-(?!->))*-->)*>)';
  const definition_8 = '[=:]|-[->]';
  const definition_9 = '[\\[\\]{};,]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10, multiLine: true),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    aliases: ['class-name'],
    inside: definition_13,
    global: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    aliases: ['language-markup', 'language-html', 'language-xml'],
    inside: 'markup',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    aliases: ['builtin'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    inside: definition_13,
    global: true,
  );
  definition_13.addAllTokens({
    'markup': [definition_19],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'graph-name': [definition_2],
    'attr-value': [definition_3],
    'attr-name': [definition_4],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'compass-point': [definition_6],
    'node': [definition_7],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'dot',
    definition_0,
    aliases: ['gv'],
  );
}

final languageDot = _create();
