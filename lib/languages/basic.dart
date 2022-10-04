// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_9 = Grammar();
  const definition_8 = '(?:!|REM\\b).+';
  const definition_11 = '^REM';
  const definition_10 = '"(?:""|[!#\$%&\'()*,\\/:;<=>?^\\w +\\-.])*"';
  const definition_3 = '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:E[+-]?\\d+)?';
  const definition_4 =
      '\\b(?:AS|BEEP|BLOAD|BSAVE|CALL(?: ABSOLUTE)?|CASE|CHAIN|CHDIR|CLEAR|CLOSE|CLS|COM|COMMON|CONST|DATA|DECLARE|DEF(?: FN| SEG|DBL|INT|LNG|SNG|STR)|DIM|DO|DOUBLE|ELSE|ELSEIF|END|ENVIRON|ERASE|ERROR|EXIT|FIELD|FILES|FOR|FUNCTION|GET|GOSUB|GOTO|IF|INPUT|INTEGER|IOCTL|KEY|KILL|LINE INPUT|LOCATE|LOCK|LONG|LOOP|LSET|MKDIR|NAME|NEXT|OFF|ON(?: COM| ERROR| KEY| TIMER)?|OPEN|OPTION BASE|OUT|POKE|PUT|READ|REDIM|REM|RESTORE|RESUME|RETURN|RMDIR|RSET|RUN|SELECT CASE|SHARED|SHELL|SINGLE|SLEEP|STATIC|STEP|STOP|STRING|SUB|SWAP|SYSTEM|THEN|TIMER|TO|TROFF|TRON|TYPE|UNLOCK|UNTIL|USING|VIEW PRINT|WAIT|WEND|WHILE|WRITE)(?:\\\$|\\b)';
  const definition_5 =
      '\\b(?:ABS|ACCESS|ACOS|ANGLE|AREA|ARITHMETIC|ARRAY|ASIN|ASK|AT|ATN|BASE|BEGIN|BREAK|CAUSE|CEIL|CHR|CLIP|COLLATE|COLOR|CON|COS|COSH|COT|CSC|DATE|DATUM|DEBUG|DECIMAL|DEF|DEG|DEGREES|DELETE|DET|DEVICE|DISPLAY|DOT|ELAPSED|EPS|ERASABLE|EXLINE|EXP|EXTERNAL|EXTYPE|FILETYPE|FIXED|FP|GO|GRAPH|HANDLER|IDN|IMAGE|IN|INT|INTERNAL|IP|IS|KEYED|LBOUND|LCASE|LEFT|LEN|LENGTH|LET|LINE|LINES|LOG|LOG10|LOG2|LTRIM|MARGIN|MAT|MAX|MAXNUM|MID|MIN|MISSING|MOD|NATIVE|NUL|NUMERIC|OF|OPTION|ORD|ORGANIZATION|OUTIN|OUTPUT|PI|POINT|POINTER|POINTS|POS|PRINT|PROGRAM|PROMPT|RAD|RADIANS|RANDOMIZE|RECORD|RECSIZE|RECTYPE|RELATIVE|REMAINDER|REPEAT|REST|RETRY|REWRITE|RIGHT|RND|ROUND|RTRIM|SAME|SEC|SELECT|SEQUENTIAL|SET|SETTER|SGN|SIN|SINH|SIZE|SKIP|SQR|STANDARD|STATUS|STR|STREAM|STYLE|TAB|TAN|TANH|TEMPLATE|TEXT|THERE|TIME|TIMEOUT|TRACE|TRANSFORM|TRUNCATE|UBOUND|UCASE|USE|VAL|VARIABLE|VIEWPORT|WHEN|WINDOW|WITH|ZER|ZONEWIDTH)(?:\\\$|\\b)';
  const definition_6 =
      '<[=>]?|>=?|[+\\-*\\/^=&]|\\b(?:AND|EQV|IMP|NOT|OR|XOR)\\b';
  const definition_7 = '[,;:()]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_8, caseSensitive: false),
    inside: definition_9,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  definition_9.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_11, caseSensitive: false))
    ],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'number': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'function': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'basic',
    definition_0,
  );
}

final languageBasic = _create();
