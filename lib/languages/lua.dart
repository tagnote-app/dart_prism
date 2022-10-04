// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '^#!.+|--(?:\\[(=*)\\[[\\s\\S]*?\\]\\1\\]|.*)';
  const definition_8 =
      '(["\'])(?:(?!\\1)[^\\\\\\r\\n]|\\\\z(?:\\r\\n|\\s)|\\\\(?:\\r\\n|[^z]))*\\1|\\[(=*)\\[[\\s\\S]*?\\]\\2\\]';
  const definition_3 =
      '\\b0x[a-f\\d]+(?:\\.[a-f\\d]*)?(?:p[+-]?\\d+)?\\b|\\b\\d+(?:\\.\\B|(?:\\.\\d*)?(?:e[+-]?\\d+)?\\b)|\\B\\.\\d+(?:e[+-]?\\d+)?\\b';
  const definition_4 =
      '\\b(?:and|break|do|else|elseif|end|false|for|function|goto|if|in|local|nil|not|or|repeat|return|then|true|until|while)\\b';
  const definition_5 = '(?!\\d)\\w+(?=\\s*(?:[({]))';
  const definition_9 = '[-+*%^&|#]|\\/\\/?|<[<=]?|>[>=]?|[=~]=?';
  const definition_11 = '(^|[^.])\\.\\.(?!\\.)';
  const definition_7 = '[\\[\\](){},;]|\\.+|:+';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1, multiLine: true))],
    'string': [definition_2],
    'number': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'operator': [
      GrammarToken(pattern: RegExp(definition_9)),
      definition_10,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'lua',
    definition_0,
  );
}

final languageLua = _create();
