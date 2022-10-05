// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  const definition_10 =
      '(^|[^\\\\])#(?:\\\\(?:\\r\\n|[\\s\\S])|[^\\\\\\r\\n])*';
  const definition_11 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_12 = '\\.[A-Z][^:#=\\s]+(?=\\s*:(?!=))';
  const definition_14 = '^(?:[^:=\\s]|[ \\t]+(?![\\s:]))+(?=\\s*:(?!=))';
  const definition_18 = '\\\$+(?:(?!\\\$)[^(){}:#=\\s]+|(?=[({]))';
  const definition_5 =
      '\\\$+(?:(?!\\\$)[^(){}:#=\\s]+|\\([@*%<^+?][DF]\\)|(?=[({]))';
  const definition_6 =
      '-include\\b|\\b(?:define|else|endef|endif|export|ifn?def|ifn?eq|include|override|private|sinclude|undefine|unexport|vpath)\\b';
  const definition_17 =
      '(\\()(?:abspath|addsuffix|and|basename|call|dir|error|eval|file|filter(?:-out)?|findstring|firstword|flavor|foreach|guile|if|info|join|lastword|load|notdir|or|origin|patsubst|realpath|shell|sort|strip|subst|suffix|value|warning|wildcard|word(?:list|s)?)(?=[ \\t])';
  const definition_8 = '(?:::|[?:+!])?=|[|@]';
  const definition_9 = '[:;(){}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['builtin'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14, multiLine: true),
    aliases: ['symbol'],
    inside: definition_16,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
  );
  definition_16.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'builtin-target': [definition_3],
    'target': [definition_4],
    'variable': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [definition_7],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'makefile',
    definition_0,
  );
}

final languageMakefile = _create();
