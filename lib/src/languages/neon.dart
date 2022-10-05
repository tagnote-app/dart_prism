// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_10 = '#.*';
  const definition_11 =
      '(^|[[{(=:,\\s])\\d\\d\\d\\d-\\d\\d?-\\d\\d?(?:(?:[Tt]| +)\\d\\d?:\\d\\d:\\d\\d(?:\\.\\d*)? *(?:Z|[-+]\\d\\d?(?::?\\d\\d)?)?)?(?=\$|[\\]}),\\s])';
  const definition_13 =
      '(^|[[{(,\\s])[^,:=[\\]{}()\'"\\s]+(?=\\s*:(?:\$|[\\]}),\\s])|\\s*=)';
  const definition_15 =
      '(^|[[{(=:,\\s])[+-]?(?:0x[\\da-fA-F]+|0o[0-7]+|0b[01]+|(?:\\d+(?:\\.\\d*)?|\\.?\\d+)(?:[eE][+-]?\\d+)?)(?=\$|[\\]}),:=\\s])';
  const definition_16 =
      '(^|[[{(=:,\\s])(?:false|no|true|yes)(?=\$|[\\]}),:=\\s])';
  const definition_17 = '(^|[[{(=:,\\s])(?:null)(?=\$|[\\]}),:=\\s])';
  const definition_19 =
      '(^|[[{(=:,\\s])(?:(\'\'\'|""")\\r?\\n(?:(?:[^\\r\\n]|\\r?\\n(?![\\t ]*\\2))*\\r?\\n)?[\\t ]*\\2|\'[^\'\\r\\n]*\'|"(?:\\\\.|[^\\\\"\\r\\n])*")';
  const definition_20 =
      '(^|[[{(=:,\\s])(?:[^#"\',:=[\\]{}()\\s`-]|[:-][^"\',=[\\]{}()\\s])(?:[^,:=\\]})(\\s]|:(?![\\s,\\]})]|\$)|[ \\t]+[^#,:=\\]})(\\s])*';
  const definition_9 = '[,:=[\\]{}()-]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    aliases: ['property'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    aliases: ['string'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'datetime': [definition_2],
    'key': [definition_3],
    'number': [definition_4],
    'boolean': [definition_5],
    'null': [definition_6],
    'string': [definition_7],
    'literal': [definition_8],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'neon',
    definition_0,
  );
}

final languageNeon = _create();
