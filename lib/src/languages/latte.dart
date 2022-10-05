// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_7 = Grammar();
  const definition_4 = '\\{\\*[\\s\\S]*?\\*\\}';
  const definition_6 =
      '\\{[^\'"\\s{}*](?:[^"\'/{}]|\\/(?![*/])|("|\')(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*\\}';
  const definition_11 = '(^\\{(?:\\/(?=[a-z]))?)(?:[=_]|[a-z]\\w*\\b(?!\\())';
  const definition_13 = '^\\{\\/?|\\}\$';
  const definition_15 = '\\S(?:[\\s\\S]*\\S)?';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_6),
    greedy: true,
    inside: definition_7,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false),
    lookbehind: true,
    aliases: ['important'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['punctuation'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_15),
    aliases: ['language-php'],
    inside: 'php',
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_7.addAllTokens({
    'latte-tag': [definition_8],
    'delimiter': [definition_9],
    'php': [definition_10],
  });
  definition_0.addAllTokens({
    'latte-comment': [definition_1],
    'latte': [definition_2],
  });

  return LanguageProto(
    'latte',
    definition_0,
    requiredDependencies: ['markup', 'xml', 'php'],
  );
}

final languageLatte = _create();
