// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_7 = Grammar();
  const definition_4 = '\\\$this\\b';
  const definition_2 =
      '\\\$(?:GLOBALS|HTTP_RAW_POST_DATA|_(?:COOKIE|ENV|FILES|GET|POST|REQUEST|SERVER|SESSION)|argc|argv|http_response_header|php_errormsg)\\b';
  const definition_6 = '\\b[\\w\\\\]+::';
  const definition_8 = '\\b(?:parent|self|static)\\b';
  const definition_9 = '::|\\\\';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4),
    aliases: ['keyword'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_6),
    inside: definition_7,
  );
  definition_7.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });
  definition_0.addAllTokens({
    'this': [definition_1],
    'global': [GrammarToken(pattern: RegExp(definition_2))],
    'scope': [definition_3],
  });

  return LanguageProto(
    'php-extras',
    definition_0,
  );
}

final languagePhpExtras = _create();
