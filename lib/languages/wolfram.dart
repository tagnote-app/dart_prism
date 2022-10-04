// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 =
      '\\(\\*(?:\\(\\*(?:[^*]|\\*(?!\\)))*\\*\\)|(?!\\(\\*)[\\s\\S])*?\\*\\)';
  const definition_11 = '"(?:\\\\.|[^"\\\\\\r\\n])*"';
  const definition_3 =
      '\\b(?:Abs|AbsArg|Accuracy|Block|Do|For|Function|If|Manipulate|Module|Nest|NestList|None|Return|Switch|Table|Which|While)\\b';
  const definition_12 = '\\b\\w+`+\\w*';
  const definition_14 = '\\b\\w+_\\b';
  const definition_16 = '\\\$\\w+';
  const definition_7 = '\\b(?:False|True)\\b';
  const definition_8 =
      '(?:\\b(?=\\d)|\\B(?=\\.))(?:0[bo])?(?:(?:\\d|0x[\\da-f])[\\da-f]*(?:\\.\\d*)?|\\.\\d+)(?:e[+-]?\\d+)?j?\\b';
  const definition_9 =
      '\\/\\.|;|=\\.|\\^=|\\^:=|:=|<<|>>|<\\||\\|>|:>|\\|->|->|<-|@@@|@@|@|\\/@|=!=|===|==|=|\\+|-|\\[\\/-+%=\\]=?|!=|\\*\\*?=?|\\/\\/?=?|<[<=>]?|>[=>]?|[&|^~]';
  const definition_10 = '[{}[\\];(),.:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['class-name'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['regex'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['variable'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'keyword': [GrammarToken(pattern: RegExp(definition_3))],
    'context': [definition_4],
    'blank': [definition_5],
    'global-variable': [definition_6],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'wolfram',
    definition_0,
    aliases: ['mathematica', 'nb', 'wl'],
  );
}

final languageWolfram = _create();
