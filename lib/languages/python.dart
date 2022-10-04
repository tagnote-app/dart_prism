// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  final definition_31 = Grammar();
  final definition_24 = Grammar();
  const definition_14 = '(^|[^\\\\])#.*';
  const definition_15 =
      '(?:f|fr|rf)(?:("""|\'\'\')[\\s\\S]*?\\1|("|\')(?:\\\\.|(?!\\2)[^\\\\\\r\\n])*\\2)';
  const definition_30 =
      '((?:^|[^{])(?:\\{\\{)*)\\{(?!\\{)(?:[^{}]|\\{(?!\\{)(?:[^{}]|\\{(?!\\{)(?:[^{}])+\\})+\\})+\\}';
  const definition_35 = '(:)[^:(){}]+(?=\\}\$)';
  const definition_36 = '![sra](?=[:}]\$)';
  const definition_26 = '[\\s\\S]+';
  const definition_17 = '(?:[rub]|br|rb)?("""|\'\'\')[\\s\\S]*?\\1';
  const definition_19 =
      '(?:[rub]|br|rb)?("|\')(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_20 = '((?:^|\\s)def[ \\t]+)[a-zA-Z_]\\w*(?=\\s*\\()';
  const definition_21 = '(\\bclass\\s+)\\w+';
  const definition_22 = '(^[\\t ]*)@\\w+(?:\\.\\w+)*';
  const definition_29 = '\\.';
  const definition_8 =
      '\\b(?:_(?=\\s*:)|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|exec|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|not|or|pass|print|raise|return|try|while|with|yield)\\b';
  const definition_9 =
      '\\b(?:__import__|abs|all|any|apply|ascii|basestring|bin|bool|buffer|bytearray|bytes|callable|chr|classmethod|cmp|coerce|compile|complex|delattr|dict|dir|divmod|enumerate|eval|execfile|file|filter|float|format|frozenset|getattr|globals|hasattr|hash|help|hex|id|input|int|intern|isinstance|issubclass|iter|len|list|locals|long|map|max|memoryview|min|next|object|oct|open|ord|pow|property|range|raw_input|reduce|reload|repr|reversed|round|set|setattr|slice|sorted|staticmethod|str|sum|super|tuple|type|unichr|unicode|vars|xrange|zip)\\b';
  const definition_10 = '\\b(?:False|None|True)\\b';
  const definition_11 =
      '\\b0(?:b(?:_?[01])+|o(?:_?[0-7])+|x(?:_?[a-f0-9])+)\\b|(?:\\b\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\B\\.\\d+(?:_\\d+)*)(?:e[+-]?\\d+(?:_\\d+)*)?j?(?!\\w)';
  const definition_12 =
      '[-+%=]=?|!=|:=|\\*\\*?=?|\\/\\/?=?|<[<=>]?|>[=>]?|[&|^~]';
  const definition_13 = '[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    greedy: true,
    inside: definition_16,
    global: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: definition_31,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_36),
    aliases: ['punctuation'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_22, multiLine: true),
    lookbehind: true,
    aliases: ['annotation', 'punctuation'],
    inside: definition_24,
  );
  definition_31.rest = 'python';
  definition_31.addAllTokens({
    'format-spec': [definition_32],
    'conversion-option': [definition_33],
  });
  definition_16.addAllTokens({
    'interpolation': [definition_25],
    'string': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_24.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_29))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string-interpolation': [definition_2],
    'triple-quoted-string': [definition_3],
    'string': [definition_4],
    'function': [definition_5],
    'class-name': [definition_6],
    'decorator': [definition_7],
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'builtin': [GrammarToken(pattern: RegExp(definition_9))],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'number': [
      GrammarToken(pattern: RegExp(definition_11, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'python',
    definition_0,
    aliases: ['py'],
  );
}

final languagePython = _create();
