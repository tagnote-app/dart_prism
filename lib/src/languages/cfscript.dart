// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_24 = Grammar();
  const definition_23 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_27 = '(?:^|[^.])@[\\w\\.]+';
  const definition_25 = '(^|[^\\\\:])\\/\\/.*';
  const definition_14 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_15 =
      '[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*[=:]\\s*(?:\\bfunction\\b|(?:\\((?:[^()]|\\([^()]*\\))*\\)|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)\\s*=>))';
  const definition_4 =
      '\\b(?:abstract|break|catch|component|continue|default|do|else|extends|final|finally|for|function|if|in|include|package|private|property|public|remote|required|rethrow|return|static|switch|throw|try|var|while|xml)\\b(?!\\s*=)';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 = '\\b\\w+(?=\\()';
  const definition_7 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_17 =
      '\\+\\+|--|&&|\\|\\||::|=>|[!=]==|[-+*/%&|^!=<>]=?|\\?(?:\\.|:)?|:';
  const definition_18 =
      '\\b(?:and|contains|eq|equal|eqv|gt|gte|imp|is|lt|lte|mod|not|or|xor)\\b';
  const definition_9 = '[{}[\\];(),.:]';
  const definition_19 =
      '\\b(?:application|arguments|cgi|client|cookie|local|session|super|this|variables)\\b';
  const definition_21 =
      '\\b(?:any|array|binary|boolean|date|guid|numeric|query|string|struct|uuid|void|xml)\\b';
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    inside: definition_24,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_27),
    aliases: ['punctuation'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_25),
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
    aliases: ['function'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['global'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_21),
    aliases: ['builtin'],
  );
  definition_24.addAllTokens({
    'annotation': [definition_26],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_12,
      definition_13,
    ],
    'string': [definition_2],
    'function-variable': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_17)),
      GrammarToken(pattern: RegExp(definition_18)),
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
    'scope': [definition_10],
    'type': [definition_11],
  });

  return LanguageProto(
    'cfscript',
    definition_0,
    aliases: ['cfc'],
    requiredDependencies: ['clike'],
  );
}

final languageCfscript = _create();
