// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_7 = '::.*';
  const definition_8 = '"(?:[^"\\\\]|\\\\.)*"|\'(?:[^\'\\\\]|\\\\.)*\'';
  const definition_3 = '%(?:\\.[ny]|[\\w-]+)';
  const definition_4 = '@(?:[a-z0-9-]*[a-z0-9])?|\\*';
  const definition_5 = '(?:\\+[-+] {2})?(?:[a-z](?:[a-z0-9-]*[a-z0-9])?)';
  const definition_6 =
      '\\.[\\^\\+\\*=\\?]|![><:\\.=\\?!]|=[>|:,\\.\\-\\^<+;/~\\*\\?]|\\?[>|:\\.\\-\\^<\\+&~=@!]|\\|[\\\$_%:\\.\\-\\^~\\*=@\\?]|\\+[|\\\$\\+\\*]|:[_\\-\\^\\+~\\*]|%[_:\\.\\-\\^\\+~\\*=]|\\^[|:\\.\\-\\+&~\\*=\\?]|\\\$[|_%:<>\\-\\^&~@=\\?]|;[:<\\+;\\/~\\*=]|~[>|\\\$_%<\\+\\/&=\\?!]|--|==';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_7),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'constant': [GrammarToken(pattern: RegExp(definition_3))],
    'class-name': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
  });

  return LanguageProto(
    'hoon',
    definition_0,
  );
}

final languageHoon = _create();
