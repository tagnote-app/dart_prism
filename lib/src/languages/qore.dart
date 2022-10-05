// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_14 = Grammar();
  const definition_11 = '(^|[^\\\\])(?:\\/\\*[\\s\\S]*?\\*\\/|(?:\\/\\/|#).*)';
  const definition_12 = '("|\')(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1';
  const definition_13 =
      '(\\b(?:class|extends|implements|instanceof|interface|new|trait)\\s+|\\bcatch\\s+\\()[\\w.\\\\]+';
  const definition_16 = '[.\\\\]';
  const definition_4 =
      '\\b(?:abstract|any|assert|binary|bool|boolean|break|byte|case|catch|char|class|code|const|continue|data|default|do|double|else|enum|extends|final|finally|float|for|goto|hash|if|implements|import|inherits|instanceof|int|interface|long|my|native|new|nothing|null|object|our|own|private|reference|rethrow|return|short|soft(?:bool|date|float|int|list|number|string)|static|strictfp|string|sub|super|switch|synchronized|this|throw|throws|transient|try|void|volatile|while)\\b';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 = '\\\$?\\b(?!\\d)\\w+(?=\\()';
  const definition_7 =
      '\\b(?:0b[01]+|0x(?:[\\da-f]*\\.)?[\\da-fp\\-]+|(?:\\d+(?:\\.\\d+)?|\\.\\d+)(?:e\\d+)?[df]|(?:\\d+(?:\\.\\d+)?|\\.\\d+))\\b';
  const definition_15 =
      '(^|[^.])(?:\\+[+=]?|-[-=]?|[!=](?:==?|~)?|>>?=?|<(?:=>?|<=?)?|&[&=]?|\\|[|=]?|[*\\/%^]=?|[~?])';
  const definition_9 = '[{}[\\];(),.:]';
  const definition_10 = '\\\$(?!\\d)\\w+\\b';
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
    pattern: RegExp(definition_13, caseSensitive: false),
    lookbehind: true,
    inside: definition_14,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
  );
  definition_14.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'class-name': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'function': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [definition_8],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
    'variable': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'qore',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageQore = _create();
