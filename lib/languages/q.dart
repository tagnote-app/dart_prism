// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '"(?:\\\\.|[^"\\\\\\r\\n])*"';
  const definition_20 = '([\\t )\\]}])\\/.*';
  const definition_21 =
      '(^|\\r?\\n|\\r)\\/[\\t ]*(?:(?:\\r?\\n|\\r)(?:.*(?:\\r?\\n|\\r(?!\\n)))*?(?:\\\\(?=[\\t ]*(?:\\r?\\n|\\r))|\$)|\\S.*)';
  const definition_22 = '^\\\\[\\t ]*(?:\\r?\\n|\\r)[\\s\\S]+';
  const definition_23 = '^#!.+';
  const definition_3 = '`(?::\\S+|[\\w.]*)';
  const definition_14 =
      '0N[mdzuvt]|0W[dtz]|\\d{4}\\.\\d\\d(?:m|\\.\\d\\d(?:T(?:\\d\\d(?::\\d\\d(?::\\d\\d(?:[.:]\\d\\d\\d)?)?)?)?)?[dz]?)|\\d\\d:\\d\\d(?::\\d\\d(?:[.:]\\d\\d\\d)?)?[uvt]?';
  const definition_5 =
      '\\b(?![01]:)(?:0N[hje]?|0W[hj]?|0[wn]|0x[\\da-fA-F]+|\\d+(?:\\.\\d*)?(?:e[+-]?\\d+)?[hjfeb]?)';
  const definition_6 =
      '\\\\\\w+\\b|\\b(?:abs|acos|aj0?|all|and|any|asc|asin|asof|atan|attr|avgs?|binr?|by|ceiling|cols|cor|cos|count|cov|cross|csv|cut|delete|deltas|desc|dev|differ|distinct|div|do|dsave|ej|enlist|eval|except|exec|exit|exp|fby|fills|first|fkeys|flip|floor|from|get|getenv|group|gtime|hclose|hcount|hdel|hopen|hsym|iasc|identity|idesc|if|ij|in|insert|inter|inv|keys?|last|like|list|ljf?|load|log|lower|lsq|ltime|ltrim|mavg|maxs?|mcount|md5|mdev|med|meta|mins?|mmax|mmin|mmu|mod|msum|neg|next|not|null|or|over|parse|peach|pj|plist|prds?|prev|prior|rand|rank|ratios|raze|read0|read1|reciprocal|reval|reverse|rload|rotate|rsave|rtrim|save|scan|scov|sdev|select|set|setenv|show|signum|sin|sqrt|ssr?|string|sublist|sums?|sv|svar|system|tables|tan|til|trim|txf|type|uj|ungroup|union|update|upper|upsert|value|var|views?|vs|wavg|where|while|within|wj1?|wsum|ww|xasc|xbar|xcols?|xdesc|xexp|xgroup|xkey|xlog|xprev|xrank)\\b';
  const definition_16 = '[\'\\/\\\\]:?|\\beach\\b';
  const definition_18 =
      '(?:\\B\\.\\B|\\b[01]:|<[=>]?|>=?|[:+\\-*%,!?~=|\$&#@^]):?|\\b_\\b:?';
  const definition_9 = '[(){}\\[\\];.]';
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_22, multiLine: true),
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_23, multiLine: true),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['number'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['function'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['operator'],
  );
  definition_0.addAllTokens({
    'string': [GrammarToken(pattern: RegExp(definition_1))],
    'comment': [
      definition_10,
      definition_11,
      definition_12,
      definition_13,
    ],
    'symbol': [GrammarToken(pattern: RegExp(definition_3))],
    'datetime': [definition_4],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'adverb': [definition_7],
    'verb': [definition_8],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'q',
    definition_0,
  );
}

final languageQ = _create();
