// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_10 = Grammar();
  final definition_13 = Grammar();
  final definition_31 = Grammar();
  final definition_33 = Grammar();
  final definition_35 = Grammar();
  const definition_7 = '<!--(?:(?!<!--)[\\s\\S])*?-->';
  const definition_8 = '<\\?[\\s\\S]+?\\?>';
  const definition_9 =
      '<!DOCTYPE(?:[^>"\'[\\]]|"[^"]*"|\'[^\']*\')+(?:\\[(?:[^<"\'\\]]|"[^"]*"|\'[^\']*\'|<(?!!--)|<!--(?:[^-]|-(?!->))*-->)*\\]\\s*)?>';
  const definition_27 = '(^[^\\[]*\\[)[\\s\\S]+(?=\\]>\$)';
  const definition_29 = '"[^"]*"|\'[^\']*\'';
  const definition_18 = '^<!|>\$|[[\\]]';
  const definition_19 = '^DOCTYPE';
  const definition_20 = '[^\\s<>\'"]+';
  const definition_11 = '<!\\[CDATA\\[[\\s\\S]*?\\]\\]>';
  const definition_12 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_30 = '^(<\\/?)[^\\s>\\/]+';
  const definition_36 = '^[^\\s>\\/:]+:';
  const definition_32 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_40 = '^=';
  const definition_42 = '^(\\s*)["\']|["\']\$';
  const definition_25 = '&[\\da-z]{1,8};';
  const definition_15 = '&#x?[\\da-f]{1,8};';
  const definition_23 = '^<\\/?|\\/?>\$';
  const definition_34 = '[^\\s>\\/]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_7),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_9, caseSensitive: false),
    greedy: true,
    inside: definition_10,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    greedy: true,
    inside: 'xml',
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_29),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: definition_31,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_32),
    inside: definition_33,
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_40),
    aliases: ['attr-equals'],
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_34),
    inside: definition_35,
  );
  definition_10.addAllTokens({
    'internal-subset': [definition_16],
    'string': [definition_17],
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
    'doctype-tag': [
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false))
    ],
    'name': [GrammarToken(pattern: RegExp(definition_20))],
  });
  definition_31.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_36))],
  });
  definition_33.addAllTokens({
    'punctuation': [
      definition_38,
      definition_39,
    ],
    'entity': [
      definition_14,
      GrammarToken(pattern: RegExp(definition_15, caseSensitive: false)),
    ],
  });
  definition_35.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_36))],
  });
  definition_13.addAllTokens({
    'tag': [definition_21],
    'attr-value': [definition_22],
    'punctuation': [GrammarToken(pattern: RegExp(definition_23))],
    'attr-name': [definition_24],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'prolog': [definition_2],
    'doctype': [definition_3],
    'cdata': [definition_4],
    'tag': [definition_5],
    'entity': [
      definition_14,
      GrammarToken(pattern: RegExp(definition_15, caseSensitive: false)),
    ],
  });

  return LanguageProto(
    'xml',
    definition_0,
    aliases: ['ssml', 'atom', 'rss'],
  );
}

final languageXml = _create();
