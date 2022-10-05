// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_21 = Grammar();
  final definition_23 = Grammar();
  const definition_25 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_26 = '(^|[^\\\\:])\\/\\/.*';
  const definition_16 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_27 =
      '(\\b(?:enum|extend|message|service)\\s+)[A-Za-z_]\\w*(?=\\s*\\{)';
  const definition_28 =
      '(\\b(?:rpc\\s+\\w+|returns)\\s*\\(\\s*(?:stream\\s+)?)\\.?[A-Za-z_]\\w*(?:\\.[A-Za-z_]\\w*)*(?=\\s*\\))';
  const definition_4 =
      '\\b(?:enum|extend|extensions|import|message|oneof|option|optional|package|public|repeated|required|reserved|returns|rpc(?=\\s+\\w)|service|stream|syntax|to)\\b(?!\\s*=\\s*\\d)';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_7 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_19 =
      '\\bmap<\\s*[\\w.]+\\s*,\\s*[\\w.]+\\s*>(?=\\s+[a-z_]\\w*\\s*[=;])';
  const definition_29 = '[<>.,]';
  const definition_9 =
      '\\b(?:bool|bytes|double|s?fixed(?:32|64)|float|[su]?int(?:32|64)|string)\\b';
  const definition_22 =
      '(?:\\b|\\B\\.)[a-z_]\\w*(?:\\.[a-z_]\\w*)*(?=\\s+[a-z_]\\w*\\s*[=;])';
  const definition_30 = '\\.';
  const definition_24 = '(\\[\\s*)[a-z_]\\w*(?=\\s*=)';
  const definition_12 = '[<>]=?|[!=]=?=?|--?|\\+\\+?|&&?|\\|\\|?|[?*/~^%]';
  const definition_13 = '[{}[\\];(),.:]';
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    aliases: ['class-name'],
    inside: definition_21,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    aliases: ['class-name'],
    inside: definition_23,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    lookbehind: true,
  );
  definition_21.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_29))],
    'builtin': [GrammarToken(pattern: RegExp(definition_9))],
  });
  definition_23.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_14,
      definition_15,
    ],
    'string': [definition_2],
    'class-name': [
      definition_17,
      definition_18,
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'map': [definition_8],
    'builtin': [GrammarToken(pattern: RegExp(definition_9))],
    'positional-class-name': [definition_10],
    'annotation': [definition_11],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'protobuf',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageProtobuf = _create();
