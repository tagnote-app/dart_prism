// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '#.*|\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_10 =
      '"(?:[^"\\\\\\r\\n]|\\\\.)*"|\'(?:[^\'\\\\\\r\\n]|\\\\.)*\'|<\'(?:[^\\\\\']|\'(?!>)|\\\\.)*\'>';
  const definition_3 = '\\\$\\S+';
  const definition_11 = '@\\S+';
  const definition_5 =
      '\\b(?:BREAK|CHECKMACRO|CONTINUE|CUDF|DEFINED|DEFINEDMACRO|EVAL|FAIL|FOR|FOREACH|FORSTEP|IFT|IFTE|MSGFAIL|NRETURN|RETHROW|RETURN|SWITCH|TRY|UDF|UNTIL|WHILE)\\b';
  const definition_6 =
      '[+-]?\\b(?:NaN|Infinity|\\d+(?:\\.\\d*)?(?:[Ee][+-]?\\d+)?|0x[\\da-fA-F]+|0b[01]+)\\b';
  const definition_7 = '\\b(?:F|T|false|true)\\b';
  const definition_8 = '<%|%>|[{}[\\]()]';
  const definition_9 =
      '==|&&?|\\|\\|?|\\*\\*?|>>>?|<<|[<>!~]=?|[-/%^]|\\+!?|\\b(?:AND|NOT|OR)\\b';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11),
    aliases: ['property'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'variable': [GrammarToken(pattern: RegExp(definition_3))],
    'macro': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'number': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'warpscript',
    definition_0,
  );
}

final languageWarpscript = _create();
