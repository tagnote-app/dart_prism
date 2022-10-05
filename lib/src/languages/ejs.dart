// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_8 = Grammar();
  const definition_5 = '<%#[\\s\\S]*?%>';
  const definition_6 = '<%%|%%>';
  const definition_7 = '<%(?![%#])[\\s\\S]*?%>';
  const definition_11 = '^<%[-_=]?|[-_]?%>\$';
  const definition_13 = '[\\s\\S]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_5),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_6),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_7),
    greedy: true,
    inside: definition_8,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_11),
    aliases: ['punctuation'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_13),
    inside: 'javascript',
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_8.addAllTokens({
    'delimiter': [definition_9],
    'language-javascript': [definition_10],
  });
  definition_0.addAllTokens({
    'ejs-comment': [definition_1],
    'escape': [definition_2],
    'ejs': [definition_3],
  });

  return LanguageProto(
    'ejs',
    definition_0,
    aliases: ['eta'],
    requiredDependencies: ['javascript', 'clike', 'markup', 'xml'],
  );
}

final languageEjs = _create();
