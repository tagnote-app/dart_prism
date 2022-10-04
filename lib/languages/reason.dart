// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_18 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_19 = '(^|[^\\\\:])\\/\\/.*';
  const definition_14 = '"(?:\\\\(?:\\r\\n|[\\s\\S])|[^\\\\\\r\\n"])*"';
  const definition_15 =
      '\'(?:\\\\x[\\da-f]{2}|\\\\o[0-3][0-7][0-7]|\\\\\\d{3}|\\\\.|[^\'\\\\\\r\\n])\'';
  const definition_4 = '\\b[A-Z]\\w*\\b(?!\\s*\\.)';
  const definition_16 = '\\b[a-z]\\w*(?=::)';
  const definition_6 = '\\b[A-Z]\\w*';
  const definition_7 =
      '\\b(?:and|as|assert|begin|class|constraint|do|done|downto|else|end|exception|external|for|fun|function|functor|if|in|include|inherit|initializer|lazy|let|method|module|mutable|new|nonrec|object|of|open|or|private|rec|sig|struct|switch|then|to|try|type|val|virtual|when|while|with)\\b';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_9 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_10 =
      '\\.{3}|:[:=]|\\|>|->|=(?:==?|>)?|<=?|>=?|[|^?\'#!~`]|[+\\-*\\/]\\.?|\\b(?:asr|land|lor|lsl|lsr|lxor|mod)\\b';
  const definition_11 = '[{}[\\];(),.:]';
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['symbol'],
  );
  definition_0.addAllTokens({
    'comment': [
      definition_12,
      definition_13,
    ],
    'string': [definition_2],
    'char': [definition_3],
    'constructor': [GrammarToken(pattern: RegExp(definition_4))],
    'label': [definition_5],
    'class-name': [GrammarToken(pattern: RegExp(definition_6))],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'reason',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageReason = _create();
