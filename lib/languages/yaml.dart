// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_13 =
      '([\\-:]\\s*(?:\\s(?:!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?(?:[ 	]+[*&][^\\s[\\]{},]+)?|[*&][^\\s[\\]{},]+(?:[ 	]+!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?)?)[ \\t]+)?[|>])[ \\t]*(?:((?:\\r?\\n|\\r)[ \\t]+)\\S[^\\r\\n]*(?:\\2[^\\r\\n]+)*)';
  const definition_2 = '#.*';
  const definition_15 =
      '((?:^|[:\\-,[{\\r\\n?])[ \\t]*(?:(?:!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?(?:[ 	]+[*&][^\\s[\\]{},]+)?|[*&][^\\s[\\]{},]+(?:[ 	]+!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?)?)[ \\t]+)?)(?:(?:[^\\s\\x00-\\x08\\x0e-\\x1f!"#%&\'*,\\-:>?@[\\]`{|}\\x7f-\\x84\\x86-\\x9f\\ud800-\\udfff\\ufffe\\uffff]|[?:-][^\\s\\x00-\\x08\\x0e-\\x1f,[\\]{}\\x7f-\\x84\\x86-\\x9f\\ud800-\\udfff\\ufffe\\uffff])(?:[ \\t]*(?:(?![#:])[^\\s\\x00-\\x08\\x0e-\\x1f,[\\]{}\\x7f-\\x84\\x86-\\x9f\\ud800-\\udfff\\ufffe\\uffff]|:[^\\s\\x00-\\x08\\x0e-\\x1f,[\\]{}\\x7f-\\x84\\x86-\\x9f\\ud800-\\udfff\\ufffe\\uffff]))*|"(?:[^"\\\\\\r\\n]|\\\\.)*"|\'(?:[^\'\\\\\\r\\n]|\\\\.)*\')(?=\\s*:\\s)';
  const definition_17 = '(^[ \\t]*)%.+';
  const definition_19 =
      '([:\\-,[{]\\s*(?:\\s(?:!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?(?:[ 	]+[*&][^\\s[\\]{},]+)?|[*&][^\\s[\\]{},]+(?:[ 	]+!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?)?)[ \\t]+)?)(?:\\d{4}-\\d\\d?-\\d\\d?(?:[tT]|[ \\t]+)\\d\\d?:\\d{2}:\\d{2}(?:\\.\\d*)?(?:[ \\t]*(?:Z|[-+]\\d\\d?(?::\\d{2})?))?|\\d{4}-\\d{2}-\\d{2}|\\d\\d?:\\d{2}(?::\\d{2}(?:\\.\\d*)?)?)(?=[ \\t]*(?:\$|,|\\]|\\}|(?:[\\r\\n]\\s*)?#))';
  const definition_21 =
      '([:\\-,[{]\\s*(?:\\s(?:!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?(?:[ 	]+[*&][^\\s[\\]{},]+)?|[*&][^\\s[\\]{},]+(?:[ 	]+!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?)?)[ \\t]+)?)(?:false|true)(?=[ \\t]*(?:\$|,|\\]|\\}|(?:[\\r\\n]\\s*)?#))';
  const definition_22 =
      '([:\\-,[{]\\s*(?:\\s(?:!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?(?:[ 	]+[*&][^\\s[\\]{},]+)?|[*&][^\\s[\\]{},]+(?:[ 	]+!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?)?)[ \\t]+)?)(?:null|~)(?=[ \\t]*(?:\$|,|\\]|\\}|(?:[\\r\\n]\\s*)?#))';
  const definition_23 =
      '([:\\-,[{]\\s*(?:\\s(?:!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?(?:[ 	]+[*&][^\\s[\\]{},]+)?|[*&][^\\s[\\]{},]+(?:[ 	]+!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?)?)[ \\t]+)?)(?:"(?:[^"\\\\\\r\\n]|\\\\.)*"|\'(?:[^\'\\\\\\r\\n]|\\\\.)*\')(?=[ \\t]*(?:\$|,|\\]|\\}|(?:[\\r\\n]\\s*)?#))';
  const definition_24 =
      '([:\\-,[{]\\s*(?:\\s(?:!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?(?:[ 	]+[*&][^\\s[\\]{},]+)?|[*&][^\\s[\\]{},]+(?:[ 	]+!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?)?)[ \\t]+)?)(?:[+-]?(?:0x[\\da-f]+|0o[0-7]+|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:e[+-]?\\d+)?|\\.inf|\\.nan))(?=[ \\t]*(?:\$|,|\\]|\\}|(?:[\\r\\n]\\s*)?#))';
  const definition_10 =
      '!(?:<[\\w\\-%#;/?:@&=+\$,.!~*\'()[\\]]+>|(?:[a-zA-Z\\d-]*!)?[\\w\\-%#;/?:@&=+\$.~*\'()]+)?';
  const definition_11 = '[*&][^\\s[\\]{},]+';
  const definition_12 = '---|[:[\\]{}\\-,|>?]|\\.\\.\\.';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    aliases: ['string'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    greedy: true,
    aliases: ['atrule'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17, multiLine: true),
    lookbehind: true,
    aliases: ['important'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19, multiLine: true),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['important'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['important'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_23, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false, multiLine: true),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'scalar': [definition_1],
    'comment': [GrammarToken(pattern: RegExp(definition_2))],
    'key': [definition_3],
    'directive': [definition_4],
    'datetime': [definition_5],
    'boolean': [definition_6],
    'null': [definition_7],
    'string': [definition_8],
    'number': [definition_9],
    'tag': [GrammarToken(pattern: RegExp(definition_10))],
    'important': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'yaml',
    definition_0,
    aliases: ['yml'],
  );
}

final languageYaml = _create();
