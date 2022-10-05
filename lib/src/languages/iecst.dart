// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_18 =
      '(^|[^\\\\])(?:\\/\\*[\\s\\S]*?(?:\\*\\/|\$)|\\(\\*[\\s\\S]*?(?:\\*\\)|\$)|\\{[\\s\\S]*?(?:\\}|\$))';
  const definition_19 = '(^|[^\\\\:])\\/\\/.*';
  const definition_13 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_14 =
      '\\b(?:END_)?(?:ACTION|CHANNEL|CONFIGURATION|FOLDER|FUNCTION|FUNCTION_BLOCK|(?:INITIAL_)?STEP|INTERFACE|LIBRARY|METHOD|NAMESPACE|PROGRAM|PROPERTY|RESOURCE|STRUCT|TRANSITION|TYPE|VAR|VAR_(?:ACCESS|CONFIG|EXTERNAL|GLOBAL|INPUT|IN_OUT|OUTPUT|TEMP))\\b';
  const definition_15 =
      '\\b(?:AT|BY|(?:END_)?(?:CASE|FOR|IF|REPEAT|WHILE)|CONSTANT|CONTINUE|DO|ELSE|ELSIF|EXIT|EXTENDS|FROM|GET|GOTO|IMPLEMENTS|JMP|NON_RETAIN|OF|PRIVATE|PROTECTED|PUBLIC|RETAIN|RETURN|SET|TASK|THEN|TO|UNTIL|USING|WITH|__CATCH|__ENDTRY|__FINALLY|__TRY)\\b';
  const definition_4 =
      '\\b(?:ANY|ARRAY|BOOL|BYTE|DATE(?:_AND_TIME)?|U?(?:D|L|S)?INT|DT|(?:D|L)?WORD|L?REAL|POINTER|STRING|TIME(?:_OF_DAY)?|TOD)\\b';
  const definition_16 = '%[IQM][XBWDL][\\d.]*|%[IQ][\\d.]*';
  const definition_6 =
      '\\b(?:16#[\\da-f]+|2#[01_]+|0x[\\da-f]+)\\b|\\b(?:D|DT|T|TOD)#[\\d_shmd:]*|\\b[A-Z]*#[\\d.,_]*|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_7 = '\\b(?:FALSE|NULL|TRUE)\\b';
  const definition_8 =
      'S?R?:?=>?|&&?|\\*\\*?|<[=>]?|>=?|[-:^/+#]|\\b(?:AND|EQ|EXPT|GE|GT|LE|LT|MOD|NE|NOT|OR|XOR)\\b';
  const definition_9 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_10 = '[()[\\].,;]';
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['symbol'],
  );
  definition_0.addAllTokens({
    'comment': [
      definition_11,
      definition_12,
    ],
    'string': [definition_2],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_14, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_15)),
    ],
    'class-name': [GrammarToken(pattern: RegExp(definition_4))],
    'address': [definition_5],
    'number': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'function': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'iecst',
    definition_0,
  );
}

final languageIecst = _create();
