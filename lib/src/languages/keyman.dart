// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_12 = '\\bc .*';
  const definition_13 = '"[^"\\r\\n]*"|\'[^\'\\r\\n]*\'';
  const definition_14 =
      '\\[\\s*(?:(?:ALT|CAPS|CTRL|LALT|LCTRL|NCAPS|RALT|RCTRL|SHIFT)\\s+)*(?:[TKU]_[\\w?]+|[A-E]\\d\\d?|"[^"\\r\\n]*"|\'[^\'\\r\\n]*\')\\s*\\]';
  const definition_16 = '&\\w+';
  const definition_18 =
      '\\b(?:bitmap|bitmaps|caps always off|caps on only|copyright|hotkey|language|layout|message|name|shift frees caps|version)\\b';
  const definition_19 =
      '\\b(?:any|baselayout|beep|call|context|deadkey|dk|if|index|layer|notany|nul|outs|platform|reset|return|save|set|store|use)\\b';
  const definition_21 =
      '\\b(?:ansi|begin|group|match|newcontext|nomatch|postkeystroke|readonly|unicode|using keys)\\b';
  const definition_22 = '\\\$(?:keyman|keymanonly|keymanweb|kmfl|weaver):';
  const definition_9 = '\\b(?:U\\+[\\dA-F]+|d\\d+|x[\\da-f]+|\\d+)\\b';
  const definition_10 = '[+>\\\\\$]|\\.\\.';
  const definition_11 = '[()=,]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    greedy: true,
    aliases: ['function'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['bold'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    aliases: ['bold'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    aliases: ['keyword'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    aliases: ['keyword'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    aliases: ['property'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'virtual-key': [definition_3],
    'header-keyword': [definition_4],
    'header-statement': [definition_5],
    'rule-keyword': [definition_6],
    'structural-keyword': [definition_7],
    'compile-target': [definition_8],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'keyman',
    definition_0,
  );
}

final languageKeyman = _create();
