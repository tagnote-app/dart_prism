// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  const definition_1 = '(?:\\brem|\').*';
  const definition_13 =
      '(^[\\t ]*)#(?:const|else(?:[\\t ]+if)?|end[\\t ]+if|error|if).*';
  const definition_22 = '(^#error).+';
  const definition_23 = '^#(?:const|else(?:[\\t ]+if)?|end[\\t ]+if|error|if)';
  const definition_25 = '[\\s\\S]+';
  const definition_16 =
      '([\\r\\n{,][\\t ]*)(?:(?!\\d)\\w+|"(?:[^"\\r\\n]|"")*"(?!"))(?=[ \\t]*:)';
  const definition_17 = '"(?:[^"\\r\\n]|"")*"(?!")';
  const definition_18 = '(\\bAs[\\t ]+)\\w+';
  const definition_6 =
      '\\b(?:As|Dim|Each|Else|Elseif|End|Exit|For|Function|Goto|If|In|Print|Return|Step|Stop|Sub|Then|To|While)\\b';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_8 = '\\b(?!\\d)\\w+(?=[\\t ]*\\()';
  const definition_9 =
      '(?:\\b\\d+(?:\\.\\d+)?(?:[ed][+-]\\d+)?|&h[a-f\\d]+)\\b[%&!#]?';
  const definition_10 =
      '--|\\+\\+|>>=?|<<=?|<>|[-+*/\\\\<>]=?|[:^=?]|\\b(?:and|mod|not|or)\\b';
  const definition_11 = '[.,;()[\\]{}]';
  const definition_12 = '\\b(?:LINE_NUM)\\b';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
    inside: definition_15,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['keyword'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_25),
    inside: 'brightscript',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    lookbehind: true,
  );
  definition_15.addAllTokens({
    'error-message': [definition_19],
    'directive': [definition_20],
    'expression': [definition_21],
  });
  definition_0.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_1, caseSensitive: false))
    ],
    'directive-statement': [definition_2],
    'property': [definition_3],
    'string': [definition_4],
    'class-name': [definition_5],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'function': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
    'constant': [
      GrammarToken(pattern: RegExp(definition_12, caseSensitive: false))
    ],
  });

  return LanguageProto(
    'brightscript',
    definition_0,
  );
}

final languageBrightscript = _create();
