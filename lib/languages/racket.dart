// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 =
      ';.*|#;\\s*(?:\\((?:[^()]|\\([^()]*\\))*\\)|\\[(?:[^\\[\\]]|\\[[^\\[\\]]*\\])*\\])|#\\|(?:[^#|]|#(?!\\|)|\\|(?!#)|#\\|(?:[^#|]|#(?!\\|)|\\|(?!#))*\\|#)*\\|#';
  const definition_15 = '^#lang.+';
  const definition_17 = '"(?:[^"\\\\]|\\\\.)*"';
  const definition_18 = '\'[^()\\[\\]#\'\\s]+';
  const definition_19 =
      '#\\\\(?:[ux][a-fA-F\\d]+\\b|[-a-zA-Z]+\\b|[\\uD800-\\uDBFF][\\uDC00-\\uDFFF]|\\S)';
  const definition_20 = '([(\\[]lambda\\s+[(\\[])[^()\\[\\]\'\\s]+';
  const definition_21 =
      '((?:^|[^\'`#])[(\\[])(?:begin|case(?:-lambda)?|cond(?:-expand)?|define(?:-library|-macro|-record-type|-syntax|-values)?|defmacro|delay(?:-force)?|do|else|except|export|guard|if|import|include(?:-ci|-library-declarations)?|lambda|let(?:rec)?(?:-syntax|-values|\\*)?|let\\*-values|only|parameterize|prefix|(?:quasi-?)?quote|rename|set!|syntax-(?:case|rules)|unless|unquote(?:-splicing)?|when)(?=[()\\[\\]\\s]|\$)';
  const definition_22 =
      '((?:^|[^\'`#])[(\\[])(?:abs|and|append|apply|assoc|ass[qv]|binary-port\\?|boolean=?\\?|bytevector(?:-append|-copy|-copy!|-length|-u8-ref|-u8-set!|\\?)?|caar|cadr|call-with-(?:current-continuation|port|values)|call\\/cc|car|cdar|cddr|cdr|ceiling|char(?:->integer|-ready\\?|\\?|<\\?|<=\\?|=\\?|>\\?|>=\\?)|close-(?:input-port|output-port|port)|complex\\?|cons|current-(?:error|input|output)-port|denominator|dynamic-wind|eof-object\\??|eq\\?|equal\\?|eqv\\?|error|error-object(?:-irritants|-message|\\?)|eval|even\\?|exact(?:-integer-sqrt|-integer\\?|\\?)?|expt|features|file-error\\?|floor(?:-quotient|-remainder|\\/)?|flush-output-port|for-each|gcd|get-output-(?:bytevector|string)|inexact\\??|input-port(?:-open\\?|\\?)|integer(?:->char|\\?)|lcm|length|list(?:->string|->vector|-copy|-ref|-set!|-tail|\\?)?|make-(?:bytevector|list|parameter|string|vector)|map|max|member|memq|memv|min|modulo|negative\\?|newline|not|null\\?|number(?:->string|\\?)|numerator|odd\\?|open-(?:input|output)-(?:bytevector|string)|or|output-port(?:-open\\?|\\?)|pair\\?|peek-char|peek-u8|port\\?|positive\\?|procedure\\?|quotient|raise|raise-continuable|rational\\?|rationalize|read-(?:bytevector|bytevector!|char|error\\?|line|string|u8)|real\\?|remainder|reverse|round|set-c[ad]r!|square|string(?:->list|->number|->symbol|->utf8|->vector|-append|-copy|-copy!|-fill!|-for-each|-length|-map|-ref|-set!|\\?|<\\?|<=\\?|=\\?|>\\?|>=\\?)?|substring|symbol(?:->string|\\?|=\\?)|syntax-error|textual-port\\?|truncate(?:-quotient|-remainder|\\/)?|u8-ready\\?|utf8->string|values|vector(?:->list|->string|-append|-copy|-copy!|-fill!|-for-each|-length|-map|-ref|-set!|\\?)?|with-exception-handler|write-(?:bytevector|char|string|u8)|zero\\?)(?=[()\\[\\]\\s]|\$)';
  const definition_23 =
      '((?:^|[^\'`#])[(\\[])(?:[-+*%/]|[<>]=?|=>?)(?=[()\\[\\]\\s]|\$)';
  const definition_24 =
      '(^|[()\\[\\]\\s])(?:(?:(?:#d(?:#[ei])?|#[ei](?:#d)?)?(?:(?:[+-]?(?:\\d+(?:\\/\\d+)|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[esfdl][+-]?\\d+)?)|[+-](?:inf|nan)\\.0)(?:@(?:[+-]?(?:\\d+(?:\\/\\d+)|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[esfdl][+-]?\\d+)?)|[+-](?:inf|nan)\\.0)|(?:[+-](?:(?:\\d+(?:\\/\\d+)|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[esfdl][+-]?\\d+)?)|(?:inf|nan)\\.0)?i))?|(?:[+-](?:(?:\\d+(?:\\/\\d+)|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[esfdl][+-]?\\d+)?)|(?:inf|nan)\\.0)?i)))|(?:#[box](?:#[ei])?|(?:#[ei])?#[box](?:(?:[+-]?(?:[0-9a-f]+(?:\\/[0-9a-f]+)?)|[+-](?:inf|nan)\\.0)(?:@(?:[+-]?(?:[0-9a-f]+(?:\\/[0-9a-f]+)?)|[+-](?:inf|nan)\\.0)|(?:[+-](?:(?:[0-9a-f]+(?:\\/[0-9a-f]+)?)|(?:inf|nan)\\.0)?i))?|(?:[+-](?:(?:[0-9a-f]+(?:\\/[0-9a-f]+)?)|(?:inf|nan)\\.0)?i))))(?=[()\\[\\]\\s]|\$)';
  const definition_25 =
      '(^|[()\\[\\]\\s])#(?:[ft]|false|true)(?=[()\\[\\]\\s]|\$)';
  const definition_26 =
      '((?:^|[^\'`#])[(\\[])(?:[^|()\\[\\]\'\\s]+|\\|(?:[^\\\\|]|\\\\.)*\\|)(?=[()\\[\\]\\s]|\$)';
  const definition_27 =
      '(^|[()\\[\\]\\s])\\|(?:[^\\\\|]|\\\\.)*\\|(?=[()\\[\\]\\s]|\$)';
  const definition_14 = '[()\\[\\]\']';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_15, multiLine: true),
    greedy: true,
    aliases: ['keyword'],
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'lang': [definition_2],
    'string': [definition_3],
    'symbol': [definition_4],
    'char': [definition_5],
    'lambda-parameter': [definition_6],
    'keyword': [definition_7],
    'builtin': [definition_8],
    'operator': [definition_9],
    'number': [definition_10],
    'boolean': [definition_11],
    'function': [definition_12],
    'identifier': [definition_13],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
  });

  return LanguageProto(
    'racket',
    definition_0,
    aliases: ['rkt'],
    requiredDependencies: ['scheme'],
  );
}

final languageRacket = _create();
