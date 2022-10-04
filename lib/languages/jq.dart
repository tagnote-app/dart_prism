// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  final definition_30 = Grammar();
  const definition_1 = '#.*';
  const definition_14 =
      '(^|[^\\\\])"(?:[^"\\r\\n\\\\]|\\\\[^\\r\\n(]|\\\\\\((?:[^()]|\\([^()]*\\))*\\))*"(?=\\s*:(?!:))';
  const definition_29 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\\\\((?:[^()]|\\([^()]*\\))*\\)';
  const definition_33 = '^(\\\\\\()[\\s\\S]+(?=\\)\$)';
  const definition_32 = '^\\\\\\(|\\)\$';
  const definition_16 =
      '(^|[^\\\\])"(?:[^"\\r\\n\\\\]|\\\\[^\\r\\n(]|\\\\\\((?:[^()]|\\([^()]*\\))*\\))*"';
  const definition_17 = '(\\bdef\\s+)[a-z_]\\w+';
  const definition_5 = '\\B\\\$\\w+';
  const definition_18 = '\\b[a-z_]\\w*(?=\\s*:(?!:))';
  const definition_7 =
      '\\b(?:as|break|catch|def|elif|else|end|foreach|if|import|include|label|module|modulemeta|null|reduce|then|try|while)\\b';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_9 = '(?:\\b\\d+\\.|\\B\\.)?\\b\\d+(?:[eE][+-]?\\d+)?\\b';
  const definition_27 = '\\|=?';
  const definition_21 =
      '\\.\\.|[!=<>]?=|\\?\\/\\/|\\/\\/=?|[-+*/%]=?|[<>?]|\\b(?:and|not|or)\\b';
  const definition_22 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_12 = '::|[()\\[\\]{},:;]|\\.(?=\\s*[\\[\\w\$])';
  const definition_24 = '\\.';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    greedy: true,
    inside: definition_15,
    global: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    inside: definition_30,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    inside: 'jq',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    greedy: true,
    inside: definition_15,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    aliases: ['property'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_27),
    aliases: ['pipe'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    aliases: ['function'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['important'],
  );
  definition_30.addAllTokens({
    'content': [definition_31],
    'punctuation': [GrammarToken(pattern: RegExp(definition_32))],
  });
  definition_15.addAllTokens({
    'interpolation': [definition_26],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'property': [definition_2],
    'string': [definition_3],
    'function': [definition_4],
    'variable': [GrammarToken(pattern: RegExp(definition_5))],
    'property-literal': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [GrammarToken(pattern: RegExp(definition_9))],
    'operator': [
      definition_20,
      GrammarToken(pattern: RegExp(definition_21)),
    ],
    'c-style-function': [definition_11],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
    'dot': [definition_13],
  });

  return LanguageProto(
    'jq',
    definition_0,
  );
}

final languageJq = _create();
