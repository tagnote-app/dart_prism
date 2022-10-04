// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_8 = '%\\{[\\s\\S]*?\\}%';
  const definition_9 = '%.+';
  const definition_10 = '\\B\'(?:\'\'|[^\'\\r\\n])*\'';
  const definition_3 =
      '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[eE][+-]?\\d+)?(?:[ij])?|\\b[ij]\\b';
  const definition_4 =
      '\\b(?:NaN|break|case|catch|continue|else|elseif|end|for|function|if|inf|otherwise|parfor|pause|pi|return|switch|try|while)\\b';
  const definition_5 = '\\b(?!\\d)\\w+(?=\\s*\\()';
  const definition_6 = '\\.?[*^\\/\\\\\']|[+\\-:@]|[<>=~]=?|&&?|\\|\\|?';
  const definition_7 = '\\.{3}|[.,;\\[\\](){}!]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_8)),
      GrammarToken(pattern: RegExp(definition_9)),
    ],
    'string': [definition_2],
    'number': [GrammarToken(pattern: RegExp(definition_3))],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'matlab',
    definition_0,
  );
}

final languageMatlab = _create();
