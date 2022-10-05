// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  final definition_27 = Grammar();
  const definition_11 = '\\/\\/.*';
  const definition_12 =
      '(^|[^#"\'\\\\])(#*)(?:"""(?:[^\\\\"]|"(?!""\\2)|\\\\(?:(?!\\2)|\\2(?:[^()\\r\\n]|\\([^()]*\\))))*"""|\'\'\'(?:[^\\\\\']|\'(?!\'\'\\2)|\\\\(?:(?!\\2)|\\2(?:[^()\\r\\n]|\\([^()]*\\))))*\'\'\'|"(?:[^\\\\\\r\\n"]|"(?!\\2)|\\\\(?:(?!\\2)|\\2(?:[^()\\r\\n]|\\([^()]*\\))))*"|\'(?:[^\\\\\\r\\n\']|\'(?!\\2)|\\\\(?:(?!\\2)|\\2(?:[^()\\r\\n]|\\([^()]*\\))))*\')(?!["\'])\\2';
  const definition_24 =
      '(?=[\\s\\S]*["\'](#*)\$)\\\\\\1(?:U[a-fA-F0-9]{1,8}|u[a-fA-F0-9]{1,4}|x[a-fA-F0-9]{1,2}|\\d{2,3}|[^(])';
  const definition_26 = '(?=[\\s\\S]*["\'](#*)\$)\\\\\\1\\([^()]*\\)';
  const definition_28 = '^\\\\#*\\(|\\)\$';
  const definition_23 = '[\\s\\S]+';
  const definition_14 =
      '(^|[^\\w\$])(?:for|if|import|in|let|null|package)(?![\\w\$])';
  const definition_15 = '(^|[^\\w\$])(?:false|true)(?![\\w\$])';
  const definition_16 =
      '(^|[^\\w\$])(?:bool|bytes|float|float(?:32|64)|u?int(?:8|16|32|64|128)?|number|rune|string)(?![\\w\$])';
  const definition_17 = '@[\\w\$]+(?=\\s*\\()';
  const definition_19 = '(^|[^\\w\$])[a-z_\$][\\w\$]*(?=\\s*\\()';
  const definition_20 =
      '(^|[^\\w\$.])(?:0b[01]+(?:_[01]+)*|0o[0-7]+(?:_[0-7]+)*|0[xX][0-9A-Fa-f]+(?:_[0-9A-Fa-f]+)*|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[eE][+-]?\\d+(?:_\\d+)*)?(?:[KMGTP]i?)?)(?![\\w\$])';
  const definition_9 = '\\.{3}|_\\|_|&&?|\\|\\|?|[=!]~|[<>=!]=?|[+\\-*/?]';
  const definition_10 = '[()[\\]{},.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    inside: definition_27,
    global: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_23),
    inside: 'cue',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['function'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
  );
  definition_27.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'expression': [definition_29],
  });
  definition_13.addAllTokens({
    'escape': [definition_21],
    'interpolation': [definition_22],
    'string': [GrammarToken(pattern: RegExp(definition_23))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string-literal': [definition_2],
    'keyword': [definition_3],
    'boolean': [definition_4],
    'builtin': [definition_5],
    'attribute': [definition_6],
    'function': [definition_7],
    'number': [definition_8],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'cue',
    definition_0,
  );
}

final languageCue = _create();
