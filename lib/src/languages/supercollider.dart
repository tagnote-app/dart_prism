// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_12 =
      '\\/\\/.*|\\/\\*(?:[^*/]|\\*(?!\\/)|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*\\*\\/';
  const definition_13 = '(^|[^\\\\])"(?:[^"\\\\]|\\\\[\\s\\S])*"';
  const definition_14 = '\\\$(?:[^\\\\\\r\\n]|\\\\.)';
  const definition_15 = '(^|[^\\\\])\'(?:[^\'\\\\]|\\\\[\\s\\S])*\'|\\\\\\w+';
  const definition_5 = '\\b(?:_|arg|classvar|const|nil|var|while)\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_16 = '\\b[a-z_]\\w*(?=\\s*:)';
  const definition_8 =
      '\\b(?:inf|pi|0x[0-9a-fA-F]+|\\d+(?:\\.\\d+)?(?:[eE][+-]?\\d+)?(?:pi)?|\\d+r[0-9a-zA-Z]+(?:\\.[0-9a-zA-Z]+)?|\\d+[sb]{1,4}\\d*)\\b';
  const definition_9 = '\\b[A-Z]\\w*\\b';
  const definition_10 =
      '\\.{2,3}|#(?![[{])|&&|[!=]==?|\\+>>|\\+{1,3}|-[->]|=>|>>|\\?\\?|@\\|?@|\\|(?:@|[!=]=)?\\||!\\?|<[!=>]|\\*{1,2}|<{2,3}\\*?|[-!%&/<>?@|=`]';
  const definition_11 = '[{}()[\\].:,;]|#[[{]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['property'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'char': [definition_3],
    'symbol': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'label': [definition_7],
    'number': [GrammarToken(pattern: RegExp(definition_8))],
    'class-name': [GrammarToken(pattern: RegExp(definition_9))],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'supercollider',
    definition_0,
    aliases: ['sclang'],
  );
}

final languageSupercollider = _create();
