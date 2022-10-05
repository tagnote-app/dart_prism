// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  final definition_29 = Grammar();
  final definition_27 = Grammar();
  final definition_22 = Grammar();
  final definition_59 = Grammar();
  final definition_14 = Grammar();
  final definition_16 = Grammar();
  final definition_18 = Grammar();
  final definition_48 = Grammar();
  final definition_20 = Grammar();
  const definition_11 = '(^[ \\t]*)@.+';
  const definition_28 = '^@[\\w-]+';
  const definition_24 = '(^|[^\\\\])(?:\\/\\*[\\s\\S]*?\\*\\/|\\/\\/.*)';
  const definition_51 = '\\burl\\((["\']?).*?\\1\\)';
  const definition_23 =
      '("|\')(?:(?!\\1)[^\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*\\1';
  const definition_25 = '\\{[^\\r\\n}:]+\\}';
  const definition_49 = '^\\{|\\}\$';
  const definition_21 = '[\\w-]+\\([^)]*\\).*';
  const definition_34 = '^[^(]+';
  const definition_37 = '\\B!(?:important|optional)\\b';
  const definition_52 =
      '(^|\\s+)(?:(?:else|for|if|return|unless)(?=\\s|\$)|@[\\w-]+)';
  const definition_39 = '#[\\da-f]{3,6}';
  const definition_53 =
      '\\b(?:AliceBlue|AntiqueWhite|Aqua|Aquamarine|Azure|Beige|Bisque|Black|BlanchedAlmond|Blue|BlueViolet|Brown|BurlyWood|CadetBlue|Chartreuse|Chocolate|Coral|CornflowerBlue|Cornsilk|Crimson|Cyan|DarkBlue|DarkCyan|DarkGoldenRod|DarkGr[ae]y|DarkGreen|DarkKhaki|DarkMagenta|DarkOliveGreen|DarkOrange|DarkOrchid|DarkRed|DarkSalmon|DarkSeaGreen|DarkSlateBlue|DarkSlateGr[ae]y|DarkTurquoise|DarkViolet|DeepPink|DeepSkyBlue|DimGr[ae]y|DodgerBlue|FireBrick|FloralWhite|ForestGreen|Fuchsia|Gainsboro|GhostWhite|Gold|GoldenRod|Gr[ae]y|Green|GreenYellow|HoneyDew|HotPink|IndianRed|Indigo|Ivory|Khaki|Lavender|LavenderBlush|LawnGreen|LemonChiffon|LightBlue|LightCoral|LightCyan|LightGoldenRodYellow|LightGr[ae]y|LightGreen|LightPink|LightSalmon|LightSeaGreen|LightSkyBlue|LightSlateGr[ae]y|LightSteelBlue|LightYellow|Lime|LimeGreen|Linen|Magenta|Maroon|MediumAquaMarine|MediumBlue|MediumOrchid|MediumPurple|MediumSeaGreen|MediumSlateBlue|MediumSpringGreen|MediumTurquoise|MediumVioletRed|MidnightBlue|MintCream|MistyRose|Moccasin|NavajoWhite|Navy|OldLace|Olive|OliveDrab|Orange|OrangeRed|Orchid|PaleGoldenRod|PaleGreen|PaleTurquoise|PaleVioletRed|PapayaWhip|PeachPuff|Peru|Pink|Plum|PowderBlue|Purple|Red|RosyBrown|RoyalBlue|SaddleBrown|Salmon|SandyBrown|SeaGreen|SeaShell|Sienna|Silver|SkyBlue|SlateBlue|SlateGr[ae]y|Snow|SpringGreen|SteelBlue|Tan|Teal|Thistle|Tomato|Transparent|Turquoise|Violet|Wheat|White|WhiteSmoke|Yellow|YellowGreen)\\b';
  const definition_58 =
      '\\b(?:hsl|rgb)\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*\\)\\B|\\b(?:hsl|rgb)a\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*,\\s*(?:0|0?\\.\\d+|1)\\s*\\)\\B';
  const definition_55 = '(\\b\\d+)(?:%|[a-z]+)';
  const definition_57 = '(^|[^\\w.-])-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)';
  const definition_60 = '[\\w-]+(?=\\()';
  const definition_61 = '[(),]';
  const definition_41 = '\\\\[\\da-f]{1,8}';
  const definition_43 = '\\b(?:false|true)\\b';
  const definition_56 =
      '~|[+!\\/%<>?=]=?|[-:]=|\\*[*=]?|\\.{2,3}|&&|\\|\\||\\B-\\B|\\b(?:and|in|is(?: a| defined| not|nt)?|not|or)\\b';
  const definition_46 = '[{}()\\[\\];:,]';
  const definition_13 =
      '(^[ \\t]*)[\\w\$-]+\\s*.?=[ \\t]*(?:\\{[^{}]*\\}|\\S.*|\$)';
  const definition_30 = '^\\S+';
  const definition_15 = '(^[ \\t]*)(?:else|for|if|return|unless)[ \\t].+';
  const definition_17 =
      '((?:^|\\{)([ \\t]*))(?:[\\w-]|\\{[^}\\r\\n]+\\})+(?:\\s*:\\s*|[ \\t]+)(?!\\s)[^{\\r\\n]*(?:;|[^{\\r\\n,]\$(?!(?:\\r?\\n|\\r)(?:\\{|\\2[ \\t])))';
  const definition_47 = '^[^\\s:]+';
  const definition_19 =
      '(^[ \\t]*)(?:(?=\\S)(?:[^{}\\r\\n:()]|::?[\\w-]+(?:\\([^)\\r\\n]*\\)|(?![\\w-]))|\\{[^}\\r\\n]+\\})+)(?:(?:\\r?\\n|\\r)(?:\\1(?:(?=\\S)(?:[^{}\\r\\n:()]|::?[\\w-]+(?:\\([^)\\r\\n]*\\)|(?![\\w-]))|\\{[^}\\r\\n]+\\})+)))*(?:,\$|\\{|(?=(?:\\r?\\n|\\r)(?:\\{|\\1[ \\t])))';
  const definition_33 = '[{},]';
  const definition_10 = '[{}()\\[\\];:.]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11, multiLine: true),
    lookbehind: true,
    inside: definition_12,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_51, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_25),
    aliases: ['variable'],
    inside: definition_27,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_49),
    aliases: ['punctuation'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_21),
    inside: definition_22,
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_58, caseSensitive: false),
    inside: definition_59,
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_55),
    lookbehind: true,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_57),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13, multiLine: true),
    lookbehind: true,
    inside: definition_14,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15, multiLine: true),
    lookbehind: true,
    inside: definition_16,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17, multiLine: true),
    lookbehind: true,
    inside: definition_18,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_47),
    inside: definition_48,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19, multiLine: true),
    lookbehind: true,
    inside: definition_20,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_27.rest = definition_29;
  definition_22.rest = definition_29;
  definition_12.rest = definition_29;
  definition_14.rest = definition_29;
  definition_16.rest = definition_29;
  definition_18.rest = definition_29;
  definition_27.addAllTokens({
    'delimiter': [definition_35],
  });
  definition_22.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_59.addAllTokens({
    'unit': [definition_42],
    'number': [definition_45],
    'function': [GrammarToken(pattern: RegExp(definition_60))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_61))],
  });
  definition_29.addAllTokens({
    'comment': [definition_32],
    'url': [definition_36],
    'string': [definition_7],
    'interpolation': [definition_9],
    'func': [definition_6],
    'important': [
      GrammarToken(pattern: RegExp(definition_37, caseSensitive: false))
    ],
    'keyword': [definition_38],
    'hexcode': [
      GrammarToken(pattern: RegExp(definition_39, caseSensitive: false))
    ],
    'color': [
      GrammarToken(pattern: RegExp(definition_53, caseSensitive: false)),
      definition_54,
    ],
    'entity': [
      GrammarToken(pattern: RegExp(definition_41, caseSensitive: false))
    ],
    'unit': [definition_42],
    'boolean': [GrammarToken(pattern: RegExp(definition_43))],
    'operator': [
      GrammarToken(pattern: RegExp(definition_56)),
    ],
    'number': [definition_45],
    'punctuation': [GrammarToken(pattern: RegExp(definition_46))],
  });
  definition_12.addAllTokens({
    'atrule': [GrammarToken(pattern: RegExp(definition_28))],
  });
  definition_14.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_16.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_48.addAllTokens({
    'interpolation': [definition_9],
  });
  definition_18.addAllTokens({
    'property': [definition_31],
  });
  definition_20.addAllTokens({
    'interpolation': [definition_9],
    'comment': [definition_32],
    'punctuation': [GrammarToken(pattern: RegExp(definition_33))],
  });
  definition_0.addAllTokens({
    'atrule-declaration': [definition_1],
    'variable-declaration': [definition_2],
    'statement': [definition_3],
    'property-declaration': [definition_4],
    'selector': [definition_5],
    'func': [definition_6],
    'string': [definition_7],
    'comment': [definition_8],
    'interpolation': [definition_9],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'stylus',
    definition_0,
  );
}

final languageStylus = _create();
