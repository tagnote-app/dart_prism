// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_10 = '^#Rem\\s[\\s\\S]*?^#End|\'.+';
  const definition_11 = '"[^"\\r\\n]*"';
  const definition_12 = '(^[ \\t]*)#.+';
  const definition_4 = '\\b\\w+(?=\\()';
  const definition_14 = '\\b[?%#\$]';
  const definition_16 =
      '((?:\\.\\.)?)(?:(?:\\b|\\B-\\.?|\\B\\.)\\d+(?:(?!\\.\\.)\\.\\d*)?|\\\$[\\da-f]+)';
  const definition_7 =
      '\\b(?:Abstract|Array|Bool|Case|Catch|Class|Const|Continue|Default|Eachin|Else|ElseIf|End|EndIf|Exit|Extends|Extern|False|Field|Final|Float|For|Forever|Function|Global|If|Implements|Import|Inline|Int|Interface|Local|Method|Module|New|Next|Null|Object|Private|Property|Public|Repeat|Return|Select|Self|Step|Strict|String|Super|Then|Throw|To|True|Try|Until|Void|Wend|While)\\b';
  const definition_8 =
      '\\.\\.|<[=>]?|>=?|:?=|(?:[+\\-*\\/&~|]|\\b(?:Mod|Shl|Shr)\\b)=?|\\b(?:And|Not|Or)\\b';
  const definition_9 = '[.,:;()\\[\\]]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10, caseSensitive: false, multiLine: true),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['class-name'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'preprocessor': [definition_3],
    'function': [GrammarToken(pattern: RegExp(definition_4))],
    'type-char': [definition_5],
    'number': [definition_6],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'monkey',
    definition_0,
  );
}

final languageMonkey = _create();
