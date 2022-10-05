// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_14 = Grammar();
  final definition_16 = Grammar();
  final definition_18 = Grammar();
  const definition_12 = '(^|[^\\\\])(?:\\/\\*[\\s\\S]*?(?:\\*\\/|\$)|\\/\\/.*)';
  const definition_13 = '\\br("|\')(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_28 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\{(?:[^{}]|\\{(?:[^{}]|\\{[^}]*\\})*\\})+\\}';
  const definition_23 = '[\\s\\S]+';
  const definition_15 = '(?:\\B|\\bs)("|\')(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_17 = '\\b\\w+\\s*\\|\\|[\\s\\S]+?\\|\\|';
  const definition_25 = '^\\w+';
  const definition_30 = '(^\\s*\\|\\|)[\\s\\S]+(?=\\|\\|\$)';
  const definition_27 = '\\|\\|';
  const definition_19 = '((?:^|\\s)def[ \\t]+)[a-zA-Z_]\\w*(?=\\s*\\()';
  const definition_6 =
      '\\b(?:abstract|actor|also|annotation|assert|async|await|bool|boolean|break|byte|case|catch|changed|char|class|closed|constant|continue|def|default|del|double|elif|else|enum|every|extends|false|finally|float|for|from|global|gpudef|gpukernel|if|import|in|init|inject|int|lambda|local|long|loop|match|new|nodefault|null|of|onchange|open|out|override|package|parfor|parforsync|post|pre|private|protected|provide|provider|public|return|shared|short|single|size_t|sizeof|super|sync|this|throw|trait|trans|transient|true|try|typedef|unchecked|using|val|var|void|while|with)\\b';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_8 =
      '\\b0b[01][01_]*L?\\b|\\b0x(?:[\\da-f_]*\\.)?[\\da-f_p+-]+\\b|(?:\\b\\d[\\d_]*(?:\\.[\\d_]*)?|\\B\\.\\d[\\d_]*)(?:e[+-]?\\d[\\d_]*)?[dfls]?';
  const definition_9 = '[{}[\\];(),.:]';
  const definition_10 =
      '<==|>==|=>|->|<-|<>|&==|&<>|\\?:?|\\.\\?|\\+\\+|--|[-+*/=<>]=?|[!^~]|\\b(?:and|as|band|bor|bxor|comp|is|isnot|mod|or)\\b=?';
  const definition_20 = '@(?:\\w+:)?(?:\\w+|\\[[^\\]]+\\])?';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    inside: definition_14,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    inside: 'concurnas',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    inside: definition_16,
    global: true,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    inside: 'concurnas',
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    inside: definition_18,
    global: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['builtin'],
  );
  definition_14.addAllTokens({
    'interpolation': [definition_22],
    'regex': [GrammarToken(pattern: RegExp(definition_23))],
  });
  definition_16.addAllTokens({
    'interpolation': [definition_24],
    'string': [GrammarToken(pattern: RegExp(definition_23))],
  });
  definition_18.addAllTokens({
    'class-name': [GrammarToken(pattern: RegExp(definition_25))],
    'string': [definition_26],
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'regex-literal': [definition_2],
    'string-literal': [definition_3],
    'langext': [definition_4],
    'function': [definition_5],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'annotation': [definition_11],
  });

  return LanguageProto(
    'concurnas',
    definition_0,
    aliases: ['conc'],
  );
}

final languageConcurnas = _create();
