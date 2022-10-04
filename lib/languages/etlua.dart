// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_4 = Grammar();
  const definition_3 = '<%[\\s\\S]+?%>';
  const definition_7 = '^<%[-=]?|-?%>\$';
  const definition_9 = '[\\s\\S]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_3),
    inside: definition_4,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_7),
    aliases: ['punctuation'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_9),
    inside: 'lua',
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_4.addAllTokens({
    'delimiter': [definition_5],
    'language-lua': [definition_6],
  });
  definition_0.addAllTokens({
    'etlua': [definition_1],
  });

  return LanguageProto(
    'etlua',
    definition_0,
    requiredDependencies: ['lua', 'markup', 'xml'],
  );
}

final languageEtlua = _create();
