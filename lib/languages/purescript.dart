// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_17 = Grammar();
  final definition_22 = Grammar();
  final definition_24 = Grammar();
  const definition_12 =
      '(^|[^-!#\$%*+=?&@|~.:<>^\\\\\\/])(?:--(?:(?=.)[^-!#\$%*+=?&@|~.:<>^\\\\\\/].*|\$)|\\{-[\\s\\S]*?-\\})';
  const definition_13 =
      '\'(?:[^\\\\\']|\\\\(?:[abfnrtv\\\\"\'&]|\\^[A-Z@[\\]^_]|ACK|BEL|BS|CAN|CR|DC1|DC2|DC3|DC4|DEL|DLE|EM|ENQ|EOT|ESC|ETB|ETX|FF|FS|GS|HT|LF|NAK|NUL|RS|SI|SO|SOH|SP|STX|SUB|SYN|US|VT|\\d+|o[0-7]+|x[0-9a-fA-F]+))\'';
  const definition_15 = '"(?:[^\\\\"]|\\\\(?:\\S|\\s+\\\\))*"';
  const definition_4 =
      '\\b(?:ado|case|class|data|derive|do|else|forall|if|in|infixl|infixr|instance|let|module|newtype|of|primitive|then|type|where)\\b|∀';
  const definition_16 =
      '(^[\\t ]*)import\\s+[A-Z][\\w\']*(?:\\.[A-Z][\\w\']*)*(?:\\s+as\\s+[A-Z][\\w\']*(?:\\.[A-Z][\\w\']*)*)?(?:\\s+hiding\\b)?';
  const definition_25 = '\\b(?:as|hiding|import)\\b';
  const definition_26 = '\\.';
  const definition_6 =
      '\\b(?:absurd|add|ap|append|apply|between|bind|bottom|clamp|compare|comparing|compose|conj|const|degree|discard|disj|div|eq|flap|flip|gcd|identity|ifM|join|lcm|liftA1|liftM1|map|max|mempty|min|mod|mul|negate|not|notEq|one|otherwise|recip|show|sub|top|unit|unless|unlessM|void|when|whenM|zero)\\b';
  const definition_7 =
      '\\b(?:\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?|0o[0-7]+|0x[0-9a-f]+)\\b';
  const definition_27 = '`(?:[A-Z][\\w\']*\\.)*[_a-z][\\w\']*`';
  const definition_19 =
      '[-!#\$%*+=?&@|~:<>^\\\\\\/][-!#\$%*+=?&@|~.:<>^\\\\\\/]*|\\.[-!#\$%*+=?&@|~.:<>^\\\\\\/]+';
  const definition_20 =
      '[\\xa2-\\xa6\\xa8\\xa9\\xac\\xae-\\xb1\\xb4\\xb8\\xd7\\xf7\\u02c2-\\u02c5\\u02d2-\\u02df\\u02e5-\\u02eb\\u02ed\\u02ef-\\u02ff\\u0375\\u0384\\u0385\\u03f6\\u0482\\u058d-\\u058f\\u0606-\\u0608\\u060b\\u060e\\u060f\\u06de\\u06e9\\u06fd\\u06fe\\u07f6\\u07fe\\u07ff\\u09f2\\u09f3\\u09fa\\u09fb\\u0af1\\u0b70\\u0bf3-\\u0bfa\\u0c7f\\u0d4f\\u0d79\\u0e3f\\u0f01-\\u0f03\\u0f13\\u0f15-\\u0f17\\u0f1a-\\u0f1f\\u0f34\\u0f36\\u0f38\\u0fbe-\\u0fc5\\u0fc7-\\u0fcc\\u0fce\\u0fcf\\u0fd5-\\u0fd8\\u109e\\u109f\\u1390-\\u1399\\u166d\\u17db\\u1940\\u19de-\\u19ff\\u1b61-\\u1b6a\\u1b74-\\u1b7c\\u1fbd\\u1fbf-\\u1fc1\\u1fcd-\\u1fcf\\u1fdd-\\u1fdf\\u1fed-\\u1fef\\u1ffd\\u1ffe\\u2044\\u2052\\u207a-\\u207c\\u208a-\\u208c\\u20a0-\\u20bf\\u2100\\u2101\\u2103-\\u2106\\u2108\\u2109\\u2114\\u2116-\\u2118\\u211e-\\u2123\\u2125\\u2127\\u2129\\u212e\\u213a\\u213b\\u2140-\\u2144\\u214a-\\u214d\\u214f\\u218a\\u218b\\u2190-\\u2307\\u230c-\\u2328\\u232b-\\u2426\\u2440-\\u244a\\u249c-\\u24e9\\u2500-\\u2767\\u2794-\\u27c4\\u27c7-\\u27e5\\u27f0-\\u2982\\u2999-\\u29d7\\u29dc-\\u29fb\\u29fe-\\u2b73\\u2b76-\\u2b95\\u2b97-\\u2bff\\u2ce5-\\u2cea\\u2e50\\u2e51\\u2e80-\\u2e99\\u2e9b-\\u2ef3\\u2f00-\\u2fd5\\u2ff0-\\u2ffb\\u3004\\u3012\\u3013\\u3020\\u3036\\u3037\\u303e\\u303f\\u309b\\u309c\\u3190\\u3191\\u3196-\\u319f\\u31c0-\\u31e3\\u3200-\\u321e\\u322a-\\u3247\\u3250\\u3260-\\u327f\\u328a-\\u32b0\\u32c0-\\u33ff\\u4dc0-\\u4dff\\ua490-\\ua4c6\\ua700-\\ua716\\ua720\\ua721\\ua789\\ua78a\\ua828-\\ua82b\\ua836-\\ua839\\uaa77-\\uaa79\\uab5b\\uab6a\\uab6b\\ufb29\\ufbb2-\\ufbc1\\ufdfc\\ufdfd\\ufe62\\ufe64-\\ufe66\\ufe69\\uff04\\uff0b\\uff1c-\\uff1e\\uff3e\\uff40\\uff5c\\uff5e\\uffe0-\\uffe6\\uffe8-\\uffee\\ufffc\\ufffd]';
  const definition_21 = '\\b(?:[A-Z][\\w\']*\\.)*[_a-z][\\w\']*';
  const definition_23 = '\\b(?:[A-Z][\\w\']*\\.)*[A-Z][\\w\']*';
  const definition_11 = '[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_12, multiLine: true),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['string'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16, multiLine: true),
    lookbehind: true,
    inside: definition_17,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_27),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_21),
    inside: definition_22,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_23),
    inside: definition_24,
  );
  definition_17.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_25))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_22.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_24.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'char': [definition_2],
    'string': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'import-statement': [definition_5],
    'builtin': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [
      definition_18,
      GrammarToken(pattern: RegExp(definition_19)),
      GrammarToken(pattern: RegExp(definition_20)),
    ],
    'hvariable': [definition_9],
    'constant': [definition_10],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'purescript',
    definition_0,
    aliases: ['purs'],
    requiredDependencies: ['haskell'],
  );
}

final languagePurescript = _create();
