// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_25 = Grammar();
  const definition_1 = '#.*';
  const definition_23 =
      '(?:"""(?:[^"]|(?!""")")*"""|"(?:\\\\.|[^\\\\"\\r\\n])*")(?=\\s*[a-z_])';
  const definition_37 = '(^"(?:"")?)(?!\\1)[\\s\\S]+(?=\\1\$)';
  const definition_26 = '"""(?:[^"]|(?!""")")*"""|"(?:\\\\.|[^\\\\"\\r\\n])*"';
  const definition_4 = '(?:\\B-|\\b)\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?\\b';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_6 = '\\\$[a-z_]\\w*';
  const definition_27 = '@[a-z_]\\w*';
  const definition_29 =
      '\\b[a-z_]\\w*(?=\\s*(?:\\((?:[^()"]|"(?:\\\\.|[^\\\\"\\r\\n])*")*\\))?:)';
  const definition_30 = '\\b[A-Z]\\w*Input\\b';
  const definition_10 = '\\b(?:Boolean|Float|ID|Int|String)\\b';
  const definition_11 = '\\b[A-Z][A-Z_\\d]*\\b';
  const definition_32 =
      '(\\b(?:enum|implements|interface|on|scalar|type|union)\\s+|&\\s*|:\\s*|\\[)[A-Z_]\\w*';
  const definition_33 = '(\\bfragment\\s+|\\.{3}\\s*(?!on\\b))[a-zA-Z_]\\w*';
  const definition_34 = '(\\bmutation\\s+)[a-zA-Z_]\\w*';
  const definition_35 = '(\\bquery\\s+)[a-zA-Z_]\\w*';
  const definition_16 =
      '\\b(?:directive|enum|extend|fragment|implements|input|interface|mutation|on|query|repeatable|scalar|schema|subscription|type|union)\\b';
  const definition_17 = '[!=|&]|\\.{3}';
  const definition_18 = '\\w+(?=\\s*\\()';
  const definition_19 = '\\w+(?=\\s*\\{)';
  const definition_20 = '[!(){}\\[\\]:=,]';
  const definition_21 = '\\w+';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_23, caseSensitive: false),
    greedy: true,
    aliases: ['string'],
    inside: definition_25,
    global: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    inside: 'markdown',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    aliases: ['function'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_30),
    aliases: ['class-name'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    aliases: ['function'],
  );
  definition_0.tokenize = customTokenizer_0;
  definition_25.addAllTokens({
    'language-markdown': [definition_36],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'description': [definition_2],
    'string': [definition_3],
    'number': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'variable': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'directive': [definition_7],
    'attr-name': [definition_8],
    'atom-input': [definition_9],
    'scalar': [GrammarToken(pattern: RegExp(definition_10))],
    'constant': [GrammarToken(pattern: RegExp(definition_11))],
    'class-name': [definition_12],
    'fragment': [definition_13],
    'definition-mutation': [definition_14],
    'definition-query': [definition_15],
    'keyword': [GrammarToken(pattern: RegExp(definition_16))],
    'operator': [GrammarToken(pattern: RegExp(definition_17))],
    'property-query': [GrammarToken(pattern: RegExp(definition_18))],
    'object': [GrammarToken(pattern: RegExp(definition_19))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
    'property': [GrammarToken(pattern: RegExp(definition_21))],
  });

  return LanguageProto(
    'graphql',
    definition_0,
  );
}

final languageGraphql = _create();
