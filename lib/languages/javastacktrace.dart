// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_5 = Grammar();
  final definition_29 = Grammar();
  final definition_7 = Grammar();
  final definition_46 = Grammar();
  final definition_48 = Grammar();
  final definition_37 = Grammar();
  final definition_39 = Grammar();
  final definition_41 = Grammar();
  final definition_9 = Grammar();
  const definition_4 =
      '^([\\t ]*)(?:(?:Caused by:|Suppressed:|Exception in thread "[^"]*")[\\t ]+)?[\\w\$.]+(?::.*)?\$';
  const definition_26 =
      '^([\\t ]*)(?:(?:Caused by|Suppressed)(?=:)|Exception in thread)';
  const definition_27 = '^(\\s*)"[^"]*"';
  const definition_28 = '^(:?\\s*)[\\w\$.]+(?=:|\$)';
  const definition_42 = '[\\w\$]+\$';
  const definition_43 = '\\b[a-z]\\w*\\b';
  const definition_44 = '\\.';
  const definition_30 = '(:\\s*)\\S.*';
  const definition_14 = ':';
  const definition_6 =
      '^([\\t ]*)at (?:[\\w\$./]|@[\\w\$.+-]*\\/)+(?:<init>)?\\([^()]*\\)';
  const definition_32 = '^(\\s*)at(?= )';
  const definition_45 = '(\\()\\w+\\.\\w+:\\d+(?=\\))';
  const definition_51 = '^\\w+\\.\\w+';
  const definition_56 = '\\b\\d+\\b';
  const definition_47 = '(\\()[^()]*(?=\\))';
  const definition_53 = '^(?:Native Method|Unknown Source)\$';
  const definition_17 = '[\\w\$]+(?=\\.(?:<init>|[\\w\$]+)\\()';
  const definition_18 = '(?:<init>|[\\w\$]+)(?=\\()';
  const definition_35 = '(\\s)[a-z]\\w*(?:\\.[a-z]\\w*)*(?=\\/[\\w@\$.]*\\/)';
  const definition_38 =
      '([\\s/])[a-z]\\w*(?:\\.[a-z]\\w*)*(?:@[\\w\$.+-]*)?(?=\\/)';
  const definition_54 = '(@)[\\s\\S]+';
  const definition_50 = '[@.]';
  const definition_40 = '(?:\\b[a-z]\\w*\\.)+';
  const definition_22 = '[()/.]';
  const definition_8 = '^([\\t ]*)\\.{3} \\d+ [a-z]+(?: [a-z]+)*';
  const definition_23 = '\\.{3}';
  const definition_24 = '\\d+';
  const definition_25 = '\\b[a-z]+(?: [a-z]+)*\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4, multiLine: true),
    lookbehind: true,
    inside: definition_5,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_26, multiLine: true),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    inside: definition_29,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    aliases: ['string'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_6, multiLine: true),
    lookbehind: true,
    inside: definition_7,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
    inside: definition_46,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_56),
    aliases: ['number'],
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_47),
    lookbehind: true,
    inside: definition_48,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    aliases: ['namespace'],
    inside: definition_37,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    inside: definition_39,
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_54),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_40),
    inside: definition_41,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_8, multiLine: true),
    lookbehind: true,
    inside: definition_9,
  );
  definition_29.addAllTokens({
    'class-name': [GrammarToken(pattern: RegExp(definition_42))],
    'namespace': [GrammarToken(pattern: RegExp(definition_43))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_5.addAllTokens({
    'keyword': [definition_10],
    'string': [definition_11],
    'exceptions': [definition_12],
    'message': [definition_13],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
  });
  definition_46.addAllTokens({
    'file': [GrammarToken(pattern: RegExp(definition_51))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
    'line-number': [definition_52],
  });
  definition_48.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_53))],
  });
  definition_37.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_39.addAllTokens({
    'version': [definition_49],
    'punctuation': [GrammarToken(pattern: RegExp(definition_50))],
  });
  definition_41.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_7.addAllTokens({
    'keyword': [definition_15],
    'source': [
      definition_33,
      definition_34,
    ],
    'class-name': [GrammarToken(pattern: RegExp(definition_17))],
    'function': [GrammarToken(pattern: RegExp(definition_18))],
    'class-loader': [definition_19],
    'module': [definition_20],
    'namespace': [definition_21],
    'punctuation': [GrammarToken(pattern: RegExp(definition_22))],
  });
  definition_9.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_23))],
    'number': [GrammarToken(pattern: RegExp(definition_24))],
    'keyword': [GrammarToken(pattern: RegExp(definition_25))],
  });
  definition_0.addAllTokens({
    'summary': [definition_1],
    'stack-frame': [definition_2],
    'more': [definition_3],
  });

  return LanguageProto(
    'javastacktrace',
    definition_0,
  );
}

final languageJavastacktrace = _create();
