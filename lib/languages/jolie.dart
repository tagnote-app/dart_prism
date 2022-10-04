// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_19 = Grammar();
  final definition_21 = Grammar();
  const definition_23 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_24 = '(^|[^\\\\:])\\/\\/.*';
  const definition_16 = '(^|[^\\\\])"(?:\\\\[\\s\\S]|[^"\\\\])*"';
  const definition_17 =
      '((?:\\b(?:as|courier|embed|in|inputPort|outputPort|service)\\b|@)[ \\t]*)\\w+';
  const definition_18 =
      '(\\bAggregates\\s*:\\s*)(?:\\w+(?:\\s+with\\s+\\w+)?\\s*,\\s*)*\\w+(?:\\s+with\\s+\\w+)?';
  const definition_25 = '\\bwith\\b';
  const definition_26 = '\\w+';
  const definition_27 = ',';
  const definition_20 =
      '(\\bRedirects\\s*:\\s*)(?:\\w+\\s*=>\\s*\\w+\\s*,\\s*)*(?:\\w+\\s*=>\\s*\\w+)';
  const definition_28 = '=>';
  const definition_22 =
      '\\b(?:Aggregates|[Ii]nterfaces|Java|Javascript|Jolie|[Ll]ocation|OneWay|[Pp]rotocol|Redirects|RequestResponse)\\b(?=[ \\t]*:)';
  const definition_7 =
      '\\b(?:as|cH|comp|concurrent|constants|courier|cset|csets|default|define|else|embed|embedded|execution|exit|extender|for|foreach|forward|from|global|if|import|in|include|init|inputPort|install|instanceof|interface|is_defined|linkIn|linkOut|main|new|nullProcess|outputPort|over|private|provide|public|scope|sequential|service|single|spawn|synchronized|this|throw|throws|type|undef|until|while|with)\\b';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_9 = '\\b[a-z_]\\w*(?=[ \\t]*[@(])';
  const definition_10 = '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?l?';
  const definition_11 = '-[-=>]?|\\+[+=]?|<[<=]?|[>=*!]=?|&&|\\|\\||[?\\/%^@|]';
  const definition_12 = '[()[\\]{},;.:]';
  const definition_13 =
      '\\b(?:Byte|any|bool|char|double|enum|float|int|length|long|ranges|regex|string|undefined|void)\\b';
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    inside: definition_19,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    inside: definition_21,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_22),
  );
  definition_19.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_25))],
    'class-name': [GrammarToken(pattern: RegExp(definition_26))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_21.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
    'class-name': [GrammarToken(pattern: RegExp(definition_26))],
    'operator': [GrammarToken(pattern: RegExp(definition_28))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_14,
      definition_15,
    ],
    'string': [definition_2],
    'class-name': [definition_3],
    'aggregates': [definition_4],
    'redirects': [definition_5],
    'property': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'function': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
    'builtin': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'jolie',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageJolie = _create();
