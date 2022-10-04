// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_3 = Grammar();
  final definition_10 = Grammar();
  final definition_28 = Grammar();
  final definition_38 = Grammar();
  final definition_12 = Grammar();
  final definition_14 = Grammar();
  final definition_16 = Grammar();
  const definition_2 = '<#[\\s\\S]+?#>';
  const definition_8 = '<#@[\\s\\S]*?#>';
  const definition_25 = '^<#@|#>\$';
  const definition_27 = '[\\s\\S]+';
  const definition_37 =
      '=(?:("|\')(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1|[^\\s\'">=]+)';
  const definition_39 = '^=|^["\']|["\']\$';
  const definition_35 = '\\b\\w+(?=\\s)';
  const definition_36 = '\\b\\w+';
  const definition_11 = '<#=[\\s\\S]*?#>';
  const definition_29 = '^<#=|#>\$';
  const definition_13 = '<#\\+[\\s\\S]*?#>';
  const definition_32 = '^<#\\+|#>\$';
  const definition_15 = '<#[\\s\\S]*?#>';
  const definition_33 = '^<#|#>\$';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_2),
    inside: definition_3,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_8),
    aliases: ['block'],
    inside: definition_10,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_25),
    aliases: ['important'],
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_27),
    inside: definition_28,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_37),
    inside: definition_38,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_11),
    aliases: ['block'],
    inside: definition_12,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_29),
    aliases: ['important'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_27),
    inside: 'csharp',
    aliases: ['language-csharp'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['block'],
    inside: definition_14,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_32),
    aliases: ['important'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_27),
    inside: 'csharp',
    aliases: ['language-csharp'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_15),
    aliases: ['block'],
    inside: definition_16,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['important'],
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_27),
    inside: 'csharp',
    aliases: ['language-csharp'],
  );
  definition_38.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_39))],
  });
  definition_28.addAllTokens({
    'attr-value': [definition_34],
    'keyword': [GrammarToken(pattern: RegExp(definition_35))],
    'attr-name': [GrammarToken(pattern: RegExp(definition_36))],
  });
  definition_10.addAllTokens({
    'delimiter': [definition_17],
    'content': [definition_18],
  });
  definition_12.addAllTokens({
    'delimiter': [definition_19],
    'content': [definition_20],
  });
  definition_14.addAllTokens({
    'delimiter': [definition_21],
    'content': [definition_22],
  });
  definition_16.addAllTokens({
    'delimiter': [definition_23],
    'content': [definition_24],
  });
  definition_3.addAllTokens({
    'directive': [definition_4],
    'expression': [definition_5],
    'class-feature': [definition_6],
    'standard': [definition_7],
  });
  definition_0.addAllTokens({
    'block': [definition_1],
  });

  return LanguageProto(
    't4-cs',
    definition_0,
    aliases: ['t4'],
    requiredDependencies: ['csharp', 'clike'],
  );
}

final languageT4Cs = _create();
