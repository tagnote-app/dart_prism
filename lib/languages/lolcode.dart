// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  final definition_17 = Grammar();
  const definition_12 = '\\bOBTW\\s[\\s\\S]*?\\sTLDR\\b';
  const definition_13 = '\\bBTW.+';
  const definition_14 = '"(?::.|[^":])*"';
  const definition_26 = ':\\{[^}]+\\}';
  const definition_30 = ':\\([a-f\\d]+\\)';
  const definition_31 = ':\\[[^\\]]+\\]';
  const definition_32 = ':[)>o":]';
  const definition_3 = '(?:\\B-)?(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)';
  const definition_16 =
      '(^|\\s)(?:A )?(?:BUKKIT|NOOB|NUMBAR|NUMBR|TROOF|YARN)(?=\\s|,|\$)';
  const definition_28 = 'A(?=\\s)';
  const definition_18 = '((?:^|\\s)(?:IM IN YR|IM OUTTA YR) )[a-zA-Z]\\w*';
  const definition_20 = '((?:^|\\s)(?:HOW IZ I|I IZ|IZ) )[a-zA-Z]\\w*';
  const definition_29 =
      '(^|\\s)(?:AN|FOUND YR|GIMMEH|GTFO|HAI|HAS A|HOW IZ I|I HAS A|I IZ|IF U SAY SO|IM IN YR|IM OUTTA YR|IS NOW(?: A)?|ITZ(?: A)?|IZ|KTHX|KTHXBYE|LIEK(?: A)?|MAEK|MEBBE|MKAY|NERFIN|NO WAI|O HAI IM|O RLY\\?|OIC|OMG|OMGWTF|R|SMOOSH|SRS|TIL|UPPIN|VISIBLE|WILE|WTF\\?|YA RLY|YR)(?=\\s|,|\$)';
  const definition_22 = '\'Z(?=\\s|,|\$)';
  const definition_23 = '(^|\\s)(?:FAIL|WIN)(?=\\s|,|\$)';
  const definition_24 = '(^|\\s)IT(?=\\s|,|\$)';
  const definition_25 =
      '(^|\\s)(?:NOT|BOTH SAEM|DIFFRINT|(?:ALL|ANY|BIGGR|BOTH|DIFF|EITHER|MOD|PRODUKT|QUOSHUNT|SMALLR|SUM|WON) OF)(?=\\s|,|\$)';
  const definition_11 = '\\.{3}|…|,|!';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    inside: definition_15,
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    inside: definition_17,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    aliases: ['string'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  definition_15.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_26))],
    'symbol': [
      GrammarToken(pattern: RegExp(definition_30, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_31)),
      GrammarToken(pattern: RegExp(definition_32)),
    ],
  });
  definition_17.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_28))],
  });
  definition_0.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_12)),
      GrammarToken(pattern: RegExp(definition_13)),
    ],
    'string': [definition_2],
    'number': [GrammarToken(pattern: RegExp(definition_3))],
    'symbol': [definition_4],
    'label': [definition_5],
    'function': [definition_6],
    'keyword': [
      definition_21,
      GrammarToken(pattern: RegExp(definition_22)),
    ],
    'boolean': [definition_8],
    'variable': [definition_9],
    'operator': [definition_10],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'lolcode',
    definition_0,
  );
}

final languageLolcode = _create();
