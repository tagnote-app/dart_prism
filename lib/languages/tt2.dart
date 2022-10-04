// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_4 = Grammar();
  final definition_20 = Grammar();
  final definition_22 = Grammar();
  const definition_3 = '\\[%[\\s\\S]+?%\\]';
  const definition_5 = '#.*|\\[%#[\\s\\S]*?%\\]';
  const definition_17 = '\'[^\\\\\']*(?:\\\\[\\s\\S][^\\\\\']*)*\'';
  const definition_19 = '"[^\\\\"]*(?:\\\\[\\s\\S][^\\\\"]*)*"';
  const definition_28 = '\\\$(?:[a-z]\\w*(?:\\.(?:\\d+|\\\$?[a-z]\\w*))*)';
  const definition_21 =
      '(\\b(?:class|extends|implements|instanceof|interface|new|trait)\\s+|\\bcatch\\s+\\()[\\w.\\\\]+';
  const definition_27 = '[.\\\\]';
  const definition_23 = '^(?:\\[%|%%)-?|-?%\\]\$';
  const definition_10 =
      '\\b(?:BLOCK|CALL|CASE|CATCH|CLEAR|DEBUG|DEFAULT|ELSE|ELSIF|END|FILTER|FINAL|FOREACH|GET|IF|IN|INCLUDE|INSERT|LAST|MACRO|META|NEXT|PERL|PROCESS|RAWPERL|RETURN|SET|STOP|SWITCH|TAGS|THROW|TRY|UNLESS|USE|WHILE|WRAPPER)\\b';
  const definition_11 = '\\b(?:false|true)\\b';
  const definition_12 = '\\b\\w+(?=\\()';
  const definition_13 = '=[>=]?|!=?|<=?|>=?|&&|\\|\\|?|\\b(?:and|not|or)\\b';
  const definition_25 =
      '\\b[a-z]\\w*(?:\\s*\\.\\s*(?:\\d+|\\\$?[a-z]\\w*))*\\b';
  const definition_15 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_16 = '[[\\]{},()]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_3),
    inside: definition_4,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    aliases: ['string'],
    inside: definition_20,
    global: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_28, caseSensitive: false),
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
    inside: definition_22,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['punctuation'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_20.addAllTokens({
    'variable': [definition_26],
  });
  definition_22.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_4.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_5))],
    'single-quoted-string': [definition_6],
    'double-quoted-string': [definition_7],
    'class-name': [definition_8],
    'delimiter': [definition_9],
    'keyword': [GrammarToken(pattern: RegExp(definition_10))],
    'boolean': [GrammarToken(pattern: RegExp(definition_11))],
    'function': [GrammarToken(pattern: RegExp(definition_12))],
    'operator': [GrammarToken(pattern: RegExp(definition_13))],
    'variable': [definition_14],
    'number': [
      GrammarToken(pattern: RegExp(definition_15, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });
  definition_0.addAllTokens({
    'tt2': [definition_1],
  });

  return LanguageProto(
    'tt2',
    definition_0,
    requiredDependencies: ['clike', 'markup', 'xml'],
  );
}

final languageTt2 = _create();
