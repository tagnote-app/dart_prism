// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  final definition_34 = Grammar();
  final definition_19 = Grammar();
  final definition_31 = Grammar();
  final definition_39 = Grammar();
  const definition_24 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_25 = '(^|[^\\\\:])\\/\\/.*';
  const definition_14 =
      'r?(?:("""|\'\'\')[\\s\\S]*?\\1|(["\'])(?:\\\\.|(?!\\2)[^\\\\\\r\\n])*\\2(?!\\2))';
  const definition_33 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$(?:\\w+|\\{(?:[^{}]|\\{[^{}]*\\})*\\})';
  const definition_36 = '^\\\$\\{?|\\}\$';
  const definition_27 = '[\\s\\S]+';
  const definition_16 = '@\\w+';
  const definition_18 =
      '<(?:[\\w\\s,.&?]|<(?:[\\w\\s,.&?]|<(?:[\\w\\s,.&?]|<[\\w\\s,.&?]*>)*>)*>)*>';
  const definition_30 =
      '(^|[^\\w.])(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*[A-Z](?:[\\d_A-Z]*[a-z]\\w*)?\\b';
  const definition_38 = '^[a-z]\\w*(?:\\s*\\.\\s*[a-z]\\w*)*(?:\\s*\\.)?';
  const definition_41 = '\\.';
  const definition_22 = '\\b(?:async|sync|yield)\\*';
  const definition_23 =
      '\\b(?:abstract|assert|async|await|break|case|catch|class|const|continue|covariant|default|deferred|do|dynamic|else|enum|export|extends|extension|external|factory|final|finally|for|get|hide|if|implements|import|in|interface|library|mixin|new|null|on|operator|part|rethrow|return|set|show|static|super|switch|sync|this|throw|try|typedef|var|void|while|with|yield)\\b';
  const definition_28 = '[<>(),.:]';
  const definition_29 = '[?&|]';
  const definition_32 =
      '(^|[^\\w.])(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*[A-Z]\\w*(?=\\s+\\w+\\s*[;,=()])';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_8 = '\\b\\w+(?=\\()';
  const definition_9 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_10 =
      '\\bis!|\\b(?:as|is)\\b|\\+\\+|--|&&|\\|\\||<<=?|>>=?|~(?:\\/=?)?|[+\\-*\\/%&^|=!<>]=?|\\?';
  const definition_11 = '[{}[\\];(),.:]';
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    greedy: true,
    global: true,
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
    inside: definition_15,
    global: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    inside: definition_34,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_27),
    inside: 'dart',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['function'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_18),
    inside: definition_19,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: definition_31,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_38),
    inside: definition_39,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
    inside: definition_31,
  );
  definition_34.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_36))],
    'expression': [definition_37],
  });
  definition_15.addAllTokens({
    'interpolation': [definition_26],
    'string': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_39.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_41))],
  });
  definition_31.addAllTokens({
    'namespace': [definition_35],
  });
  definition_19.addAllTokens({
    'class-name': [definition_20],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_22)),
      GrammarToken(pattern: RegExp(definition_23)),
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'operator': [GrammarToken(pattern: RegExp(definition_29))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_12,
      definition_13,
    ],
    'string-literal': [definition_2],
    'metadata': [definition_3],
    'generics': [definition_4],
    'class-name': [
      definition_20,
      definition_21,
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_22)),
      GrammarToken(pattern: RegExp(definition_23)),
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'function': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'dart',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageDart = _create();
