// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  final definition_20 = Grammar();
  final definition_23 = Grammar();
  final definition_25 = Grammar();
  const definition_1 = ';.*';
  const definition_11 = '(?:%[is])?"[^"\\n\\r]*"';
  const definition_26 = '^%[is]';
  const definition_13 = '%(?:b[01]+-[01]+|d\\d+-\\d+|x[A-F\\d]+-[A-F\\d]+)';
  const definition_15 =
      '%(?:b[01]+(?:\\.[01]+)*|d\\d+(?:\\.\\d+)*|x[A-F\\d]+(?:\\.[A-F\\d]+)*)';
  const definition_16 = '(^|[^\\w-])(?:\\d*\\*\\d*|\\d+)';
  const definition_18 = '(^[ \\t]*)(?:[a-z][\\w-]*|<[^<>\\r\\n]*>)(?=\\s*=)';
  const definition_27 = '<|>';
  const definition_21 =
      '(?:(^|[^<\\w-])(?:ALPHA|BIT|CHAR|CR|CRLF|CTL|DIGIT|DQUOTE|HEXDIG|HTAB|LF|LWSP|OCTET|SP|VCHAR|WSP)|<(?:ALPHA|BIT|CHAR|CR|CRLF|CTL|DIGIT|DQUOTE|HEXDIG|HTAB|LF|LWSP|OCTET|SP|VCHAR|WSP)>)(?![\\w-])';
  const definition_24 = '(^|[^<\\w-])[a-z][\\w-]*|<[^<>\\r\\n]*>';
  const definition_9 = '=\\/?|\\/';
  const definition_10 = '[()\\[\\]]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    inside: definition_12,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13, caseSensitive: false),
    aliases: ['number'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    aliases: ['number'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_18, multiLine: true),
    lookbehind: true,
    aliases: ['keyword'],
    inside: definition_20,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
    aliases: ['rule', 'constant'],
    inside: definition_23,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    lookbehind: true,
    inside: definition_25,
  );
  definition_12.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_20.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_23.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_25.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'range': [definition_3],
    'terminal': [definition_4],
    'repetition': [definition_5],
    'definition': [definition_6],
    'core-rule': [definition_7],
    'rule': [definition_8],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'abnf',
    definition_0,
  );
}

final languageAbnf = _create();
