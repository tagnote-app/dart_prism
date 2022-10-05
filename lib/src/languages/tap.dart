// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = 'not ok[^#{\\n\\r]*';
  const definition_2 = 'ok[^#{\\n\\r]*';
  const definition_3 = 'pragma [+-][a-z]+';
  const definition_4 = 'bail out!.*';
  const definition_5 = 'TAP version \\d+';
  const definition_6 = '\\b\\d+\\.\\.\\d+(?: +#.*)?';
  const definition_11 = '# Subtest(?:: .*)?';
  const definition_8 = '[{}]';
  const definition_9 = '#.*';
  const definition_12 = '(^[ \\t]*)---[\\s\\S]*?[\\r\\n][ \\t]*\\.\\.\\.\$';
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_12, multiLine: true),
    lookbehind: true,
    inside: 'yaml',
    aliases: ['language-yaml'],
  );
  definition_0.addAllTokens({
    'fail': [GrammarToken(pattern: RegExp(definition_1))],
    'pass': [GrammarToken(pattern: RegExp(definition_2))],
    'pragma': [GrammarToken(pattern: RegExp(definition_3))],
    'bailout': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'version': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'plan': [GrammarToken(pattern: RegExp(definition_6))],
    'subtest': [definition_7],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
    'directive': [GrammarToken(pattern: RegExp(definition_9))],
    'yamlish': [definition_10],
  });

  return LanguageProto(
    'tap',
    definition_0,
    requiredDependencies: ['yaml'],
  );
}

final languageTap = _create();
