// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '^[ \\t]*[#!].*\$';
  const definition_5 =
      '(^[ \\t]*(?:\\\\(?:\\r\\n|[\\s\\S])|[^\\\\\\s:=])+(?: *[=:] *(?! )| ))(?:\\\\(?:\\r\\n|[\\s\\S])|[^\\\\\\r\\n])+';
  const definition_7 =
      '^[ \\t]*(?:\\\\(?:\\r\\n|[\\s\\S])|[^\\\\\\s:=])+(?= *[=:]| )';
  const definition_4 = '[=:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_5, multiLine: true),
    lookbehind: true,
    aliases: ['attr-value'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_7, multiLine: true),
    aliases: ['attr-name'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1, multiLine: true))],
    'value': [definition_2],
    'key': [definition_3],
    'punctuation': [GrammarToken(pattern: RegExp(definition_4))],
  });

  return LanguageProto(
    'properties',
    definition_0,
  );
}

final languageProperties = _create();
