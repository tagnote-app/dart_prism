// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  const definition_9 = '[BOZ]([\'"])[A-F0-9]+\\1';
  const definition_11 =
      '(?:\\b\\w+_)?([\'"])(?:\\1\\1|&(?:\\r\\n?|\\n)(?:[ \\t]*!.*(?:\\r\\n?|\\n)|(?![ \\t]*!))|(?!\\1).)*(?:\\1|&)';
  const definition_22 = '(&(?:\\r\\n?|\\n)\\s*)!.*';
  const definition_13 = '!.*';
  const definition_4 = '\\.(?:FALSE|TRUE)\\.(?:_\\w+)?';
  const definition_5 =
      '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[ED][+-]?\\d+)?(?:_\\w+)?';
  const definition_14 =
      '\\b(?:CHARACTER|COMPLEX|DOUBLE ?PRECISION|INTEGER|LOGICAL|REAL)\\b';
  const definition_15 =
      '\\b(?:END ?)?(?:BLOCK ?DATA|DO|FILE|FORALL|FUNCTION|IF|INTERFACE|MODULE(?! PROCEDURE)|PROGRAM|SELECT|SUBROUTINE|TYPE|WHERE)\\b';
  const definition_16 =
      '\\b(?:ALLOCATABLE|ALLOCATE|BACKSPACE|CALL|CASE|CLOSE|COMMON|CONTAINS|CONTINUE|CYCLE|DATA|DEALLOCATE|DIMENSION|DO|END|EQUIVALENCE|EXIT|EXTERNAL|FORMAT|GO ?TO|IMPLICIT(?: NONE)?|INQUIRE|INTENT|INTRINSIC|MODULE PROCEDURE|NAMELIST|NULLIFY|OPEN|OPTIONAL|PARAMETER|POINTER|PRINT|PRIVATE|PUBLIC|READ|RETURN|REWIND|SAVE|SELECT|STOP|TARGET|WHILE|WRITE)\\b';
  const definition_17 =
      '\\b(?:ASSIGNMENT|DEFAULT|ELEMENTAL|ELSE|ELSEIF|ELSEWHERE|ENTRY|IN|INCLUDE|INOUT|KIND|NULL|ONLY|OPERATOR|OUT|PURE|RECURSIVE|RESULT|SEQUENCE|STAT|THEN|USE)\\b';
  const definition_18 =
      '\\*\\*|\\/\\/|=>|[=\\/]=|[<>]=?|::|[+\\-*=%]|\\.[A-Z]+\\.';
  const definition_21 = '(^|(?!\\().)\\/(?!\\))';
  const definition_8 = '\\(\\/|\\/\\)|[(),;:&]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9, caseSensitive: false),
    aliases: ['number'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    inside: definition_12,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
  );
  definition_12.addAllTokens({
    'comment': [definition_20],
  });
  definition_0.addAllTokens({
    'quoted-number': [definition_1],
    'string': [definition_2],
    'comment': [definition_3],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_14, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_15, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_16, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_17, caseSensitive: false)),
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_18, caseSensitive: false)),
      definition_19,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'fortran',
    definition_0,
  );
}

final languageFortran = _create();
