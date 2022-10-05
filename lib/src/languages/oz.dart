// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_11 = '\\/\\*[\\s\\S]*?\\*\\/|%.*';
  const definition_12 = '"(?:[^"\\\\]|\\\\[\\s\\S])*"';
  const definition_13 = '\'(?:[^\'\\\\]|\\\\[\\s\\S])*\'';
  const definition_4 =
      '\\\$|\\[\\]|\\b(?:_|at|attr|case|catch|choice|class|cond|declare|define|dis|else(?:case|if)?|end|export|fail|false|feat|finally|from|fun|functor|if|import|in|local|lock|meth|nil|not|of|or|prepare|proc|prop|raise|require|self|skip|then|thread|true|try|unit)\\b';
  const definition_15 = '\\b[a-z][A-Za-z\\d]*(?=\\()';
  const definition_17 = '(\\{)[A-Z][A-Za-z\\d]*\\b';
  const definition_6 =
      '\\b(?:0[bx][\\da-f]+|\\d+(?:\\.\\d*)?(?:e~?\\d+)?)\\b|&(?:[^\\\\]|\\\\(?:\\d{3}|.))';
  const definition_7 = '`(?:[^`\\\\]|\\\\.)+`';
  const definition_8 = '\\b\\w+(?=[ \\t]*:(?![:=]))';
  const definition_9 =
      ':(?:=|::?)|<[-:=]?|=(?:=|<?:?)|>=?:?|\\\\=:?|!!?|[|#+\\-*\\/,~^@]|\\b(?:andthen|div|mod|orelse)\\b';
  const definition_10 = '[\\[\\](){}.:;?]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    aliases: ['builtin'],
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'atom': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'function': [
      GrammarToken(pattern: RegExp(definition_15)),
      definition_16,
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'variable': [GrammarToken(pattern: RegExp(definition_7))],
    'attr-name': [GrammarToken(pattern: RegExp(definition_8))],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'oz',
    definition_0,
  );
}

final languageOz = _create();
