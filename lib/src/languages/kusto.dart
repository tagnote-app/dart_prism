// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_13 = '\\/\\/.*';
  const definition_14 =
      '```[\\s\\S]*?```|[hH]?(?:"(?:[^\\r\\n\\\\"]|\\\\.)*"|\'(?:[^\\r\\n\\\\\']|\\\\.)*\'|@(?:"[^\\r\\n"]*"|\'[^\\r\\n\']*\'))';
  const definition_15 = '(\\|\\s*)[a-z][\\w-]*';
  const definition_17 = '\\.[a-z][a-z\\d-]*\\b';
  const definition_5 =
      '\\b(?:bool|datetime|decimal|dynamic|guid|int|long|real|string|timespan)\\b';
  const definition_6 =
      '\\b(?:access|alias|and|anti|as|asc|auto|between|by|(?:contains|(?:ends|starts)with|has(?:perfix|suffix)?)(?:_cs)?|database|declare|desc|external|from|fullouter|has_all|in|ingestion|inline|inner|innerunique|into|(?:left|right)(?:anti(?:semi)?|inner|outer|semi)?|let|like|local|not|of|on|or|pattern|print|query_parameters|range|restrict|schema|set|step|table|tables|to|view|where|with|matches\\s+regex|nulls\\s+(?:first|last))(?![\\w-])';
  const definition_7 = '\\b(?:false|null|true)\\b';
  const definition_8 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_20 =
      '\\b(?:(?:Fri|Friday|Mon|Monday|Sat|Saturday|Sun|Sunday|Thu|Thursday|Tue|Tuesday|Wed|Wednesday)\\s*,\\s*)?\\d{1,2}(?:\\s+|-)(?:Apr|Aug|Dec|Feb|Jan|Jul|Jun|Mar|May|Nov|Oct|Sep)(?:\\s+|-)\\d{2}\\s+\\d{2}:\\d{2}(?::\\d{2})?(?:\\s*(?:\\b(?:[A-Z]|(?:[ECMT][DS]|GM|U)T)|[+-]\\d{4}))?\\b';
  const definition_22 =
      '[+-]?\\b(?:\\d{4}-\\d{2}-\\d{2}(?:[ T]\\d{2}:\\d{2}(?::\\d{2}(?:\\.\\d+)?)?)?|\\d{2}:\\d{2}(?::\\d{2}(?:\\.\\d+)?)?)Z?';
  const definition_10 =
      '\\b(?:0x[0-9A-Fa-f]+|\\d+(?:\\.\\d+)?(?:[Ee][+-]?\\d+)?)(?:(?:min|sec|[mnµ]s|[dhms]|microsecond|tick)\\b)?|[+-]?\\binf\\b';
  const definition_11 = '=>|[!=]~|[!=<>]=?|[-+*/%|]|\\.\\.';
  const definition_12 = '[()\\[\\]{},;.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['keyword'],
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['number'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_22),
    aliases: ['number'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'verb': [definition_3],
    'command': [definition_4],
    'class-name': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'function': [GrammarToken(pattern: RegExp(definition_8))],
    'datetime': [
      definition_18,
      definition_19,
    ],
    'number': [GrammarToken(pattern: RegExp(definition_10))],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'kusto',
    definition_0,
  );
}

final languageKusto = _create();
