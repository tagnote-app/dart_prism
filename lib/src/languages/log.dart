// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_23 = Grammar();
  final definition_62 = Grammar();
  final definition_93 = Grammar();
  final definition_64 = Grammar();
  final definition_109 = Grammar();
  final definition_111 = Grammar();
  final definition_100 = Grammar();
  final definition_102 = Grammar();
  final definition_104 = Grammar();
  final definition_66 = Grammar();
  const definition_20 =
      '"(?:[^"\\\\\\r\\n]|\\\\.)*"|\'(?![st] | \\w)(?:[^\'\\\\\\r\\n]|\\\\.)*\'';
  const definition_21 =
      '(^|[^\\w.])[a-z][\\w.]*(?:Error|Exception):.*(?:(?:\\r\\n?|\\n)[ \\t]*(?:at[ \\t].+|\\.{3}.*|Caused by:.*))+(?:(?:\\r\\n?|\\n)[ \\t]*\\.\\.\\. .*)?';
  const definition_61 =
      '^([\\t ]*)(?:(?:Caused by:|Suppressed:|Exception in thread "[^"]*")[\\t ]+)?[\\w\$.]+(?::.*)?\$';
  const definition_90 =
      '^([\\t ]*)(?:(?:Caused by|Suppressed)(?=:)|Exception in thread)';
  const definition_91 = '^(\\s*)"[^"]*"';
  const definition_92 = '^(:?\\s*)[\\w\$.]+(?=:|\$)';
  const definition_105 = '[\\w\$]+\$';
  const definition_106 = '\\b[a-z]\\w*\\b';
  const definition_107 = '\\.';
  const definition_94 = '(:\\s*)\\S.*';
  const definition_78 = ':';
  const definition_63 =
      '^([\\t ]*)at (?:[\\w\$./]|@[\\w\$.+-]*\\/)+(?:<init>)?\\([^()]*\\)';
  const definition_95 = '^(\\s*)at(?= )';
  const definition_108 = '(\\()\\w+\\.\\w+:\\d+(?=\\))';
  const definition_114 = '^\\w+\\.\\w+';
  const definition_118 = '\\b\\d+\\b';
  const definition_110 = '(\\()[^()]*(?=\\))';
  const definition_116 = '^(?:Native Method|Unknown Source)\$';
  const definition_81 = '[\\w\$]+(?=\\.(?:<init>|[\\w\$]+)\\()';
  const definition_82 = '(?:<init>|[\\w\$]+)(?=\\()';
  const definition_98 = '(\\s)[a-z]\\w*(?:\\.[a-z]\\w*)*(?=\\/[\\w@\$.]*\\/)';
  const definition_101 =
      '([\\s/])[a-z]\\w*(?:\\.[a-z]\\w*)*(?:@[\\w\$.+-]*)?(?=\\/)';
  const definition_117 = '(@)[\\s\\S]+';
  const definition_113 = '[@.]';
  const definition_103 = '(?:\\b[a-z]\\w*\\.)+';
  const definition_86 = '[()/.]';
  const definition_65 = '^([\\t ]*)\\.{3} \\d+ [a-z]+(?: [a-z]+)*';
  const definition_87 = '\\.{3}';
  const definition_88 = '\\d+';
  const definition_89 = '\\b[a-z]+(?: [a-z]+)*\\b';
  const definition_51 =
      '\\b(?:ALERT|CRIT|CRITICAL|EMERG|EMERGENCY|ERR|ERROR|FAILURE|FATAL|SEVERE)\\b';
  const definition_53 = '\\b(?:WARN|WARNING|WRN)\\b';
  const definition_55 = '\\b(?:DISPLAY|INF|INFO|NOTICE|STATUS)\\b';
  const definition_57 = '\\b(?:DBG|DEBUG|FINE)\\b';
  const definition_59 = '\\b(?:FINER|FINEST|TRACE|TRC|VERBOSE|VRB)\\b';
  const definition_29 =
      '((?:^|[\\]|])[ \\t]*)[a-z_](?:[\\w-]|\\b\\/\\b)*(?:[. ]\\(?\\w(?:[\\w-]|\\b\\/\\b)*\\)?)*:(?=\\s)';
  const definition_30 = '(^|[^-+])-{3,}|={3,}|\\*{3,}|- - ';
  const definition_6 =
      '\\b(?:file|ftp|https?):\\/\\/[^\\s|,;\'"]*[^\\s|,;\'">.]';
  const definition_32 =
      '(^|\\s)[-\\w+.]+@[a-z][a-z0-9-]*(?:\\.[a-z][a-z0-9-]*)+(?=\\s)';
  const definition_34 = '\\b(?:\\d{1,3}(?:\\.\\d{1,3}){3})\\b';
  const definition_36 = '\\b[a-f0-9]{2}(?::[a-f0-9]{2}){5}\\b';
  const definition_37 =
      '(^|\\s)[a-z][a-z0-9-]*(?:\\.[a-z][a-z0-9-]*)*\\.[a-z][a-z0-9-]+(?=\\s)';
  const definition_38 =
      '\\b[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\\b';
  const definition_39 = '\\b(?:[a-f0-9]{32}){1,2}\\b';
  const definition_40 =
      '\\b[a-z]:[\\\\/][^\\s|,;:(){}\\[\\]"\']+|(^|[\\s:\\[\\](>|])\\.{0,2}\\/\\w[^\\s|,;:(){}\\[\\]"\']*';
  const definition_42 =
      '\\b\\d{4}[-/]\\d{2}[-/]\\d{2}(?:T(?=\\d{1,2}:)|(?=\\s\\d{1,2}:))|\\b\\d{1,4}[-/ ](?:\\d{1,2}|Apr|Aug|Dec|Feb|Jan|Jul|Jun|Mar|May|Nov|Oct|Sep)[-/ ]\\d{2,4}T?\\b|\\b(?:(?:Fri|Mon|Sat|Sun|Thu|Tue|Wed)(?:\\s{1,2}(?:Apr|Aug|Dec|Feb|Jan|Jul|Jun|Mar|May|Nov|Oct|Sep))?|Apr|Aug|Dec|Feb|Jan|Jul|Jun|Mar|May|Nov|Oct|Sep)\\s{1,2}\\d{1,2}\\b';
  const definition_44 =
      '\\b\\d{1,2}:\\d{1,2}:\\d{1,2}(?:[.,:]\\d+)?(?:\\s?[+-]\\d{2}:?\\d{2}|Z)?\\b';
  const definition_16 = '\\b(?:false|null|true)\\b';
  const definition_45 =
      '(^|[^.\\w])(?:0x[a-f0-9]+|0o[0-7]+|0b[01]+|v?\\d[\\da-f]*(?:\\.\\d+)*(?:e[+-]?\\d+)?[a-z]{0,3}\\b)\\b(?!\\.\\w)';
  const definition_18 = '[;:?<=>~/@!\$%&+\\-|^(){}*#]';
  const definition_19 = '[\\[\\].,]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    greedy: true,
    aliases: ['javastacktrace', 'language-javastacktrace'],
    inside: definition_23,
    global: true,
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_61, multiLine: true),
    lookbehind: true,
    inside: definition_62,
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_90, multiLine: true),
    lookbehind: true,
  );
  final definition_75 = GrammarToken(
    pattern: RegExp(definition_91),
    lookbehind: true,
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_92),
    lookbehind: true,
    inside: definition_93,
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_94),
    lookbehind: true,
    aliases: ['string'],
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_63, multiLine: true),
    lookbehind: true,
    inside: definition_64,
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_95),
    lookbehind: true,
  );
  final definition_96 = GrammarToken(
    pattern: RegExp(definition_108),
    lookbehind: true,
    inside: definition_109,
  );
  final definition_115 = GrammarToken(
    pattern: RegExp(definition_118),
    aliases: ['number'],
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_110),
    lookbehind: true,
    inside: definition_111,
  );
  final definition_83 = GrammarToken(
    pattern: RegExp(definition_98),
    lookbehind: true,
    aliases: ['namespace'],
    inside: definition_100,
  );
  final definition_84 = GrammarToken(
    pattern: RegExp(definition_101),
    lookbehind: true,
    inside: definition_102,
  );
  final definition_112 = GrammarToken(
    pattern: RegExp(definition_117),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_103),
    inside: definition_104,
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_65, multiLine: true),
    lookbehind: true,
    inside: definition_66,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_51),
    aliases: ['error', 'important'],
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_53),
    aliases: ['warning', 'important'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_55),
    aliases: ['info', 'keyword'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_57),
    aliases: ['debug', 'keyword'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_59),
    aliases: ['trace', 'comment'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false, multiLine: true),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_30, multiLine: true),
    lookbehind: true,
    aliases: ['comment'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
    aliases: ['url'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_34),
    aliases: ['constant'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_36, caseSensitive: false),
    aliases: ['constant'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    aliases: ['constant'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_38, caseSensitive: false),
    aliases: ['constant'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_39, caseSensitive: false),
    aliases: ['constant'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_40, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_42, caseSensitive: false),
    aliases: ['number'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_44),
    aliases: ['number'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_45, caseSensitive: false),
    lookbehind: true,
  );
  definition_93.addAllTokens({
    'class-name': [GrammarToken(pattern: RegExp(definition_105))],
    'namespace': [GrammarToken(pattern: RegExp(definition_106))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_107))],
  });
  definition_62.addAllTokens({
    'keyword': [definition_74],
    'string': [definition_75],
    'exceptions': [definition_76],
    'message': [definition_77],
    'punctuation': [GrammarToken(pattern: RegExp(definition_78))],
  });
  definition_109.addAllTokens({
    'file': [GrammarToken(pattern: RegExp(definition_114))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_78))],
    'line-number': [definition_115],
  });
  definition_111.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_116))],
  });
  definition_100.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_107))],
  });
  definition_102.addAllTokens({
    'version': [definition_112],
    'punctuation': [GrammarToken(pattern: RegExp(definition_113))],
  });
  definition_104.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_107))],
  });
  definition_64.addAllTokens({
    'keyword': [definition_79],
    'source': [
      definition_96,
      definition_97,
    ],
    'class-name': [GrammarToken(pattern: RegExp(definition_81))],
    'function': [GrammarToken(pattern: RegExp(definition_82))],
    'class-loader': [definition_83],
    'module': [definition_84],
    'namespace': [definition_85],
    'punctuation': [GrammarToken(pattern: RegExp(definition_86))],
  });
  definition_66.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_87))],
    'number': [GrammarToken(pattern: RegExp(definition_88))],
    'keyword': [GrammarToken(pattern: RegExp(definition_89))],
  });
  definition_23.addAllTokens({
    'summary': [definition_48],
    'stack-frame': [definition_49],
    'more': [definition_50],
  });
  definition_0.addAllTokens({
    'string': [definition_1],
    'exception': [definition_2],
    'level': [
      definition_24,
      definition_25,
      definition_26,
      definition_27,
      definition_28,
    ],
    'property': [definition_4],
    'separator': [definition_5],
    'url': [GrammarToken(pattern: RegExp(definition_6))],
    'email': [definition_7],
    'ip-address': [definition_8],
    'mac-address': [definition_9],
    'domain': [definition_10],
    'uuid': [definition_11],
    'hash': [definition_12],
    'file-path': [definition_13],
    'date': [definition_14],
    'time': [definition_15],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_16, caseSensitive: false))
    ],
    'number': [definition_17],
    'operator': [GrammarToken(pattern: RegExp(definition_18))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });

  return LanguageProto(
    'log',
    definition_0,
    optionalDependencies: ['javastacktrace'],
  );
}

final languageLog = _create();
