// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_30 = Grammar();
  final definition_32 = Grammar();
  final definition_34 = Grammar();
  final definition_36 = Grammar();
  final definition_38 = Grammar();
  final definition_40 = Grammar();
  const definition_23 = ';.*';
  const definition_24 = '`.`';
  const definition_26 = '\\b\\d+(?:\\.\\d+(?:\\.\\d+(?:-[\\w+-]+)?)?)?\\b';
  const definition_27 = '"(?:[^"\\\\\\r\\n]|\\\\.)*"';
  const definition_28 = '\\{\\/.*?\\/\\}';
  const definition_29 = '\\{!(?:html)\$[\\s\\S]*\\}';
  const definition_63 = '(^\\{!\\w+\\b)[\\s\\S]+(?=\\}\$)';
  const definition_57 = '[\\s\\S]+';
  const definition_31 = '\\{!(?:css)\$[\\s\\S]*\\}';
  const definition_33 = '\\{!(?:js)\$[\\s\\S]*\\}';
  const definition_35 = '\\{!(?:md)\$[\\s\\S]*\\}';
  const definition_37 = '\\{!(?:sql)\$[\\s\\S]*\\}';
  const definition_39 = '\\{!(?:sh)\$[\\s\\S]*\\}';
  const definition_41 =
      '».*|\\{:[\\s\\S]*?:\\}|\\{[\\s\\S]*?\\}|^-{6}\$[\\s\\S]*';
  const definition_43 = '\\w+\\b\\??:';
  const definition_45 = '\'(?:\\w+\\b\\??:?)';
  const definition_47 = ':(?:\\w+\\b\\??:?)';
  const definition_16 = '#\\w+';
  const definition_49 =
      '\\b(?:all|and|any|ascii|attr|attribute|attributeLabel|binary|block|char|contains|database|date|dictionary|empty|equal|even|every|exists|false|floating|function|greater|greaterOrEqual|if|in|inline|integer|is|key|label|leap|less|lessOrEqual|literal|logical|lower|nand|negative|nor|not|notEqual|null|numeric|odd|or|path|pathLabel|positive|prefix|prime|regex|same|set|some|sorted|standalone|string|subset|suffix|superset|symbol|symbolLiteral|true|try|type|unless|upper|when|whitespace|word|xnor|xor|zero)\\?';
  const definition_51 =
      '\\b(?:abs|acos|acosh|acsec|acsech|actan|actanh|add|after|alert|alias|and|angle|append|arg|args|arity|array|as|asec|asech|asin|asinh|atan|atan2|atanh|attr|attrs|average|before|benchmark|blend|break|call|capitalize|case|ceil|chop|clear|clip|close|color|combine|conj|continue|copy|cos|cosh|crc|csec|csech|ctan|ctanh|cursor|darken|dec|decode|define|delete|desaturate|deviation|dialog|dictionary|difference|digest|digits|div|do|download|drop|dup|e|else|empty|encode|ensure|env|escape|execute|exit|exp|extend|extract|factors|fdiv|filter|first|flatten|floor|fold|from|function|gamma|gcd|get|goto|hash|hypot|if|inc|indent|index|infinity|info|input|insert|inspect|intersection|invert|jaro|join|keys|kurtosis|last|let|levenshtein|lighten|list|ln|log|loop|lower|mail|map|match|max|median|min|mod|module|mul|nand|neg|new|nor|normalize|not|now|null|open|or|outdent|pad|palette|panic|path|pause|permissions|permutate|pi|pop|popup|pow|powerset|powmod|prefix|print|prints|process|product|query|random|range|read|relative|remove|rename|render|repeat|replace|request|return|reverse|round|sample|saturate|script|sec|sech|select|serve|set|shl|shr|shuffle|sin|sinh|size|skewness|slice|sort|spin|split|sqrt|squeeze|stack|strip|sub|suffix|sum|switch|symbols|symlink|sys|take|tan|tanh|terminal|terminate|to|truncate|try|type|unclip|union|unique|unless|until|unzip|upper|values|var|variance|volume|webview|while|with|wordwrap|write|xnor|xor|zip)\\b';
  const definition_52 = '->|=>|\\||::';
  const definition_20 = '[()[\\],]';
  const definition_54 =
      '<:|-:|ø|@|#|\\+|\\||\\*|\\\$|---|-|%|\\/|\\.\\.|\\^|~|=|<|>|\\\\';
  const definition_55 = '\\b(?:false|maybe|true)\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['char'],
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_26),
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_27),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_28),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_29, multiLine: true),
    greedy: true,
    inside: definition_30,
    global: true,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    aliases: ['language-html'],
    inside: 'html',
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_31, multiLine: true),
    greedy: true,
    inside: definition_32,
    global: true,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    aliases: ['language-css'],
    inside: 'css',
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_33, multiLine: true),
    greedy: true,
    inside: definition_34,
    global: true,
  );
  final definition_59 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    aliases: ['language-js'],
    inside: 'js',
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_35, multiLine: true),
    greedy: true,
    inside: definition_36,
    global: true,
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    aliases: ['language-md'],
    inside: 'md',
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_37, multiLine: true),
    greedy: true,
    inside: definition_38,
    global: true,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    aliases: ['language-sql'],
    inside: 'sql',
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_39, multiLine: true),
    greedy: true,
    inside: definition_40,
    global: true,
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    aliases: ['language-bash'],
    inside: 'bash',
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_41, multiLine: true),
    aliases: ['string'],
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_43),
    aliases: ['property'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_45),
    aliases: ['constant'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_47),
    aliases: ['class-name'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_49),
    aliases: ['keyword'],
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_51),
    aliases: ['keyword'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_52),
    aliases: ['operator'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_54),
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_55),
  );
  definition_30.addAllTokens({
    'embedded': [definition_56],
    'string': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_32.addAllTokens({
    'embedded': [definition_58],
    'string': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_34.addAllTokens({
    'embedded': [definition_59],
    'string': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_36.addAllTokens({
    'embedded': [definition_60],
    'string': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_38.addAllTokens({
    'embedded': [definition_61],
    'string': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_40.addAllTokens({
    'embedded': [definition_62],
    'string': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'character': [definition_2],
    'number': [definition_3],
    'string': [definition_4],
    'regex': [definition_5],
    'html-string': [definition_6],
    'css-string': [definition_7],
    'js-string': [definition_8],
    'md-string': [definition_9],
    'sql-string': [definition_10],
    'sh-string': [definition_11],
    'multistring': [definition_12],
    'label': [definition_13],
    'literal': [definition_14],
    'type': [definition_15],
    'color': [GrammarToken(pattern: RegExp(definition_16))],
    'predicate': [definition_17],
    'builtin-function': [definition_18],
    'sugar': [definition_19],
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
    'symbol': [definition_21],
    'boolean': [definition_22],
  });

  return LanguageProto(
    'arturo',
    definition_0,
    aliases: ['art'],
  );
}

final languageArturo = _create();
