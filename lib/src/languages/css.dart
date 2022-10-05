// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_18 = Grammar();
  final definition_20 = Grammar();
  final definition_43 = Grammar();
  const definition_1 = '\\/\\*[\\s\\S]*?\\*\\/';
  const definition_17 =
      '@[\\w-](?:[^;{\\s"\']|\\s+(?!\\s)|(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\'))*?(?:;|(?=\\s*\\{))';
  const definition_34 = '^@[\\w-]+';
  const definition_44 =
      '(\\bselector\\s*\\(\\s*(?![\\s)]))(?:[^()\\s]|\\s+(?![\\s)])|\\((?:[^()]|\\([^()]*\\))*\\))+(?=\\s*\\))';
  const definition_46 = '(^|[^\\w-])(?:and|not|only|or)(?![\\w-])';
  const definition_19 =
      '\\burl\\((?:(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')|(?:[^\\\\\\r\\n()"\']|\\\\[\\s\\S])*)\\)';
  const definition_38 = '^url';
  const definition_39 = '^\\(|\\)\$';
  const definition_47 =
      '^(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')\$';
  const definition_21 =
      '(^|[{}\\s])[^{}\\s](?:[^{};"\'\\s]|\\s+(?![\\s{])|(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\'))*(?=\\s*\\{)';
  const definition_23 =
      '(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')';
  const definition_24 =
      '(^|[^-\\w\\xA0-\\uFFFF])--(?!\\s)[-_a-z\\xA0-\\uFFFF](?:(?!\\s)[-\\w\\xA0-\\uFFFF])*';
  const definition_25 =
      '(^|[^-\\w\\xA0-\\uFFFF])(?!\\s)[-_a-z\\xA0-\\uFFFF](?:(?!\\s)[-\\w\\xA0-\\uFFFF])*(?=\\s*:)';
  const definition_8 = '!important\\b';
  const definition_26 = '(\\s)[+\\-*\\/](?=\\s)';
  const definition_27 = '\\B#[\\da-f]{3,8}\\b';
  const definition_41 =
      '(^|[^\\w-])(?:AliceBlue|AntiqueWhite|Aqua|Aquamarine|Azure|Beige|Bisque|Black|BlanchedAlmond|Blue|BlueViolet|Brown|BurlyWood|CadetBlue|Chartreuse|Chocolate|Coral|CornflowerBlue|Cornsilk|Crimson|Cyan|DarkBlue|DarkCyan|DarkGoldenRod|DarkGr[ae]y|DarkGreen|DarkKhaki|DarkMagenta|DarkOliveGreen|DarkOrange|DarkOrchid|DarkRed|DarkSalmon|DarkSeaGreen|DarkSlateBlue|DarkSlateGr[ae]y|DarkTurquoise|DarkViolet|DeepPink|DeepSkyBlue|DimGr[ae]y|DodgerBlue|FireBrick|FloralWhite|ForestGreen|Fuchsia|Gainsboro|GhostWhite|Gold|GoldenRod|Gr[ae]y|Green|GreenYellow|HoneyDew|HotPink|IndianRed|Indigo|Ivory|Khaki|Lavender|LavenderBlush|LawnGreen|LemonChiffon|LightBlue|LightCoral|LightCyan|LightGoldenRodYellow|LightGr[ae]y|LightGreen|LightPink|LightSalmon|LightSeaGreen|LightSkyBlue|LightSlateGr[ae]y|LightSteelBlue|LightYellow|Lime|LimeGreen|Linen|Magenta|Maroon|MediumAquaMarine|MediumBlue|MediumOrchid|MediumPurple|MediumSeaGreen|MediumSlateBlue|MediumSpringGreen|MediumTurquoise|MediumVioletRed|MidnightBlue|MintCream|MistyRose|Moccasin|NavajoWhite|Navy|OldLace|Olive|OliveDrab|Orange|OrangeRed|Orchid|PaleGoldenRod|PaleGreen|PaleTurquoise|PaleVioletRed|PapayaWhip|PeachPuff|Peru|Pink|Plum|PowderBlue|Purple|RebeccaPurple|Red|RosyBrown|RoyalBlue|SaddleBrown|Salmon|SandyBrown|SeaGreen|SeaShell|Sienna|Silver|SkyBlue|SlateBlue|SlateGr[ae]y|Snow|SpringGreen|SteelBlue|Tan|Teal|Thistle|Tomato|Transparent|Turquoise|Violet|Wheat|White|WhiteSmoke|Yellow|YellowGreen)(?![\\w-])';
  const definition_42 =
      '\\b(?:hsl|rgb)\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*\\)\\B|\\b(?:hsl|rgb)a\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*,\\s*(?:0|0?\\.\\d+|1)\\s*\\)\\B';
  const definition_31 = '(\\b\\d+)(?:%|[a-z]+(?![\\w-]))';
  const definition_32 = '(^|[^\\w.-])-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)';
  const definition_49 = '[\\w-]+(?=\\()';
  const definition_50 = '[(),]';
  const definition_12 = '\\\\[\\da-f]{1,8}';
  const definition_33 = '(^|[^-a-z0-9])[-a-z0-9]+(?=\\()';
  const definition_16 = '[(){};:,]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_17),
    inside: definition_18,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_44),
    lookbehind: true,
    aliases: ['selector'],
    inside: 'css-selector',
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_46),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_47),
    aliases: ['url'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    inside: 'css-selector',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    aliases: ['color'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_41, caseSensitive: false),
    lookbehind: true,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_42, caseSensitive: false),
    inside: definition_43,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_33, caseSensitive: false),
    lookbehind: true,
  );
  definition_18.rest = 'css';
  definition_18.addAllTokens({
    'rule': [GrammarToken(pattern: RegExp(definition_34))],
    'selector-function-argument': [definition_35],
    'keyword': [definition_36],
  });
  definition_20.addAllTokens({
    'function': [
      GrammarToken(pattern: RegExp(definition_38, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_39))],
    'string': [definition_40],
  });
  definition_43.addAllTokens({
    'unit': [definition_13],
    'number': [definition_14],
    'function': [GrammarToken(pattern: RegExp(definition_49))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_50))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'atrule': [definition_2],
    'url': [definition_3],
    'selector': [definition_4],
    'string': [definition_5],
    'variable': [definition_6],
    'property': [definition_7],
    'important': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'operator': [definition_9],
    'hexcode': [definition_10],
    'color': [
      definition_29,
      definition_30,
    ],
    'entity': [
      GrammarToken(pattern: RegExp(definition_12, caseSensitive: false))
    ],
    'unit': [definition_13],
    'number': [definition_14],
    'function': [definition_15],
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });

  return LanguageProto(
    'css',
    definition_0,
    optionalDependencies: ['css-extras'],
  );
}

final languageCss = _create();
