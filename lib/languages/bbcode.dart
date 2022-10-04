// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_3 = Grammar();
  final definition_9 = Grammar();
  final definition_11 = Grammar();
  const definition_2 =
      '\\[\\/?[^\\s=\\]]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'"\\]=]+))?(?:\\s+[^\\s=\\]]+\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'"\\]=]+))*\\s*\\]';
  const definition_8 = '^\\[\\/?[^\\s=\\]]+';
  const definition_12 = '^\\[\\/?';
  const definition_10 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'"\\]=]+)';
  const definition_14 = '^=';
  const definition_16 = '^(\\s*)["\']|["\']\$';
  const definition_6 = '\\]';
  const definition_7 = '[^\\s=\\]]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_2),
    inside: definition_3,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_8),
    inside: definition_9,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_10),
    inside: definition_11,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
  );
  definition_9.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });
  definition_11.addAllTokens({
    'punctuation': [
      GrammarToken(pattern: RegExp(definition_14)),
      definition_15,
    ],
  });
  definition_3.addAllTokens({
    'tag': [definition_4],
    'attr-value': [definition_5],
    'punctuation': [GrammarToken(pattern: RegExp(definition_6))],
    'attr-name': [GrammarToken(pattern: RegExp(definition_7))],
  });
  definition_0.addAllTokens({
    'tag': [definition_1],
  });

  return LanguageProto(
    'bbcode',
    definition_0,
    aliases: ['shortcode'],
  );
}

final languageBbcode = _create();
