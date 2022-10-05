// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_12 = '(^|[^\\\\])(?:\\/\\*[\\s\\S]*?\\*\\/|\\/\\/.*)';
  const definition_13 = '#"(?:[^"\\r\\n]|"")*"(?!")';
  const definition_14 = '(?:#!)?"(?:[^"\\r\\n]|"")*"(?!")';
  const definition_15 =
      '\\bDay\\.(?:Friday|Monday|Saturday|Sunday|Thursday|Tuesday|Wednesday)\\b';
  const definition_16 =
      '\\bTraceLevel\\.(?:Critical|Error|Information|Verbose|Warning)\\b';
  const definition_17 = '\\bOccurrence\\.(?:All|First|Last)\\b';
  const definition_18 = '\\bOrder\\.(?:Ascending|Descending)\\b';
  const definition_19 =
      '\\bRoundingMode\\.(?:AwayFromZero|Down|ToEven|TowardZero|Up)\\b';
  const definition_20 = '\\bMissingField\\.(?:Error|Ignore|UseNull)\\b';
  const definition_21 = '\\bQuoteStyle\\.(?:Csv|None)\\b';
  const definition_22 =
      '\\bJoinKind\\.(?:FullOuter|Inner|LeftAnti|LeftOuter|RightAnti|RightOuter)\\b';
  const definition_23 = '\\bGroupKind\\.(?:Global|Local)\\b';
  const definition_24 = '\\bExtraValues\\.(?:Error|Ignore|List)\\b';
  const definition_25 =
      '\\bJoinAlgorithm\\.(?:Dynamic|LeftHash|LeftIndex|PairwiseHash|RightHash|RightIndex|SortMerge)\\b';
  const definition_26 = '\\bJoinSide\\.(?:Left|Right)\\b';
  const definition_27 = '\\bPrecision\\.(?:Decimal|Double)\\b';
  const definition_28 = '\\bRelativePosition\\.From(?:End|Start)\\b';
  const definition_29 =
      '\\bTextEncoding\\.(?:Ascii|BigEndianUnicode|Unicode|Utf16|Utf8|Windows)\\b';
  const definition_30 =
      '\\b(?:Any|Binary|Date|DateTime|DateTimeZone|Duration|Function|Int16|Int32|Int64|Int8|List|Logical|None|Number|Record|Table|Text|Time)\\.Type\\b';
  const definition_31 = '\\bnull\\b';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 =
      '\\b(?:and|as|each|else|error|if|in|is|let|meta|not|nullable|optional|or|otherwise|section|shared|then|try|type)\\b|#(?:binary|date|datetime|datetimezone|duration|infinity|nan|sections|shared|table|time)\\b';
  const definition_32 = '(^|[^#\\w.])[a-z_][\\w.]*(?=\\s*\\()';
  const definition_33 =
      '\\b(?:any|anynonnull|binary|date|datetime|datetimezone|duration|function|list|logical|none|number|record|table|text|time)\\b';
  const definition_35 =
      '\\b0x[\\da-f]+\\b|(?:[+-]?(?:\\b\\d+\\.)?\\b\\d+|[+-]\\.\\d+|(^|[^.])\\B\\.\\d+)(?:e[+-]?\\d+)?\\b';
  const definition_10 = '[-+*\\/&?@^]|<(?:=>?|>)?|>=?|=>?|\\.\\.\\.?';
  const definition_11 = '[,;\\[\\](){}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_32, caseSensitive: false),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['class-name'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_35, caseSensitive: false),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'quoted-identifier': [definition_2],
    'string': [definition_3],
    'constant': [
      GrammarToken(pattern: RegExp(definition_15)),
      GrammarToken(pattern: RegExp(definition_16)),
      GrammarToken(pattern: RegExp(definition_17)),
      GrammarToken(pattern: RegExp(definition_18)),
      GrammarToken(pattern: RegExp(definition_19)),
      GrammarToken(pattern: RegExp(definition_20)),
      GrammarToken(pattern: RegExp(definition_21)),
      GrammarToken(pattern: RegExp(definition_22)),
      GrammarToken(pattern: RegExp(definition_23)),
      GrammarToken(pattern: RegExp(definition_24)),
      GrammarToken(pattern: RegExp(definition_25)),
      GrammarToken(pattern: RegExp(definition_26)),
      GrammarToken(pattern: RegExp(definition_27)),
      GrammarToken(pattern: RegExp(definition_28)),
      GrammarToken(pattern: RegExp(definition_29)),
      GrammarToken(pattern: RegExp(definition_30)),
      GrammarToken(pattern: RegExp(definition_31)),
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [definition_7],
    'data-type': [definition_8],
    'number': [definition_9],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'powerquery',
    definition_0,
    aliases: ['pq', 'mscript'],
  );
}

final languagePowerquery = _create();
