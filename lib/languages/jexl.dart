// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '(["\'])(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1';
  const definition_9 =
      '(\\|\\s*)[a-zA-Zа-яА-Я_\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF\$][\\wа-яА-Я\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF\$]*';
  const definition_3 =
      '[a-zA-Zа-яА-Я_\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF\$][\\wа-яА-Я\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF\$]*\\s*(?=\\()';
  const definition_4 = '\\b\\d+(?:\\.\\d+)?\\b|\\B\\.\\d+\\b';
  const definition_5 = '[<>!]=?|-|\\+|&&|==|\\|\\|?|\\/\\/?|[?:*^%]';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 = '\\bin\\b';
  const definition_8 = '[{}[\\](),.]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9),
    aliases: ['function'],
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'string': [GrammarToken(pattern: RegExp(definition_1))],
    'transform': [definition_2],
    'function': [GrammarToken(pattern: RegExp(definition_3))],
    'number': [GrammarToken(pattern: RegExp(definition_4))],
    'operator': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'jexl',
    definition_0,
  );
}

final languageJexl = _create();
