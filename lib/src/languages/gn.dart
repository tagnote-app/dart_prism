// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  final definition_19 = Grammar();
  const definition_11 = '#.*';
  const definition_12 = '(^|[^\\\\"])"(?:[^\\r\\n"\\\\]|\\\\.)*"';
  const definition_18 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$(?:\\{[\\s\\S]*?\\}|[a-zA-Z_]\\w*|0x[a-fA-F0-9]{2})';
  const definition_20 = '^\\\$0x[\\s\\S]{2}\$';
  const definition_21 = '^\\\$\\w+\$';
  const definition_24 = '^\\\$\\{|\\}\$';
  const definition_17 = '[\\s\\S]+';
  const definition_3 = '\\b(?:else|if)\\b';
  const definition_4 = '\\b(?:false|true)\\b';
  const definition_14 =
      '\\b(?:assert|defined|foreach|import|pool|print|template|tool|toolchain)(?=\\s*\\()';
  const definition_6 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_7 =
      '\\b(?:current_cpu|current_os|current_toolchain|default_toolchain|host_cpu|host_os|root_build_dir|root_gen_dir|root_out_dir|target_cpu|target_gen_dir|target_os|target_out_dir)\\b';
  const definition_8 = '-?\\b\\d+\\b';
  const definition_9 = '[-+!=<>]=?|&&|\\|\\|';
  const definition_10 = '[(){}[\\],.]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    inside: definition_19,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['punctuation'],
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_17),
    inside: 'gn',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    aliases: ['keyword'],
  );
  definition_19.addAllTokens({
    'number': [GrammarToken(pattern: RegExp(definition_20))],
    'variable': [GrammarToken(pattern: RegExp(definition_21))],
    'interpolation-punctuation': [definition_22],
    'expression': [definition_23],
  });
  definition_13.addAllTokens({
    'interpolation': [definition_16],
    'string': [GrammarToken(pattern: RegExp(definition_17))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string-literal': [definition_2],
    'keyword': [GrammarToken(pattern: RegExp(definition_3))],
    'boolean': [GrammarToken(pattern: RegExp(definition_4))],
    'builtin-function': [definition_5],
    'function': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [GrammarToken(pattern: RegExp(definition_8))],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'gn',
    definition_0,
    aliases: ['gni'],
  );
}

final languageGn = _create();
