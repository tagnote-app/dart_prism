// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_8 = Grammar();
  final definition_20 = Grammar();
  final definition_35 = Grammar();
  final definition_38 = Grammar();
  final definition_10 = Grammar();
  const definition_5 = '<#--[\\s\\S]*?-->';
  const definition_7 =
      '<\\/?[#@][a-zA-Z](?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^\\s\\S])*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*?>';
  const definition_16 = '(^<\\/?)[#@][a-z]\\w*';
  const definition_12 = '^<\\/?|\\/?>\$';
  const definition_18 = '\\s*\\S[\\s\\S]*';
  const definition_33 = '\\br("|\')(?:(?!\\1)[^\\\\]|\\\\.)*\\1';
  const definition_34 =
      '("|\')(?:(?!\\1|\\\$\\{)[^\\\\]|\\\\.|\\\$\\{(?:(?!\\})(?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^\\s\\S])*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\'))*\\})*\\1';
  const definition_37 =
      '((?:^|[^\\\\])(?:\\\\\\\\)*)\\\$\\{(?:(?!\\})(?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^\\s\\S])*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\'))*\\}';
  const definition_14 = '^\\\$\\{|\\}\$';
  const definition_22 = '\\b(?:as)\\b';
  const definition_23 = '\\b(?:false|true)\\b';
  const definition_31 = '((?:^|[^?])\\?\\s*)\\w+';
  const definition_25 = '\\b\\w+(?=\\s*\\()';
  const definition_26 = '\\b\\d+(?:\\.\\d+)?\\b';
  const definition_27 =
      '\\.\\.[<*!]?|->|--|\\+\\+|&&|\\|\\||\\?{1,2}|[-+*/%!=<>]=?|\\b(?:gt|gte|lt|lte)\\b';
  const definition_28 = '[,;.:()[\\]{}]';
  const definition_9 =
      '\\\$\\{(?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^<()"\']|\\((?:[^\\s\\S])*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*\\)|<(?!#--)|<#--(?:[^-]|-(?!->))*-->|"(?:[^\\\\"]|\\\\.)*"|\'(?:[^\\\\\']|\\\\.)*\')*?\\}';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_5),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_7, caseSensitive: false),
    greedy: true,
    inside: definition_8,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['ftl'],
    inside: definition_20,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_33),
    greedy: true,
    global: true,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_34),
    greedy: true,
    inside: definition_35,
    global: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    inside: definition_38,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['punctuation'],
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_9, caseSensitive: false),
    greedy: true,
    inside: definition_10,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['ftl'],
    inside: definition_20,
  );
  definition_38.rest = definition_20;
  definition_0.tokenize = embeddedIn('markup');
  definition_38.addAllTokens({
    'interpolation-punctuation': [definition_39],
  });
  definition_35.addAllTokens({
    'interpolation': [definition_36],
  });
  definition_20.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_5))],
    'string': [
      definition_29,
      definition_30,
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_22))],
    'boolean': [GrammarToken(pattern: RegExp(definition_23))],
    'builtin-function': [definition_24],
    'function': [GrammarToken(pattern: RegExp(definition_25))],
    'number': [GrammarToken(pattern: RegExp(definition_26))],
    'operator': [GrammarToken(pattern: RegExp(definition_27))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
  });
  definition_8.addAllTokens({
    'directive': [definition_11],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
    'content': [definition_13],
  });
  definition_10.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
    'content': [definition_15],
  });
  definition_0.addAllTokens({
    'ftl-comment': [definition_1],
    'ftl-directive': [definition_2],
    'ftl-interpolation': [definition_3],
  });

  return LanguageProto(
    'ftl',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageFtl = _create();
