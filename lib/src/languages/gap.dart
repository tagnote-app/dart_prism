// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  final definition_15 = Grammar();
  const definition_11 = '^gap>[\\s\\S]*?(?=^gap>|\$(?![\\s\\S]))';
  const definition_22 = '^(gap>).+(?:(?:\\r(?:\\n|(?!\\n))|\\n)>.*)*';
  const definition_20 = '^gap>';
  const definition_13 = '#.*';
  const definition_14 =
      '(^|[^\\\\\'"])(?:\'(?:[^\\r\\n\\\\\']|\\\\.){1,10}\'|"(?:[^\\r\\n\\\\"]|\\\\.)*"(?!")|"""[\\s\\S]*?""")';
  const definition_17 = '([\\r\\n])>';
  const definition_4 =
      '\\b(?:Assert|Info|IsBound|QUIT|TryNextMethod|Unbind|and|atomic|break|continue|do|elif|else|end|fi|for|function|if|in|local|mod|not|od|or|quit|readonly|readwrite|rec|repeat|return|then|until|while)\\b';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_16 =
      '(^|[^\\w.]|\\.\\.)(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[eE][+-]?\\d+)?(?:_[a-z]?)?(?=\$|[^\\w.]|\\.\\.)';
  const definition_9 = '->|[-+*/^~=!]|<>|[<>]=?|:=|\\.\\.';
  const definition_10 = '[()[\\]{},;.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11, multiLine: true),
    greedy: true,
    inside: definition_12,
    global: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    inside: 'gap',
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    greedy: true,
    inside: definition_15,
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  definition_12.addAllTokens({
    'gap': [definition_19],
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
  });
  definition_15.addAllTokens({
    'continuation': [definition_21],
  });
  definition_0.addAllTokens({
    'shell': [definition_1],
    'comment': [definition_2],
    'string': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'number': [definition_7],
    'continuation': [definition_8],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'gap',
    definition_0,
  );
}

final languageGap = _create();
