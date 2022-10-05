// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_8 = '\\/\\*[\\s\\S]*?\\*\\/|%.*';
  const definition_9 =
      '(["\'])(?:\\1\\1|\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1(?!\\1)';
  const definition_3 = '\\b(?:fx|fy|xf[xy]?|yfx?)\\b';
  const definition_4 = '\\b[a-z]\\w*(?:(?=\\()|\\/\\d+)';
  const definition_5 = '\\b\\d+(?:\\.\\d*)?';
  const definition_6 = '[:\\\\=><\\-?*@\\/;+^|!\$.]+|\\b(?:is|mod|not|xor)\\b';
  const definition_7 = '[(){}\\[\\],]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'builtin': [GrammarToken(pattern: RegExp(definition_3))],
    'function': [GrammarToken(pattern: RegExp(definition_4))],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'prolog',
    definition_0,
  );
}

final languageProlog = _create();
