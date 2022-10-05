// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  final definition_18 = Grammar();
  final definition_20 = Grammar();
  const definition_1 = '\\/\\/.*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_13 = '\'(?:\\\\.|[^\\\\\'\\r\\n])*\'';
  const definition_14 = '\\[(?:\\\\.|[^\\\\\\]\\r\\n])*\\]';
  const definition_38 = '([^[]|(?:^|[^\\\\])(?:\\\\\\\\)*\\\\\\[)-(?!\\])';
  const definition_28 =
      '\\\\(?:u(?:[a-fA-F\\d]{4}|\\{[a-fA-F\\d]+\\})|[pP]\\{[=\\w-]+\\}|[^\\r\\nupP])';
  const definition_29 = '[\\[\\]]';
  const definition_17 =
      '\\{(?:[^{}]|\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})*\\})*\\}';
  const definition_39 = '(\\{)[\\s\\S]+(?=\\})';
  const definition_31 = '[{}]';
  const definition_19 =
      '(->\\s*(?!\\s))(?:\\s*(?:,\\s*)?\\b[a-z]\\w*(?:\\s*\\([^()\\r\\n]*\\))?)+(?=\\s*;)';
  const definition_32 = '\\b\\w+(?=\\s*(?:[,(]|\$))';
  const definition_33 = '[,()]';
  const definition_21 = '@\\w+(?:::\\w+)*';
  const definition_23 = '#[ \\t]*\\w+';
  const definition_8 =
      '\\b(?:catch|channels|finally|fragment|grammar|import|lexer|locals|mode|options|parser|returns|throws|tokens)\\b';
  const definition_34 = '\\b[a-z]\\w*(?=\\s*:)';
  const definition_36 = '\\b[A-Z]\\w*(?=\\s*:)';
  const definition_10 = '\\b[A-Z][A-Z_]*\\b';
  const definition_11 = '\\.\\.|->|[|~]|[*+?]\\??';
  const definition_12 = '[;:()=]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    aliases: ['regex'],
    inside: definition_16,
    global: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    inside: definition_18,
    global: true,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    lookbehind: true,
    inside: definition_20,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_21),
    aliases: ['keyword'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['punctuation'],
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_34),
    aliases: ['rule', 'class-name'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_36),
    aliases: ['token', 'constant'],
  );
  definition_16.addAllTokens({
    'range': [definition_27],
    'escape': [GrammarToken(pattern: RegExp(definition_28))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_29))],
  });
  definition_18.addAllTokens({
    'content': [definition_30],
    'punctuation': [GrammarToken(pattern: RegExp(definition_31))],
  });
  definition_20.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_32))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_33))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'character-class': [definition_3],
    'action': [definition_4],
    'command': [definition_5],
    'annotation': [definition_6],
    'label': [definition_7],
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'definition': [
      definition_25,
      definition_26,
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_10))],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'antlr4',
    definition_0,
    aliases: ['g4'],
  );
}

final languageAntlr4 = _create();
