// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_8 = Grammar();
  final definition_13 = Grammar();
  const definition_6 = '^[;#].*';
  const definition_7 = '^\\[[^\\n\\r\\[\\]]*\\](?=[ \\t]*\$)';
  const definition_14 = '^\\[|\\]\$';
  const definition_19 = '[\\s\\S]+';
  const definition_9 = '^[^\\s=]+(?=[ \\t]*=)';
  const definition_11 =
      '(=[ \\t]*(?!\\s))(?:"(?:[^\\r\\n"\\\\]|\\\\(?:[^\\r]|\\r\\n?))*"(?!\\S)|(?=[^"\\r\\n]))(?:[^\\s\\\\]|[ 	]+(?:(?![ 	"])|"(?:[^\\r\\n"\\\\]|\\\\(?:[^\\r]|\\r\\n?))*"(?!\\S))|\\\\[\\r\\n]+(?:[#;].*[\\r\\n]+)*(?![#;]))*';
  const definition_21 =
      '(^|\\s)"(?:[^\\r\\n"\\\\]|\\\\(?:[^\\r]|\\r\\n?))*"(?!\\S)';
  const definition_17 = '\\\\\$';
  const definition_22 = '^(?:false|no|off|on|true|yes)\$';
  const definition_5 = '=';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_6, multiLine: true),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_7, multiLine: true),
    greedy: true,
    inside: definition_8,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['selector'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_9, multiLine: true),
    greedy: true,
    aliases: ['attr-name'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    greedy: true,
    aliases: ['attr-value'],
    inside: definition_13,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    global: true,
  );
  definition_8.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
    'section-name': [definition_15],
  });
  definition_13.addAllTokens({
    'comment': [definition_1],
    'quoted': [definition_16],
    'punctuation': [
      GrammarToken(pattern: RegExp(definition_17, multiLine: true))
    ],
    'boolean': [definition_18],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'section': [definition_2],
    'key': [definition_3],
    'value': [definition_4],
    'punctuation': [GrammarToken(pattern: RegExp(definition_5))],
  });

  return LanguageProto(
    'systemd',
    definition_0,
  );
}

final languageSystemd = _create();
