// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_14 = Grammar();
  final definition_16 = Grammar();
  const definition_10 = '#.*';
  const definition_11 =
      '(?:\\b(?!\\d)(?:\\w|\\\\x[89a-fA-F][0-9a-fA-F])+)?(?:"""[\\s\\S]*?"""(?!")|"(?:\\\\[\\s\\S]|""|[^"\\\\])*")';
  const definition_12 = '\'(?:\\\\(?:\\d+|x[\\da-fA-F]{0,2}|.)|[^\'])\'';
  const definition_13 =
      '(?:(?!\\d)(?:\\w|\\\\x[89a-fA-F][0-9a-fA-F])+|`[^`\\r\\n]+`)\\*?(?:\\[[^\\]]+\\])?(?=\\s*\\()';
  const definition_18 = '\\*\$';
  const definition_15 = '`[^`\\r\\n]+`';
  const definition_19 = '`';
  const definition_6 =
      '\\b(?:0[xXoObB][\\da-fA-F_]+|\\d[\\d_]*(?:(?!\\.\\.)\\.[\\d_]*)?(?:[eE][+-]?\\d[\\d_]*)?)(?:\'?[iuf]\\d*)?';
  const definition_7 =
      '\\b(?:addr|as|asm|atomic|bind|block|break|case|cast|concept|const|continue|converter|defer|discard|distinct|do|elif|else|end|enum|except|export|finally|for|from|func|generic|if|import|include|interface|iterator|let|macro|method|mixin|nil|object|out|proc|ptr|raise|ref|return|static|template|try|tuple|type|using|var|when|while|with|without|yield)\\b';
  const definition_17 =
      '(^|[({\\[](?=\\.\\.)|(?![({\\[]\\.).)(?:(?:[=+\\-*\\/<>@\$~&%|!?^:\\\\]|\\.\\.|\\.(?![)}\\]]))+|\\b(?:and|div|in|is|isnot|mod|not|notin|of|or|shl|shr|xor)\\b)';
  const definition_9 = '[({\\[]\\.|\\.[)}\\]]|[`(){}\\[\\],:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    inside: definition_14,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    inside: definition_16,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_17, multiLine: true),
    lookbehind: true,
  );
  definition_14.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_16.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'char': [definition_3],
    'function': [definition_4],
    'identifier': [definition_5],
    'number': [GrammarToken(pattern: RegExp(definition_6))],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'operator': [definition_8],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'nim',
    definition_0,
  );
}

final languageNim = _create();
