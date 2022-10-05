// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_31 = '(^\\s*)=\\w[\\s\\S]*?=cut.*';
  const definition_32 = '(^|[^\\\\\$])#.*';
  const definition_33 =
      '\\b(?:q|qq|qw|qx)(?![a-zA-Z0-9])\\s*(?:([^a-zA-Z0-9\\s{(\\[<])(?:(?!\\1)[^\\\\]|\\\\[\\s\\S])*\\1|([a-zA-Z0-9])(?:(?!\\2)[^\\\\]|\\\\[\\s\\S])*\\2|(?:\\((?:[^()\\\\]|\\\\[\\s\\S])*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\}|\\[(?:[^[\\]\\\\]|\\\\[\\s\\S])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>))';
  const definition_34 = '("|`)(?:(?!\\1)[^\\\\]|\\\\[\\s\\S])*\\1';
  const definition_35 = '\'(?:[^\'\\\\\\r\\n]|\\\\.)*\'';
  const definition_36 =
      '\\b(?:m|qr)(?![a-zA-Z0-9])\\s*(?:([^a-zA-Z0-9\\s{(\\[<])(?:(?!\\1)[^\\\\]|\\\\[\\s\\S])*\\1|([a-zA-Z0-9])(?:(?!\\2)[^\\\\]|\\\\[\\s\\S])*\\2|(?:\\((?:[^()\\\\]|\\\\[\\s\\S])*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\}|\\[(?:[^[\\]\\\\]|\\\\[\\s\\S])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>))[msixpodualngc]*';
  const definition_37 =
      '(^|[^-])\\b(?:s|tr|y)(?![a-zA-Z0-9])\\s*(?:([^a-zA-Z0-9\\s{(\\[<])(?:(?!\\2)[^\\\\]|\\\\[\\s\\S])*\\2(?:(?!\\2)[^\\\\]|\\\\[\\s\\S])*\\2|([a-zA-Z0-9])(?:(?!\\3)[^\\\\]|\\\\[\\s\\S])*\\3(?:(?!\\3)[^\\\\]|\\\\[\\s\\S])*\\3|(?:\\((?:[^()\\\\]|\\\\[\\s\\S])*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\}|\\[(?:[^[\\]\\\\]|\\\\[\\s\\S])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>)\\s*(?:\\((?:[^()\\\\]|\\\\[\\s\\S])*\\)|\\{(?:[^{}\\\\]|\\\\[\\s\\S])*\\}|\\[(?:[^[\\]\\\\]|\\\\[\\s\\S])*\\]|<(?:[^<>\\\\]|\\\\[\\s\\S])*>))[msixpodualngcer]*';
  const definition_38 =
      '\\/(?:[^\\/\\\\\\r\\n]|\\\\.)*\\/[msixpodualngc]*(?=\\s*(?:\$|[\\r\\n,.;})&|\\-+*~<>!?^]|(?:and|cmp|eq|ge|gt|le|lt|ne|not|or|x|xor)\\b))';
  const definition_20 = '[&*\$@%]\\{\\^[A-Z]+\\}';
  const definition_21 = '[&*\$@%]\\^[A-Z_]';
  const definition_22 = '[&*\$@%]#?(?=\\{)';
  const definition_23 =
      '[&*\$@%]#?(?:(?:::)*\'?(?!\\d)[\\w\$]+(?![\\w\$]))+(?:::)*';
  const definition_24 = '[&*\$@%]\\d+';
  const definition_25 =
      '(?!%=)[\$@%][!"#\$%&\'()*+,\\-.\\/:;<=>?@[\\\\\\]^_`{|}~]';
  const definition_26 = '<(?![<=])\\S*?>|\\b_\\b';
  const definition_28 = 'v\\d+(?:\\.\\d+)*|\\d+(?:\\.\\d+){2,}';
  const definition_30 = '(\\bsub[ \\t]+)\\w+';
  const definition_8 =
      '\\b(?:any|break|continue|default|delete|die|do|else|elsif|eval|for|foreach|given|goto|if|last|local|my|next|our|package|print|redo|require|return|say|state|sub|switch|undef|unless|until|use|when|while)\\b';
  const definition_9 =
      '\\b(?:0x[\\dA-Fa-f](?:_?[\\dA-Fa-f])*|0b[01](?:_?[01])*|(?:(?:\\d(?:_?\\d)*)?\\.)?\\d(?:_?\\d)*(?:[Ee][+-]?\\d+)?)\\b';
  const definition_10 =
      '-[rwxoRWXOezsfdlpSbctugkTBMAC]\\b|\\+[+=]?|-[-=>]?|\\*\\*?=?|\\/\\/?=?|=[=~>]?|~[~=]?|\\|\\|?=?|&&?=?|<(?:=>?|<=?)?|>>?=?|![~=]?|[%^]=?|\\.(?:=|\\.\\.?)?|[\\\\?]|\\bx(?:=|\\b)|\\b(?:and|cmp|eq|ge|gt|le|lt|ne|not|or|xor)\\b';
  const definition_11 = '[{}[\\];(),:]';
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_31, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_33),
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_34),
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_35),
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_36),
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_38),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['symbol'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['string'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [
      definition_12,
      definition_13,
    ],
    'string': [
      definition_14,
      definition_15,
      definition_16,
    ],
    'regex': [
      definition_17,
      definition_18,
      definition_19,
    ],
    'variable': [
      GrammarToken(pattern: RegExp(definition_20)),
      GrammarToken(pattern: RegExp(definition_21)),
      GrammarToken(pattern: RegExp(definition_22)),
      GrammarToken(pattern: RegExp(definition_23)),
      GrammarToken(pattern: RegExp(definition_24)),
      GrammarToken(pattern: RegExp(definition_25)),
    ],
    'filehandle': [definition_5],
    'v-string': [definition_6],
    'function': [definition_7],
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [GrammarToken(pattern: RegExp(definition_9))],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'perl',
    definition_0,
  );
}

final languagePerl = _create();
