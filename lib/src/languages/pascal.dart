// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_14 = Grammar();
  const definition_9 = '\\{\\\$[\\s\\S]*?\\}';
  const definition_11 = '\\(\\*[\\s\\S]*?\\*\\)|\\{[\\s\\S]*?\\}|\\/\\/.*';
  const definition_12 =
      '(?:\'(?:\'\'|[^\'\\r\\n])*\'(?!\')|#[&\$%]?[a-f\\d]+)+|\\^[a-z]';
  const definition_13 = '(\\basm\\b)[\\s\\S]+?(?=\\bend\\s*[;[])';
  const definition_19 = '(?:[&%]\\d+|\\\$[a-f\\d]+)';
  const definition_20 = '\\b\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?';
  const definition_8 = '\\(\\.|\\.\\)|[()\\[\\]:;,.]';
  const definition_25 =
      '(^|[^&])\\b(?:absolute|array|asm|begin|case|const|constructor|destructor|do|downto|else|end|file|for|function|goto|if|implementation|inherited|inline|interface|label|nil|object|of|operator|packed|procedure|program|record|reintroduce|repeat|self|set|string|then|to|type|unit|until|uses|var|while|with)\\b';
  const definition_26 = '(^|[^&])\\b(?:dispose|exit|false|new|true)\\b';
  const definition_27 =
      '(^|[^&])\\b(?:class|dispinterface|except|exports|finalization|finally|initialization|inline|library|on|out|packed|property|raise|resourcestring|threadvar|try)\\b';
  const definition_28 =
      '(^|[^&])\\b(?:absolute|abstract|alias|assembler|bitpacked|break|cdecl|continue|cppdecl|cvar|default|deprecated|dynamic|enumerator|experimental|export|external|far|far16|forward|generic|helper|implements|index|interrupt|iochecks|local|message|name|near|nodefault|noreturn|nostackframe|oldfpccall|otherwise|overload|override|pascal|platform|private|protected|public|published|read|register|reintroduce|result|safecall|saveregisters|softfloat|specialize|static|stdcall|stored|strict|unaligned|unimplemented|varargs|virtual|write)\\b';
  const definition_21 = '\\.\\.|\\*\\*|:=|<[<=>]?|>[>=]?|[+\\-*\\/]=?|[@^=]';
  const definition_29 =
      '(^|[^&])\\b(?:and|as|div|exclude|in|include|is|mod|not|or|shl|shr|xor)\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    aliases: ['marco', 'property'],
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_14,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false),
    lookbehind: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    lookbehind: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_28, caseSensitive: false),
    lookbehind: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
  );
  definition_14.addAllTokens({
    'directive': [definition_1],
    'comment': [definition_2],
    'string': [definition_3],
    'number': [
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_20, caseSensitive: false)),
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });
  definition_0.addAllTokens({
    'directive': [definition_1],
    'comment': [definition_2],
    'string': [definition_3],
    'asm': [definition_4],
    'keyword': [
      definition_15,
      definition_16,
      definition_17,
      definition_18,
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_20, caseSensitive: false)),
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_21)),
      definition_22,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'pascal',
    definition_0,
    aliases: ['objectpascal'],
  );
}

final languagePascal = _create();
