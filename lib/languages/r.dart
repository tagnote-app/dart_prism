// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '#.*';
  const definition_10 = '([\'"])(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_11 = '%[^%\\s]*%';
  const definition_4 = '\\b(?:FALSE|TRUE)\\b';
  const definition_5 = '\\.\\.(?:\\.|\\d+)';
  const definition_13 = '\\b(?:Inf|NaN)\\b';
  const definition_14 =
      '(?:\\b0x[\\dA-Fa-f]+(?:\\.\\d*)?|\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[EePp][+-]?\\d+)?[iL]?';
  const definition_7 =
      '\\b(?:NA|NA_character_|NA_complex_|NA_integer_|NA_real_|NULL|break|else|for|function|if|in|next|repeat|while)\\b';
  const definition_8 = '->?>?|<(?:=|<?-)?|[>=!]=?|::?|&&?|\\|\\|?|[+*\\/^\$@~]';
  const definition_9 = '[(){}\\[\\],;]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11),
    aliases: ['operator'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'percent-operator': [definition_3],
    'boolean': [GrammarToken(pattern: RegExp(definition_4))],
    'ellipsis': [GrammarToken(pattern: RegExp(definition_5))],
    'number': [
      GrammarToken(pattern: RegExp(definition_13)),
      GrammarToken(pattern: RegExp(definition_14)),
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'r',
    definition_0,
  );
}

final languageR = _create();
