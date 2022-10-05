// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  final definition_21 = Grammar();
  final definition_16 = Grammar();
  const definition_1 = '\\/\\/.*';
  const definition_11 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_12 =
      '(^|[\\s(),])(?:\\/(?:[\\w\\xA0-\\uFFFF]+|\\{[\\w\\xA0-\\uFFFF]+(?:=\\*\\*)?\\}|\\\$\\([\\w\\xA0-\\uFFFF.]+\\)))+';
  const definition_20 =
      '\\{[\\w\\xA0-\\uFFFF]+(?:=\\*\\*)?\\}|\\\$\\([\\w\\xA0-\\uFFFF.]+\\)';
  const definition_22 = '=';
  const definition_23 = '\\*\\*';
  const definition_24 = '[.\$(){}]';
  const definition_18 = '\\/';
  const definition_14 = '(\\ballow\\s+)[a-z]+(?:\\s*,\\s*[a-z]+)*(?=\\s*[:;])';
  const definition_19 = ',';
  const definition_5 =
      '\\b(?:allow|function|if|match|null|return|rules_version|service)\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 = '\\b\\w+(?=\\()';
  const definition_8 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_9 = '&&|\\|\\||[<>!=]=?|[-+*/%]|\\b(?:in|is)\\b';
  const definition_10 = '[{}[\\];(),.:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_20),
    inside: definition_21,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    aliases: ['builtin'],
    inside: definition_16,
  );
  definition_21.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_22))],
    'keyword': [GrammarToken(pattern: RegExp(definition_23))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_13.addAllTokens({
    'variable': [definition_17],
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_16.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'path': [definition_3],
    'method': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'firestore-security-rules',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageFirestoreSecurityRules = _create();
