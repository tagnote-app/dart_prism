// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_6 = Grammar();
  final definition_19 = Grammar();
  final definition_24 = Grammar();
  const definition_3 = '^\\S.*';
  const definition_5 = '(^[ \\t]+)at[ \\t].*';
  const definition_14 =
      '^at[ \\t]+(?!\\s)(?:node\\.js|<unknown>|.*(?:node_modules|\\(<anonymous>\\)|\\(<unknown>|<anonymous>\$|\\(internal\\/|\\(node\\.js)).*';
  const definition_16 = '(\\bat\\s+(?!\\s)|\\()(?:[a-zA-Z]:)?[^():]+(?=:)';
  const definition_18 =
      '(\\bat\\s+(?:new\\s+)?)(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF<][.\$\\w\\xA0-\\uFFFF<>]*';
  const definition_25 = '\\.';
  const definition_10 = '[()]';
  const definition_11 = '\\b(?:at|new)\\b';
  const definition_20 =
      '\\[(?:as\\s+)?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF][\$\\w\\xA0-\\uFFFF]*\\]';
  const definition_22 = ':\\d+(?::\\d+)?\\b';
  const definition_26 = ':';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_3, multiLine: true),
    aliases: ['string'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_5, multiLine: true),
    lookbehind: true,
    inside: definition_6,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_14, multiLine: true),
    aliases: ['comment'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    aliases: ['url'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    inside: definition_19,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['variable'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_22),
    aliases: ['number'],
    inside: definition_24,
  );
  definition_19.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_25))],
  });
  definition_24.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_6.addAllTokens({
    'not-my-code': [definition_7],
    'filename': [definition_8],
    'function': [definition_9],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
    'keyword': [GrammarToken(pattern: RegExp(definition_11))],
    'alias': [definition_12],
    'line-number': [definition_13],
  });
  definition_0.addAllTokens({
    'error-message': [definition_1],
    'stack-frame': [definition_2],
  });

  return LanguageProto(
    'jsstacktrace',
    definition_0,
  );
}

final languageJsstacktrace = _create();
