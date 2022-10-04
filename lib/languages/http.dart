// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  final definition_14 = Grammar();
  final definition_18 = Grammar();
  final definition_29 = Grammar();
  const definition_11 =
      '^(?:CONNECT|DELETE|GET|HEAD|OPTIONS|PATCH|POST|PRI|PUT|SEARCH|TRACE)\\s(?:https?:\\/\\/|\\/)\\S*\\sHTTP\\/[\\d.]+';
  const definition_47 = '^[A-Z]+\\b';
  const definition_49 = '^(\\s)(?:https?:\\/\\/|\\/)\\S*(?=\\s)';
  const definition_52 = '^(\\s)HTTP\\/[\\d.]+';
  const definition_13 = '^HTTP\\/[\\d.]+ \\d+ .+';
  const definition_53 = '^HTTP\\/[\\d.]+';
  const definition_54 = '^(\\s)\\d+(?=\\s)';
  const definition_56 = '^(\\s).+';
  const definition_15 =
      '(content-type:\\s*application\\/javascript(?:(?:\\r\\n?|\\n)[\\w-].*)*(?:\\r(?:\\n|(?!\\n))|\\n))[^ \\t\\w-][\\s\\S]*';
  const definition_17 =
      '(content-type:\\s*(?:application\\/json|\\w+\\/(?:[\\w.-]+\\+)+json(?![+\\w.-]))(?:(?:\\r\\n?|\\n)[\\w-].*)*(?:\\r(?:\\n|(?!\\n))|\\n))[^ \\t\\w-][\\s\\S]*';
  const definition_58 = '(^|[^\\\\])"(?:\\\\.|[^\\\\"\\r\\n])*"(?=\\s*:)';
  const definition_59 = '(^|[^\\\\])"(?:\\\\.|[^\\\\"\\r\\n])*"(?!\\s*:)';
  const definition_60 = '\\/\\/.*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_39 = '-?\\b\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?\\b';
  const definition_40 = '[{}[\\],]';
  const definition_41 = ':';
  const definition_42 = '\\b(?:false|true)\\b';
  const definition_61 = '\\bnull\\b';
  const definition_19 =
      '(content-type:\\s*(?:application\\/xml|\\w+\\/(?:[\\w.-]+\\+)+xml(?![+\\w.-]))(?:(?:\\r\\n?|\\n)[\\w-].*)*(?:\\r(?:\\n|(?!\\n))|\\n))[^ \\t\\w-][\\s\\S]*';
  const definition_21 =
      '(content-type:\\s*text\\/xml(?:(?:\\r\\n?|\\n)[\\w-].*)*(?:\\r(?:\\n|(?!\\n))|\\n))[^ \\t\\w-][\\s\\S]*';
  const definition_22 =
      '(content-type:\\s*text\\/html(?:(?:\\r\\n?|\\n)[\\w-].*)*(?:\\r(?:\\n|(?!\\n))|\\n))[^ \\t\\w-][\\s\\S]*';
  const definition_24 =
      '(content-type:\\s*text\\/css(?:(?:\\r\\n?|\\n)[\\w-].*)*(?:\\r(?:\\n|(?!\\n))|\\n))[^ \\t\\w-][\\s\\S]*';
  const definition_26 =
      '(content-type:\\s*text\\/plain(?:(?:\\r\\n?|\\n)[\\w-].*)*(?:\\r(?:\\n|(?!\\n))|\\n))[^ \\t\\w-][\\s\\S]*';
  const definition_28 = '^[\\w-]+:.+(?:(?:\\r\\n?|\\n)[ \\t].+)*';
  const definition_68 = '(^(?:Content-Security-Policy):[ 	]*(?![ 	]))[^]+';
  const definition_71 =
      '(^(?:Public-Key-Pins(?:-Report-Only)?):[ 	]*(?![ 	]))[^]+';
  const definition_74 = '(^(?:Strict-Transport-Security):[ 	]*(?![ 	]))[^]+';
  const definition_77 = '(^(?:[^:]+):[ 	]*(?![ 	]))[^]+';
  const definition_67 = '^[^:]+';
  const definition_46 = '^:';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11, multiLine: true),
    inside: definition_12,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_47),
    aliases: ['property'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    aliases: ['url'],
    inside: 'uri',
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
    aliases: ['property'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13, multiLine: true),
    inside: definition_14,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_53),
    aliases: ['property'],
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_54),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_56),
    lookbehind: true,
    aliases: ['string'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    lookbehind: true,
    inside: definition_18,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_58),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_59),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_60),
    greedy: true,
    global: true,
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_61),
    aliases: ['keyword'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    lookbehind: true,
    inside: 'xml',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
    inside: 'xml',
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    lookbehind: true,
    inside: 'html',
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    lookbehind: true,
    inside: 'css',
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false),
    lookbehind: true,
    inside: 'plain',
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_28, multiLine: true),
    inside: definition_29,
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_68, caseSensitive: false),
    lookbehind: true,
    aliases: ['csp', 'languages-csp'],
    inside: 'csp',
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_71, caseSensitive: false),
    lookbehind: true,
    aliases: ['hpkp', 'languages-hpkp'],
    inside: 'hpkp',
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_74, caseSensitive: false),
    lookbehind: true,
    aliases: ['hsts', 'languages-hsts'],
    inside: 'hsts',
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_77, caseSensitive: false),
    lookbehind: true,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_67),
    aliases: ['keyword'],
  );
  definition_12.addAllTokens({
    'method': [definition_30],
    'request-target': [definition_31],
    'http-version': [definition_32],
  });
  definition_14.addAllTokens({
    'http-version': [definition_33],
    'status-code': [definition_34],
    'reason-phrase': [definition_35],
  });
  definition_18.addAllTokens({
    'property': [definition_36],
    'string': [definition_37],
    'comment': [definition_38],
    'number': [
      GrammarToken(pattern: RegExp(definition_39, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
    'operator': [GrammarToken(pattern: RegExp(definition_41))],
    'boolean': [GrammarToken(pattern: RegExp(definition_42))],
    'null': [definition_43],
  });
  definition_29.addAllTokens({
    'header-value': [
      definition_63,
      definition_64,
      definition_65,
      definition_66,
    ],
    'header-name': [definition_45],
    'punctuation': [GrammarToken(pattern: RegExp(definition_46))],
  });
  definition_0.addAllTokens({
    'request-line': [definition_1],
    'response-status': [definition_2],
    'application-javascript': [definition_3],
    'application-json': [definition_4],
    'application-xml': [definition_5],
    'text-xml': [definition_6],
    'text-html': [definition_7],
    'text-css': [definition_8],
    'text-plain': [definition_9],
    'header': [definition_10],
  });

  return LanguageProto(
    'http',
    definition_0,
    optionalDependencies: ['json'],
  );
}

final languageHttp = _create();
