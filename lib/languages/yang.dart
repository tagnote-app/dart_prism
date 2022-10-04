// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\/\\*[\\s\\S]*?\\*\\/|\\/\\/.*';
  const definition_8 = '"(?:[^\\\\"]|\\\\.)*"|\'[^\']*\'';
  const definition_9 = '(^|[{};\\r\\n][ \\t]*)[a-z_][\\w.-]*';
  const definition_10 = '(\\s)[a-z_][\\w.-]*(?=:)';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 = '\\+';
  const definition_7 = '[{};:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_9, caseSensitive: false),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_10, caseSensitive: false),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'keyword': [definition_3],
    'namespace': [definition_4],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'yang',
    definition_0,
  );
}

final languageYang = _create();
