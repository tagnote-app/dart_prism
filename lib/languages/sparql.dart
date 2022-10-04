// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  final definition_18 = Grammar();
  final definition_20 = Grammar();
  final definition_33 = Grammar();
  final definition_25 = Grammar();
  const definition_12 = '#.*';
  const definition_13 =
      '"""(?:(?:""?)?(?:[^"\\\\]|\\\\.))*"""|\'\'\'(?:(?:\'\'?)?(?:[^\'\\\\]|\\\\.))*\'\'\'';
  const definition_16 =
      '"(?:[^\\\\"\\r\\n]|\\\\.)*"|\'(?:[^\\\\\'\\r\\n]|\\\\.)*\'';
  const definition_17 =
      '<(?:[^\\x00-\\x20<>"{}|^`\\\\]|\\\\(?:u[\\da-fA-F]{4}|U[\\da-fA-F]{8}))*>';
  const definition_27 = '[<>]';
  const definition_19 =
      '(?:(?![-.\\d\\xB7])[-.\\w\\xB7\\xC0-\\uFFFD]+)?:(?:(?![-.])(?:[-.:\\w\\xC0-\\uFFFD]|%[\\da-f]{2}|\\\\.)+)?';
  const definition_31 = '([^:]*:)[\\s\\S]+';
  const definition_32 = '[\\s\\S]+';
  const definition_34 = ':';
  const definition_6 = '[+-]?\\b\\d+(?:\\.\\d*)?(?:e[+-]?\\d+)?';
  const definition_21 =
      '\\b(?:A|ADD|ALL|AS|ASC|ASK|BNODE|BY|CLEAR|CONSTRUCT|COPY|CREATE|DATA|DEFAULT|DELETE|DESC|DESCRIBE|DISTINCT|DROP|EXISTS|FILTER|FROM|GROUP|HAVING|INSERT|INTO|LIMIT|LOAD|MINUS|MOVE|NAMED|NOT|NOW|OFFSET|OPTIONAL|ORDER|RAND|REDUCED|SELECT|SEPARATOR|SERVICE|SILENT|STRUUID|UNION|USING|UUID|VALUES|WHERE)\\b';
  const definition_22 =
      '\\b(?:ABS|AVG|BIND|BOUND|CEIL|COALESCE|CONCAT|CONTAINS|COUNT|DATATYPE|DAY|ENCODE_FOR_URI|FLOOR|GROUP_CONCAT|HOURS|IF|IRI|isBLANK|isIRI|isLITERAL|isNUMERIC|isURI|LANG|LANGMATCHES|LCASE|MAX|MD5|MIN|MINUTES|MONTH|REGEX|REPLACE|ROUND|sameTerm|SAMPLE|SECONDS|SHA1|SHA256|SHA384|SHA512|STR|STRAFTER|STRBEFORE|STRDT|STRENDS|STRLANG|STRLEN|STRSTARTS|SUBSTR|SUM|TIMEZONE|TZ|UCASE|URI|YEAR)\\b(?=\\s*\\()';
  const definition_23 = '\\b(?:BASE|GRAPH|PREFIX)\\b';
  const definition_8 = '[{}.,;()[\\]]|\\^\\^';
  const definition_9 = '\\b(?:false|true)\\b';
  const definition_24 = '@[a-z]+(?:-[a-z\\d]+)*';
  const definition_30 = '@';
  const definition_26 = '[?\$]\\w+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    aliases: ['string'],
    inside: definition_15,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    inside: definition_18,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    inside: definition_20,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_32),
    inside: definition_33,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    inside: definition_25,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    global: true,
  );
  definition_15.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_12))],
  });
  definition_18.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_33.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_20.addAllTokens({
    'local-name': [definition_28],
    'prefix': [definition_29],
  });
  definition_25.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'multiline-string': [definition_2],
    'string': [definition_3],
    'url': [definition_4],
    'function': [definition_5],
    'number': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_21, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_22, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_23, caseSensitive: false)),
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'tag': [definition_10],
    'variable': [definition_11],
  });

  return LanguageProto(
    'sparql',
    definition_0,
    aliases: ['rq'],
    requiredDependencies: ['turtle'],
  );
}

final languageSparql = _create();
