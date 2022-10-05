// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_4 = Grammar();
  const definition_3 =
      '<%=?(?:[^\\r\\n]|[\\r\\n](?!=begin)|[\\r\\n]=begin\\s(?:[^\\r\\n]|[\\r\\n](?!=end))*[\\r\\n]=end)+?%>';
  const definition_7 = '^<%=?|%>\$';
  const definition_9 = '\\s*\\S[\\s\\S]*';
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
    aliases: ['language-ruby'],
    inside: 'ruby',
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_4.addAllTokens({
    'delimiter': [definition_5],
    'ruby': [definition_6],
  });
  definition_0.addAllTokens({
    'erb': [definition_1],
  });

  return LanguageProto(
    'erb',
    definition_0,
    requiredDependencies: ['ruby', 'clike', 'markup', 'xml'],
  );
}

final languageErb = _create();
