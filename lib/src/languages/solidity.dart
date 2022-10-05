// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_18 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_19 = '(^|[^\\\\:])\\/\\/.*';
  const definition_14 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_15 =
      '(\\b(?:contract|enum|interface|library|new|struct|using)\\s+)(?!\\d)[\\w\$]+';
  const definition_4 =
      '\\b(?:address|bool|byte|u?int(?:8|16|24|32|40|48|56|64|72|80|88|96|104|112|120|128|136|144|152|160|168|176|184|192|200|208|216|224|232|240|248|256)?|string|bytes(?:[1-9]|[12]\\d|3[0-2])?)\\b';
  const definition_5 =
      '\\b(?:_|anonymous|as|assembly|assert|break|calldata|case|constant|constructor|continue|contract|default|delete|do|else|emit|enum|event|external|for|from|function|if|import|indexed|inherited|interface|internal|is|let|library|mapping|memory|modifier|new|payable|pragma|private|public|pure|require|returns?|revert|selfdestruct|solidity|storage|struct|suicide|switch|this|throw|using|var|view|while)\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 = '\\b\\w+(?=\\()';
  const definition_16 = '([<>]=?|\\^)\\d+\\.\\d+\\.\\d+\\b';
  const definition_9 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_10 =
      '=>|->|:=|=:|\\*\\*|\\+\\+|--|\\|\\||&&|<<=?|>>=?|[-+*/%^&|<>!=]=?|[~?]';
  const definition_11 = '[{}[\\];(),.:]';
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    aliases: ['number'],
  );
  definition_0.addAllTokens({
    'comment': [
      definition_12,
      definition_13,
    ],
    'string': [definition_2],
    'class-name': [definition_3],
    'builtin': [GrammarToken(pattern: RegExp(definition_4))],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'version': [definition_8],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'solidity',
    definition_0,
    aliases: ['sol'],
    requiredDependencies: ['clike'],
  );
}

final languageSolidity = _create();
