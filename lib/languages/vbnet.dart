// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_11 = Grammar();
  final definition_20 = Grammar();
  final definition_28 = Grammar();
  final definition_37 = Grammar();
  final definition_50 = Grammar();
  final definition_39 = Grammar();
  final definition_51 = Grammar();
  final definition_32 = Grammar();
  final definition_34 = Grammar();
  final definition_17 = Grammar();
  const definition_9 = '\'\'\'.*';
  const definition_19 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_27 = '^(<\\/?)[^\\s>\\/]+';
  const definition_35 = '^[^\\s>\\/:]+:';
  const definition_36 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_42 = '^[^\\s=]+';
  const definition_49 = '=[\\s\\S]+';
  const definition_61 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_52 = '^=';
  const definition_65 = '"|\'';
  const definition_38 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_31 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_54 = '^(\\s*)["\']|["\']\$';
  const definition_55 = '&[\\da-z]{1,8};';
  const definition_48 = '&#x?[\\da-f]{1,8};';
  const definition_25 = '^<\\/?|\\/?>\$';
  const definition_33 = '[^\\s>\\/]+';
  const definition_16 = '(?:!|REM\\b).+';
  const definition_21 = '^REM';
  const definition_18 = '(^|[^\\\\:])\'.*';
  const definition_14 = '(^|[^"])"(?:""|[^"])*"(?!")';
  const definition_4 = '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:E[+-]?\\d+)?';
  const definition_5 =
      '(?:\\b(?:ADDHANDLER|ADDRESSOF|ALIAS|AND|ANDALSO|AS|BEEP|BLOAD|BOOLEAN|BSAVE|BYREF|BYTE|BYVAL|CALL(?: ABSOLUTE)?|CASE|CATCH|CBOOL|CBYTE|CCHAR|CDATE|CDBL|CDEC|CHAIN|CHAR|CHDIR|CINT|CLASS|CLEAR|CLNG|CLOSE|CLS|COBJ|COM|COMMON|CONST|CONTINUE|CSBYTE|CSHORT|CSNG|CSTR|CTYPE|CUINT|CULNG|CUSHORT|DATA|DATE|DECIMAL|DECLARE|DEF(?: FN| SEG|DBL|INT|LNG|SNG|STR)|DEFAULT|DELEGATE|DIM|DIRECTCAST|DO|DOUBLE|ELSE|ELSEIF|END|ENUM|ENVIRON|ERASE|ERROR|EVENT|EXIT|FALSE|FIELD|FILES|FINALLY|FOR(?: EACH)?|FRIEND|FUNCTION|GET|GETTYPE|GETXMLNAMESPACE|GLOBAL|GOSUB|GOTO|HANDLES|IF|IMPLEMENTS|IMPORTS|IN|INHERITS|INPUT|INTEGER|INTERFACE|IOCTL|IS|ISNOT|KEY|KILL|LET|LIB|LIKE|LINE INPUT|LOCATE|LOCK|LONG|LOOP|LSET|ME|MKDIR|MOD|MODULE|MUSTINHERIT|MUSTOVERRIDE|MYBASE|MYCLASS|NAME|NAMESPACE|NARROWING|NEW|NEXT|NOT|NOTHING|NOTINHERITABLE|NOTOVERRIDABLE|OBJECT|OF|OFF|ON(?: COM| ERROR| KEY| TIMER)?|OPEN|OPERATOR|OPTION(?: BASE)?|OPTIONAL|OR|ORELSE|OUT|OVERLOADS|OVERRIDABLE|OVERRIDES|PARAMARRAY|PARTIAL|POKE|PRIVATE|PROPERTY|PROTECTED|PUBLIC|PUT|RAISEEVENT|READ|READONLY|REDIM|REM|REMOVEHANDLER|RESTORE|RESUME|RETURN|RMDIR|RSET|RUN|SBYTE|SELECT(?: CASE)?|SET|SHADOWS|SHARED|SHELL|SHORT|SINGLE|SLEEP|STATIC|STEP|STOP|STRING|STRUCTURE|SUB|SWAP|SYNCLOCK|SYSTEM|THEN|THROW|TIMER|TO|TROFF|TRON|TRUE|TRY|TRYCAST|TYPE|TYPEOF|UINTEGER|ULONG|UNLOCK|UNTIL|USHORT|USING|VIEW PRINT|WAIT|WEND|WHEN|WHILE|WIDENING|WITH|WITHEVENTS|WRITE|WRITEONLY|XOR)|\\B(?:#CONST|#ELSE|#ELSEIF|#END|#IF))(?:\\\$|\\b)';
  const definition_6 =
      '\\b(?:ABS|ACCESS|ACOS|ANGLE|AREA|ARITHMETIC|ARRAY|ASIN|ASK|AT|ATN|BASE|BEGIN|BREAK|CAUSE|CEIL|CHR|CLIP|COLLATE|COLOR|CON|COS|COSH|COT|CSC|DATE|DATUM|DEBUG|DECIMAL|DEF|DEG|DEGREES|DELETE|DET|DEVICE|DISPLAY|DOT|ELAPSED|EPS|ERASABLE|EXLINE|EXP|EXTERNAL|EXTYPE|FILETYPE|FIXED|FP|GO|GRAPH|HANDLER|IDN|IMAGE|IN|INT|INTERNAL|IP|IS|KEYED|LBOUND|LCASE|LEFT|LEN|LENGTH|LET|LINE|LINES|LOG|LOG10|LOG2|LTRIM|MARGIN|MAT|MAX|MAXNUM|MID|MIN|MISSING|MOD|NATIVE|NUL|NUMERIC|OF|OPTION|ORD|ORGANIZATION|OUTIN|OUTPUT|PI|POINT|POINTER|POINTS|POS|PRINT|PROGRAM|PROMPT|RAD|RADIANS|RANDOMIZE|RECORD|RECSIZE|RECTYPE|RELATIVE|REMAINDER|REPEAT|REST|RETRY|REWRITE|RIGHT|RND|ROUND|RTRIM|SAME|SEC|SELECT|SEQUENTIAL|SET|SETTER|SGN|SIN|SINH|SIZE|SKIP|SQR|STANDARD|STATUS|STR|STREAM|STYLE|TAB|TAN|TANH|TEMPLATE|TEXT|THERE|TIME|TIMEOUT|TRACE|TRANSFORM|TRUNCATE|UBOUND|UCASE|USE|VAL|VARIABLE|VIEWPORT|WHEN|WINDOW|WITH|ZER|ZONEWIDTH)(?:\\\$|\\b)';
  const definition_7 =
      '<[=>]?|>=?|[+\\-*\\/^=&]|\\b(?:AND|EQV|IMP|NOT|OR|XOR)\\b';
  const definition_8 = '[,;:(){}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    aliases: ['comment'],
    inside: definition_11,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    inside: definition_28,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_36, caseSensitive: false),
    lookbehind: true,
    inside: definition_37,
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_49),
    inside: definition_50,
  );
  final definition_57 = GrammarToken(
    pattern: RegExp(definition_61),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_52),
    aliases: ['attr-equals'],
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_38, caseSensitive: false),
    lookbehind: true,
    inside: definition_39,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_49),
    inside: definition_51,
  );
  final definition_59 = GrammarToken(
    pattern: RegExp(definition_61),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_52),
    aliases: ['attr-equals'],
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_31),
    inside: definition_32,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_52),
    aliases: ['attr-equals'],
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_54),
    lookbehind: true,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_55, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_33),
    inside: definition_34,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    inside: definition_17,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_28.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_35))],
  });
  definition_50.addAllTokens({
    'value': [definition_57],
    'punctuation': [
      definition_64,
      GrammarToken(pattern: RegExp(definition_65)),
    ],
  });
  definition_37.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_42))],
    'attr-value': [definition_43],
  });
  definition_51.addAllTokens({
    'value': [definition_59],
    'punctuation': [
      definition_68,
      GrammarToken(pattern: RegExp(definition_65)),
    ],
  });
  definition_39.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_42))],
    'attr-value': [definition_44],
  });
  definition_32.addAllTokens({
    'punctuation': [
      definition_45,
      definition_46,
    ],
    'entity': [
      definition_47,
      GrammarToken(pattern: RegExp(definition_48, caseSensitive: false)),
    ],
  });
  definition_34.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_35))],
  });
  definition_20.addAllTokens({
    'tag': [definition_22],
    'special-attr': [
      definition_29,
      definition_30,
    ],
    'attr-value': [definition_24],
    'punctuation': [GrammarToken(pattern: RegExp(definition_25))],
    'attr-name': [definition_26],
  });
  definition_11.addAllTokens({
    'tag': [definition_15],
  });
  definition_17.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_21, caseSensitive: false))
    ],
  });
  definition_0.addAllTokens({
    'doc-comment': [definition_1],
    'comment': [
      definition_12,
      definition_13,
    ],
    'string': [definition_3],
    'number': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'function': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'vbnet',
    definition_0,
    requiredDependencies: ['basic'],
    optionalDependencies: ['xml-doc'],
  );
}

final languageVbnet = _create();
