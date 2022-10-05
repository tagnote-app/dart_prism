// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_24 = Grammar();
  final definition_35 = Grammar();
  final definition_26 = Grammar();
  final definition_15 = Grammar();
  final definition_17 = Grammar();
  final definition_19 = Grammar();
  const definition_20 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_21 = '(^|[^\\\\:= \\t]|(?:^|[^= \\t])[ \\t]+)\\/\\/.*';
  const definition_22 = '(^|[^"\'])#.*';
  const definition_23 =
      '<INCLUDE_TYPOSCRIPT:\\s*source\\s*=\\s*(?:"[^"\\r\\n]*"|\'[^\'\\r\\n]*\')\\s*>';
  const definition_34 = '"[^"\\r\\n]*"|\'[^\'\\r\\n]*\'';
  const definition_4 =
      '\\b(?:ACT|ACTIFSUB|CARRAY|CASE|CLEARGIF|COA|COA_INT|CONSTANTS|CONTENT|CUR|EDITPANEL|EFFECT|EXT|FILE|FLUIDTEMPLATE|FORM|FRAME|FRAMESET|GIFBUILDER|GMENU|GMENU_FOLDOUT|GMENU_LAYERS|GP|HMENU|HRULER|HTML|IENV|IFSUB|IMAGE|IMGMENU|IMGMENUITEM|IMGTEXT|IMG_RESOURCE|INCLUDE_TYPOSCRIPT|JSMENU|JSMENUITEM|LLL|LOAD_REGISTER|NO|PAGE|RECORDS|RESTORE_REGISTER|TEMPLATE|TEXT|TMENU|TMENUITEM|TMENU_LAYERS|USER|USER_INT|_GIFBUILDER|global|globalString|globalVar)\\b';
  const definition_36 = 'INCLUDE_TYPOSCRIPT';
  const definition_25 = '@import\\s*(?:"[^"\\r\\n]*"|\'[^\'\\r\\n]*\')';
  const definition_14 = '^([^=]*=[< ]?)(?:(?!\\]\\n).)*';
  const definition_27 = '\\{\\\$.*\\}';
  const definition_28 = '^\\d+\$';
  const definition_29 = '[,|:]';
  const definition_16 = '\\b\\d+\\s*[.{=]';
  const definition_30 = '[.{=]';
  const definition_18 = '\\.?[-\\w\\\\]+\\.?';
  const definition_31 = '\\.';
  const definition_7 = '[{}[\\];(),.:|]';
  const definition_8 = '[<>]=?|[!=]=?=?|--?|\\+\\+?|&&?|\\|\\|?|[?*/~^%]';
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_23),
    inside: definition_24,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_34),
    inside: definition_35,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_36),
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_25),
    inside: definition_26,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    inside: definition_15,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16),
    inside: definition_17,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_18),
    inside: definition_19,
  );
  definition_35.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
  });
  definition_24.addAllTokens({
    'string': [definition_32],
    'keyword': [definition_33],
  });
  definition_26.addAllTokens({
    'string': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_15.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_27))],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'number': [GrammarToken(pattern: RegExp(definition_28))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_29))],
  });
  definition_17.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_19.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_31))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_9,
      definition_10,
      definition_11,
    ],
    'function': [
      definition_12,
      definition_13,
    ],
    'string': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'number': [definition_5],
    'tag': [definition_6],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'typoscript',
    definition_0,
    aliases: ['tsconfig'],
  );
}

final languageTyposcript = _create();
