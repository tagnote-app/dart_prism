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
      '\\b(?:case|class|data|deriving|do|else|if|in|infixl|infixr|instance|let|module|newtype|of|primitive|then|type|where)\\b';
  const definition_16 =
      '(^[\\t ]*)import\\s+(?:qualified\\s+)?(?:[A-Z][\\w\']*)(?:\\.[A-Z][\\w\']*)*(?:\\s+as\\s+(?:[A-Z][\\w\']*)(?:\\.[A-Z][\\w\']*)*)?(?:\\s+hiding\\b)?';
  const definition_25 = '\\b(?:as|hiding|import|qualified)\\b';
  const definition_26 = '\\.';
  const definition_6 =
      '\\b(?:abs|acos|acosh|all|and|any|appendFile|approxRational|asTypeOf|asin|asinh|atan|atan2|atanh|basicIORun|break|catch|ceiling|chr|compare|concat|concatMap|const|cos|cosh|curry|cycle|decodeFloat|denominator|digitToInt|div|divMod|drop|dropWhile|either|elem|encodeFloat|enumFrom|enumFromThen|enumFromThenTo|enumFromTo|error|even|exp|exponent|fail|filter|flip|floatDigits|floatRadix|floatRange|floor|fmap|foldl|foldl1|foldr|foldr1|fromDouble|fromEnum|fromInt|fromInteger|fromIntegral|fromRational|fst|gcd|getChar|getContents|getLine|group|head|id|inRange|index|init|intToDigit|interact|ioError|isAlpha|isAlphaNum|isAscii|isControl|isDenormalized|isDigit|isHexDigit|isIEEE|isInfinite|isLower|isNaN|isNegativeZero|isOctDigit|isPrint|isSpace|isUpper|iterate|last|lcm|length|lex|lexDigits|lexLitChar|lines|log|logBase|lookup|map|mapM|mapM_|max|maxBound|maximum|maybe|min|minBound|minimum|mod|negate|not|notElem|null|numerator|odd|or|ord|otherwise|pack|pi|pred|primExitWith|print|product|properFraction|putChar|putStr|putStrLn|quot|quotRem|range|rangeSize|read|readDec|readFile|readFloat|readHex|readIO|readInt|readList|readLitChar|readLn|readOct|readParen|readSigned|reads|readsPrec|realToFrac|recip|rem|repeat|replicate|return|reverse|round|scaleFloat|scanl|scanl1|scanr|scanr1|seq|sequence|sequence_|show|showChar|showInt|showList|showLitChar|showParen|showSigned|showString|shows|showsPrec|significand|signum|sin|sinh|snd|sort|span|splitAt|sqrt|subtract|succ|sum|tail|take|takeWhile|tan|tanh|threadToIOResult|toEnum|toInt|toInteger|toLower|toRational|toUpper|truncate|uncurry|undefined|unlines|until|unwords|unzip|unzip3|userError|words|writeFile|zip|zip3|zipWith|zipWith3)\\b';
  const definition_7 =
      '\\b(?:\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?|0o[0-7]+|0x[0-9a-f]+)\\b';
  const definition_27 = '`(?:[A-Z][\\w\']*\\.)*[_a-z][\\w\']*`';
  const definition_28 = '(\\s)\\.(?=\\s)';
  const definition_20 =
      '[-!#\$%*+=?&@|~:<>^\\\\\\/][-!#\$%*+=?&@|~.:<>^\\\\\\/]*|\\.[-!#\$%*+=?&@|~.:<>^\\\\\\/]+';
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
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
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
      definition_19,
      GrammarToken(pattern: RegExp(definition_20)),
    ],
    'hvariable': [definition_9],
    'constant': [definition_10],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'haskell',
    definition_0,
    aliases: ['hs'],
  );
}

final languageHaskell = _create();
