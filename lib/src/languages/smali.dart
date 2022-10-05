// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  final definition_40 = Grammar();
  const definition_1 = '#.*';
  const definition_14 =
      '"(?:[^\\r\\n\\\\"]|\\\\.)*"|\'(?:[^\\r\\n\\\\\']|\\\\(?:.|u[\\da-fA-F]{4}))\'';
  const definition_15 =
      '(^|[^L])L(?:(?:\\w+|`[^`\\r\\n]*`)\\/)*(?:[\\w\$]+|`[^`\\r\\n]*`)(?=\\s*;)';
  const definition_38 = '(^L|\\/)(?:[\\w\$]+|`[^`\\r\\n]*`)\$';
  const definition_39 = '^(L)(?:(?:\\w+|`[^`\\r\\n]*`)\\/)+';
  const definition_41 = '\\/';
  const definition_32 = '^L';
  const definition_33 = '([();\\[])[BCDFIJSVZ]+';
  const definition_34 = '([\\w\$>]:)[BCDFIJSVZ]';
  const definition_35 = '(\\.end\\s+)[\\w-]+';
  const definition_36 = '(^|[^\\w.-])\\.(?!\\d)[\\w-]+';
  const definition_37 =
      '(^|[^\\w.-])(?:abstract|annotation|bridge|constructor|enum|final|interface|private|protected|public|runtime|static|synthetic|system|transient)(?![\\w.-])';
  const definition_22 = '(^|[^\\w.-])(?:\\w+|<[\\w\$-]+>)(?=\\()';
  const definition_23 = '[\\w\$]+(?=:)';
  const definition_25 = '(^|[^\\w.-])[vp]\\d(?![\\w.-])';
  const definition_26 = '(^|[^\\w.-])(?:false|true)(?![\\w.-])';
  const definition_27 =
      '(^|[^/\\w.-])-?(?:NAN|INFINITY|0x(?:[\\dA-F]+(?:\\.[\\dA-F]*)?|\\.[\\dA-F]+)(?:p[+-]?[\\dA-F]+)?|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:e[+-]?\\d+)?)[dflst]?(?![\\w.-])';
  const definition_28 = '(:)\\w+';
  const definition_12 = '->|\\.\\.|[\\[=]';
  const definition_13 = '[{}(),;:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    inside: definition_16,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
    inside: definition_40,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['variable'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    aliases: ['property'],
  );
  definition_40.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_41))],
  });
  definition_16.addAllTokens({
    'class-name': [definition_30],
    'namespace': [definition_31],
    'builtin': [GrammarToken(pattern: RegExp(definition_32))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'class-name': [definition_3],
    'builtin': [
      definition_17,
      definition_18,
    ],
    'keyword': [
      definition_19,
      definition_20,
      definition_21,
    ],
    'function': [definition_6],
    'field': [definition_7],
    'register': [definition_8],
    'boolean': [definition_9],
    'number': [definition_10],
    'label': [definition_11],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'smali',
    definition_0,
  );
}

final languageSmali = _create();
