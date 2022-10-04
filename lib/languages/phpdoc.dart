// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_9 = Grammar();
  const definition_5 =
      '(@(?:global|param|property(?:-read|-write)?|var)\\s+(?:(?:\\b[a-zA-Z]\\w*|[|\\\\[\\]])+\\s+)?)\\\$\\w+';
  const definition_8 =
      '(@(?:global|package|param|property(?:-read|-write)?|return|subpackage|throws|var)\\s+)(?:\\b[a-zA-Z]\\w*|[|\\\\[\\]])+';
  const definition_10 =
      '\\b(?:array|bool|boolean|callback|double|false|float|int|integer|mixed|null|object|resource|self|string|true|void)\\b';
  const definition_11 = '[|\\\\[\\]()]';
  const definition_7 =
      '(^[\\t ]*(?:\\/{3}|\\*|\\/\\*\\*)\\s*|\\{)@[a-z][a-zA-Z-]+\\b';
  const definition_4 = '[{}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_5),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_8),
    lookbehind: true,
    inside: definition_9,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_7, multiLine: true),
    lookbehind: true,
  );
  definition_9.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });
  definition_0.addAllTokens({
    'parameter': [definition_1],
    'class-name': [
      definition_6,
    ],
    'keyword': [definition_3],
    'punctuation': [GrammarToken(pattern: RegExp(definition_4))],
  });

  return LanguageProto(
    'phpdoc',
    definition_0,
    requiredDependencies: ['javadoclike'],
  );
}

final languagePhpdoc = _create();
