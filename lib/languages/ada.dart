// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '--.*';
  const definition_2 = '"(?:""|[^"\\r\\f\\n])*"';
  const definition_15 =
      '\\b\\d(?:_?\\d)*#[\\dA-F](?:_?[\\dA-F])*(?:\\.[\\dA-F](?:_?[\\dA-F])*)?#(?:E[+-]?\\d(?:_?\\d)*)?';
  const definition_16 =
      '\\b\\d(?:_?\\d)*(?:\\.\\d(?:_?\\d)*)?(?:E[+-]?\\d(?:_?\\d)*)?\\b';
  const definition_13 = '\\b\'\\w+';
  const definition_5 =
      '\\b(?:abort|abs|abstract|accept|access|aliased|all|and|array|at|begin|body|case|constant|declare|delay|delta|digits|do|else|elsif|end|entry|exception|exit|for|function|generic|goto|if|in|interface|is|limited|loop|mod|new|not|null|of|or|others|out|overriding|package|pragma|private|procedure|protected|raise|range|record|rem|renames|requeue|return|reverse|select|separate|some|subtype|synchronized|tagged|task|terminate|then|type|until|use|when|while|with|xor)\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 = '<[=>]?|>=?|=>?|:=|\\/=?|\\*\\*?|[&+-]';
  const definition_8 = '\\.\\.?|[,;():]';
  const definition_9 = '\'.\'';
  const definition_10 = '\\b[a-z](?:\\w)*\\b';
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['attr-name'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [GrammarToken(pattern: RegExp(definition_2))],
    'number': [
      definition_11,
      definition_12,
    ],
    'attribute': [definition_4],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_7))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
    'char': [GrammarToken(pattern: RegExp(definition_9))],
    'variable': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
  });

  return LanguageProto(
    'ada',
    definition_0,
  );
}

final languageAda = _create();
