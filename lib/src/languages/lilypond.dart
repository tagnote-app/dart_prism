// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_10 = Grammar();
  final definition_21 = Grammar();
  final definition_25 = Grammar();
  final definition_14 = Grammar();
  const definition_1 = '%(?:(?!\\{).*|\\{[\\s\\S]*?%\\})';
  const definition_9 =
      '(^|[=\\s])#(?:"(?:[^"\\\\]|\\\\.)*"|[^\\s()"]*(?:[^\\s()]|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|\\((?:[^();"#\\\\]|\\\\[\\s\\S]|;.*(?!.)|"(?:[^"\\\\]|\\\\.)*"|#(?:\\{(?:(?!#\\})[\\s\\S])*#\\}|[^{])|[^\\s\\S])*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\))*\\)))';
  const definition_19 = '^(#)[\\s\\S]+\$';
  const definition_24 = '#\\{[\\s\\S]*?#\\}';
  const definition_26 = '^#\\{|#\\}\$';
  const definition_28 = '[\\s\\S]+';
  const definition_17 = '#';
  const definition_11 = '"(?:[^"\\\\]|\\\\.)*"';
  const definition_12 = '(\\\\new\\s+)[\\w-]+';
  const definition_13 = '\\\\[a-z][-\\w]*';
  const definition_18 = '^\\\\';
  const definition_6 = '[=|]|<<|>>';
  const definition_15 =
      '(^|[a-z\\d])(?:\'+|,+|[_^]?-[_^]?(?:[-+^!>._]|(?=\\d))|[_^]\\.?|[.!])|[{}()[\\]<>^~]|\\\\[()[\\]<>\\\\!]|--|__';
  const definition_8 = '\\b\\d+(?:\\/\\d+)?\\b';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9, multiLine: true),
    lookbehind: true,
    greedy: true,
    inside: definition_10,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    aliases: ['language-scheme'],
    inside: definition_21,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    inside: definition_25,
    global: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['language-lilypond'],
    inside: 'lilypond',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_13, caseSensitive: false),
    inside: definition_14,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
  );
  definition_21.rest = 'scheme';
  definition_25.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_26))],
    'lilypond': [definition_27],
  });
  definition_21.addAllTokens({
    'embedded-lilypond': [definition_22],
  });
  definition_10.addAllTokens({
    'scheme': [definition_16],
    'punctuation': [GrammarToken(pattern: RegExp(definition_17))],
  });
  definition_14.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'embedded-scheme': [definition_2],
    'string': [definition_3],
    'class-name': [definition_4],
    'keyword': [definition_5],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'punctuation': [definition_7],
    'number': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'lilypond',
    definition_0,
    aliases: ['ly'],
    requiredDependencies: ['scheme'],
  );
}

final languageLilypond = _create();
