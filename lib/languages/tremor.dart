// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_14 = Grammar();
  final definition_26 = Grammar();
  final definition_16 = Grammar();
  const definition_12 =
      '(^|[^\\\\])(?:\\/\\*[\\s\\S]*?\\*\\/|(?:--|\\/\\/|#).*)';
  const definition_13 =
      '(^|[^\\\\])(?:"""(?:[^"\\\\#]|\\\\[\\s\\S]|"(?!"")|#(?!\\{)|#\\{(?:[^"{}]|\\{[^{}]*\\}|"(?:[^"\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*")*\\})*"""|"(?:[^"\\\\\\r\\n#]|\\\\(?:\\r\\n|[\\s\\S])|#(?!\\{)|#\\{(?:[^"{}]|\\{[^{}]*\\}|"(?:[^"\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*")*\\})*")';
  const definition_25 =
      '#\\{(?:[^"{}]|\\{[^{}]*\\}|"(?:[^"\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*")*\\}';
  const definition_28 = '^#\\{|\\}\$';
  const definition_21 = '[\\s\\S]+';
  const definition_15 =
      '\\b[a-z_]\\w*\\|(?:[^\\r\\n\\\\|]|\\\\(?:\\r\\n|[\\s\\S]))*\\|';
  const definition_27 = '(^re)\\|[\\s\\S]+';
  const definition_23 = '^\\w+';
  const definition_24 = '\\|[\\s\\S]+';
  const definition_17 = '`[^`]*`';
  const definition_5 = '\\b[a-z_]\\w*(?=\\s*(?:::\\s*<|\\())\\b';
  const definition_6 =
      '\\b(?:args|as|by|case|config|connect|connector|const|copy|create|default|define|deploy|drop|each|emit|end|erase|event|flow|fn|for|from|group|having|insert|into|intrinsic|let|links|match|merge|mod|move|of|operator|patch|pipeline|recur|script|select|set|sliding|state|stream|to|tumbling|update|use|when|where|window|with)\\b';
  const definition_7 = '\\b(?:false|null|true)\\b';
  const definition_8 =
      '\\b(?:0b[01_]*|0x[0-9a-fA-F_]*|\\d[\\d_]*(?:\\.\\d[\\d_]*)?(?:[Ee][+-]?[\\d_]+)?)\\b';
  const definition_18 = '%(?=[({[])';
  const definition_10 =
      '[-+*\\/%~!^]=?|=[=>]?|&[&=]?|\\|[|=]?|<<?=?|>>?>?=?|(?:absent|and|not|or|present|xor)\\b';
  const definition_11 = '::|[;\\[\\]()\\{\\},.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    greedy: true,
    inside: definition_14,
    global: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_25),
    inside: definition_26,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_21),
    inside: 'tremor',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    greedy: true,
    inside: definition_16,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['punctuation'],
  );
  definition_26.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'expression': [definition_29],
  });
  definition_14.addAllTokens({
    'interpolation': [definition_20],
    'string': [GrammarToken(pattern: RegExp(definition_21))],
  });
  definition_16.addAllTokens({
    'regex': [definition_22],
    'function': [GrammarToken(pattern: RegExp(definition_23))],
    'value': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'interpolated-string': [definition_2],
    'extractor': [definition_3],
    'identifier': [definition_4],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'number': [GrammarToken(pattern: RegExp(definition_8))],
    'pattern-punctuation': [definition_9],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'tremor',
    definition_0,
    aliases: ['trickle', 'troy'],
  );
}

final languageTremor = _create();
