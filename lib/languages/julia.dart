// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_11 =
      '(^|[^\\\\])(?:#=(?:[^#=]|=(?!#)|#(?!=)|#=(?:[^#=]|=(?!#)|#(?!=))*=#)*=#|#.*)';
  const definition_12 = 'r"(?:\\\\.|[^"\\\\\\r\\n])*"[imsx]{0,4}';
  const definition_13 =
      '"""[\\s\\S]+?"""|(?:\\b\\w+)?"(?:\\\\.|[^"\\\\\\r\\n])*"|`(?:[^\\\\`\\r\\n]|\\\\.)*`';
  const definition_14 =
      '(^|[^\\w\'])\'(?:\\\\[^\\r\\n][^\'\\r\\n]*|[^\\\\\\r\\n])\'';
  const definition_5 =
      '\\b(?:abstract|baremodule|begin|bitstype|break|catch|ccall|const|continue|do|else|elseif|end|export|finally|for|function|global|if|immutable|import|importall|in|let|local|macro|module|print|println|quote|return|struct|try|type|typealias|using|while)\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 =
      '(?:\\b(?=\\d)|\\B(?=\\.))(?:0[box])?(?:[\\da-f]+(?:_[\\da-f]+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[efp][+-]?\\d+(?:_\\d+)*)?j?';
  const definition_8 =
      '&&|\\|\\||[-+*^%÷⊻&\$\\\\]=?|\\/[\\/=]?|!=?=?|\\|[=>]?|<(?:<=?|[=:|])?|>(?:=|>>?=?)?|==?=?|[~≠≤≥\'√∛]';
  const definition_9 = '::?|[{}[\\]();,.?]';
  const definition_10 = '\\b(?:(?:Inf|NaN)(?:16|32|64)?|im|pi)\\b|[πℯ]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'regex': [definition_2],
    'string': [definition_3],
    'char': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
    'constant': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'julia',
    definition_0,
  );
}

final languageJulia = _create();
