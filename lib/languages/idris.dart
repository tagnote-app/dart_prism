// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  final definition_21 = Grammar();
  final definition_23 = Grammar();
  const definition_11 = '(?:(?:--|\\|\\|\\|).*\$|\\{-[\\s\\S]*?-\\})';
  const definition_12 =
      '\'(?:[^\\\\\']|\\\\(?:[abfnrtv\\\\"\'&]|\\^[A-Z@[\\]^_]|ACK|BEL|BS|CAN|CR|DC1|DC2|DC3|DC4|DEL|DLE|EM|ENQ|EOT|ESC|ETB|ETX|FF|FS|GS|HT|LF|NAK|NUL|RS|SI|SO|SOH|SP|STX|SUB|SYN|US|VT|\\d+|o[0-7]+|x[0-9a-fA-F]+))\'';
  const definition_14 = '"(?:[^\\\\"]|\\\\(?:\\S|\\s+\\\\))*"';
  const definition_15 =
      '(^\\s*import\\s+)(?:[A-Z][\\w\']*)(?:\\.[A-Z][\\w\']*)*';
  const definition_24 = '\\.';
  const definition_5 =
      '\\b(?:Type|case|class|codata|constructor|corecord|data|do|dsl|else|export|if|implementation|implicit|import|impossible|in|infix|infixl|infixr|instance|interface|let|module|mutual|namespace|of|parameters|partial|postulate|private|proof|public|quoteGoal|record|rewrite|syntax|then|total|using|where|with)\\b';
  const definition_6 =
      '\\b(?:\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?|0o[0-7]+|0x[0-9a-f]+)\\b';
  const definition_25 = '`(?:[A-Z][\\w\']*\\.)*[_a-z][\\w\']*`';
  const definition_26 = '(\\s)\\.(?=\\s)';
  const definition_19 =
      '[-!#\$%*+=?&@|~:<>^\\\\\\/][-!#\$%*+=?&@|~.:<>^\\\\\\/]*|\\.[-!#\$%*+=?&@|~.:<>^\\\\\\/]+';
  const definition_20 = '\\b(?:[A-Z][\\w\']*\\.)*[_a-z][\\w\']*';
  const definition_22 = '\\b(?:[A-Z][\\w\']*\\.)*[A-Z][\\w\']*';
  const definition_10 = '[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11, multiLine: true),
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['string'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15, multiLine: true),
    lookbehind: true,
    inside: definition_16,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_20),
    inside: definition_21,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_22),
    inside: definition_23,
  );
  definition_16.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_21.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_23.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'char': [definition_2],
    'string': [definition_3],
    'import-statement': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'number': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'operator': [
      definition_17,
      definition_18,
      GrammarToken(pattern: RegExp(definition_19)),
    ],
    'hvariable': [definition_8],
    'constant': [definition_9],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'idris',
    definition_0,
    aliases: ['idr'],
    requiredDependencies: ['haskell'],
  );
}

final languageIdris = _create();
