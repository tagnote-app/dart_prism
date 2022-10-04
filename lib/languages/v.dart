// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_21 = Grammar();
  final definition_39 = Grammar();
  final definition_24 = Grammar();
  final definition_29 = Grammar();
  final definition_27 = Grammar();
  const definition_30 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_31 = '(^|[^\\\\:])\\/\\/.*';
  const definition_17 = '`(?:\\\\`|\\\\?[^`]{1,2})`';
  const definition_19 =
      'r?(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_38 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$(?:\\{[^{}]*\\}|\\w+(?:\\.\\w+(?:\\([^\\(\\)]*\\))?|\\[[^\\[\\]]+\\])*)';
  const definition_44 = '^\\\$\\w[\\s\\S]*\$';
  const definition_46 = '^\\\$\\{|\\}\$';
  const definition_48 = '[\\s\\S]+';
  const definition_22 = '(\\b(?:enum|interface|struct|type)\\s+)(?:C\\.)?\\w+';
  const definition_5 =
      '(?:\\b(?:__global|as|asm|assert|atomic|break|chan|const|continue|defer|else|embed|enum|fn|for|go(?:to)?|if|import|in|interface|is|lock|match|module|mut|none|or|pub|return|rlock|select|shared|sizeof|static|struct|type(?:of)?|union|unsafe)|\\\$(?:else|for|if)|#(?:flag|include))\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_23 = '\\b\\w+\\s*<\\w+>(?=\\()';
  const definition_33 = '^\\w+';
  const definition_40 = '<\\w+>';
  const definition_37 = '[<>]';
  const definition_36 = '\\w+';
  const definition_8 = '\\b\\w+(?=\\()';
  const definition_9 =
      '\\b(?:0x[a-f\\d]+(?:_[a-f\\d]+)*|0b[01]+(?:_[01]+)*|0o[0-7]+(?:_[0-7]+)*|\\d+(?:_\\d+)*(?:\\.\\d+(?:_\\d+)*)?)\\b';
  const definition_25 =
      '(^[\\t ]*)\\[(?:deprecated|direct_array_access|flag|inline|live|ref_only|typedef|unsafe_fn|windows_stdcall)\\]';
  const definition_35 = '[\\[\\]]';
  const definition_28 = '<\\w+>(?=\\s*[\\)\\{])';
  const definition_12 =
      '~|\\?|[*\\/%^!=]=?|\\+[=+]?|-[=-]?|\\|[=|]?|&(?:=|&|\\^=?)?|>(?:>=?|=)?|<(?:<=?|=|-)?|:=|\\.\\.\\.?';
  const definition_13 = '[{}[\\];(),.:]';
  const definition_14 =
      '\\b(?:any(?:_float|_int)?|bool|byte(?:ptr)?|charptr|f(?:32|64)|i(?:8|16|64|128|nt)|rune|size_t|string|u(?:16|32|64|128)|voidptr)\\b';
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['rune'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['quoted-string'],
    greedy: true,
    inside: definition_21,
    global: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    inside: definition_39,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_44),
    aliases: ['variable'],
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_46),
    aliases: ['punctuation'],
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_48),
    inside: 'v',
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_23),
    inside: definition_24,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_40),
    inside: definition_29,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_25, multiLine: true),
    lookbehind: true,
    aliases: ['annotation'],
    inside: definition_27,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_28),
    inside: definition_29,
  );
  definition_39.addAllTokens({
    'interpolation-variable': [definition_41],
    'interpolation-punctuation': [definition_42],
    'interpolation-expression': [definition_43],
  });
  definition_21.addAllTokens({
    'interpolation': [definition_32],
  });
  definition_29.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_37))],
    'class-name': [GrammarToken(pattern: RegExp(definition_36))],
  });
  definition_24.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_33))],
    'generic': [definition_34],
  });
  definition_27.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_35))],
    'keyword': [GrammarToken(pattern: RegExp(definition_36))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_15,
      definition_16,
    ],
    'char': [definition_2],
    'string': [definition_3],
    'class-name': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'generic-function': [definition_7],
    'function': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'attribute': [definition_10],
    'generic': [definition_11],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
    'builtin': [GrammarToken(pattern: RegExp(definition_14))],
  });

  return LanguageProto(
    'v',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageV = _create();
