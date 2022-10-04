// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  const definition_13 = ';.*';
  const definition_14 = '"(?:[^"\\r\\n]|"")*"';
  const definition_25 = '((?:^|[^\$])(?:\\\${2})*)\\\$\\w+';
  const definition_16 = '\'(?:[^\'\\r\\n]{0,4}|\'\')\'';
  const definition_17 = '\\|[\\w@]+\\|';
  const definition_5 = '\\b(?:FALSE|TRUE)\\b';
  const definition_19 =
      '\\b(?:ALIAS|ALIGN|AREA|ARM|ASSERT|ATTR|CN|CODE|CODE16|CODE32|COMMON|CP|DATA|DCB|DCD|DCDO|DCDU|DCFD|DCFDU|DCI|DCQ|DCQU|DCW|DCWU|DN|ELIF|ELSE|END|ENDFUNC|ENDIF|ENDP|ENTRY|EQU|EXPORT|EXPORTAS|EXTERN|FIELD|FILL|FN|FUNCTION|GBLA|GBLL|GBLS|GET|GLOBAL|IF|IMPORT|INCBIN|INCLUDE|INFO|KEEP|LCLA|LCLL|LCLS|LTORG|MACRO|MAP|MEND|MEXIT|NOFP|OPT|PRESERVE8|PROC|QN|READONLY|RELOC|REQUIRE|REQUIRE8|RLIST|ROUT|SETA|SETL|SETS|SN|SPACE|SUBT|THUMB|THUMBX|TTL|WEND|WHILE)\\b';
  const definition_20 =
      '((?:^|(?:^|[^\\\\])(?:\\r\\n?|\\n))[ \\t]*(?:(?:[A-Z][A-Z0-9_]*[a-z]\\w*|[a-z]\\w*|\\d+)[ \\t]+)?)\\b[A-Z.]+\\b';
  const definition_8 = '\\\$\\w+';
  const definition_9 =
      '(?:\\b[2-9]_\\d+|(?:\\b\\d+(?:\\.\\d+)?|\\B\\.\\d+)(?:e-?\\d+)?|\\b0(?:[fd]_|x)[0-9a-f]+|&[0-9a-f]+)\\b';
  const definition_22 = '\\b(?:r\\d|lr)\\b';
  const definition_11 = '<>|<<|>>|&&|\\|\\||[=!<>/]=?|[+\\-*%#?&|^]|:[A-Z]+:';
  const definition_12 = '[()[\\],]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    inside: definition_15,
    global: true,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['property'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_22),
    aliases: ['symbol'],
  );
  definition_15.addAllTokens({
    'variable': [definition_24],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'char': [definition_3],
    'version-symbol': [definition_4],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'directive': [definition_6],
    'instruction': [definition_7],
    'variable': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'register': [definition_10],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'armasm',
    definition_0,
    aliases: ['arm-asm'],
  );
}

final languageArmasm = _create();
