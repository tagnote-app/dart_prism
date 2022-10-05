// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '#.*';
  const definition_12 =
      '@?(?:("|\')(?:(?!\\1)[^\\n\\\\]|\\\\[\\s\\S])*\\1(?!"|\')|"""(?:[^\\\\]|\\\\[\\s\\S])*?""")';
  const definition_13 =
      '(^(?:class|class_name|extends)[ \\t]+|^export\\([ \\t]*|\\bas[ \\t]+|(?:\\b(?:const|var)[ \\t]|[,(])[ \\t]*\\w+[ \\t]*:[ \\t]*|->[ \\t]*)[a-zA-Z_]\\w*';
  const definition_4 =
      '\\b(?:and|as|assert|break|breakpoint|class|class_name|const|continue|elif|else|enum|export|extends|for|func|if|in|is|master|mastersync|match|not|null|onready|or|pass|preload|puppet|puppetsync|remote|remotesync|return|self|setget|signal|static|tool|var|while|yield)\\b';
  const definition_5 = '\\b[a-z_]\\w*(?=[ \\t]*\\()';
  const definition_6 = '\\\$\\w+';
  const definition_14 =
      '\\b0b[01_]+\\b|\\b0x[\\da-fA-F_]+\\b|(?:\\b\\d[\\d_]*(?:\\.[\\d_]*)?|\\B\\.[\\d_]+)(?:e[+-]?[\\d_]+)?\\b';
  const definition_15 = '\\b(?:INF|NAN|PI|TAU)\\b';
  const definition_8 = '\\b[A-Z][A-Z_\\d]*\\b';
  const definition_9 = '\\b(?:false|true)\\b';
  const definition_10 = '->|:=|&&|\\|\\||<<|>>|[-+*/%&|!<>=]=?|[~^]';
  const definition_11 = '[.:,;()[\\]{}]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13, multiLine: true),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'class-name': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'function': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'variable': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_14)),
      GrammarToken(pattern: RegExp(definition_15)),
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_8))],
    'boolean': [GrammarToken(pattern: RegExp(definition_9))],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'gdscript',
    definition_0,
  );
}

final languageGdscript = _create();
