// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  const definition_7 = '(\\s)[+\\-*\\/](?=\\s)';
  const definition_8 = '\\B#[\\da-f]{3,8}\\b';
  const definition_14 =
      '(^|[^\\w-])(?:AliceBlue|AntiqueWhite|Aqua|Aquamarine|Azure|Beige|Bisque|Black|BlanchedAlmond|Blue|BlueViolet|Brown|BurlyWood|CadetBlue|Chartreuse|Chocolate|Coral|CornflowerBlue|Cornsilk|Crimson|Cyan|DarkBlue|DarkCyan|DarkGoldenRod|DarkGr[ae]y|DarkGreen|DarkKhaki|DarkMagenta|DarkOliveGreen|DarkOrange|DarkOrchid|DarkRed|DarkSalmon|DarkSeaGreen|DarkSlateBlue|DarkSlateGr[ae]y|DarkTurquoise|DarkViolet|DeepPink|DeepSkyBlue|DimGr[ae]y|DodgerBlue|FireBrick|FloralWhite|ForestGreen|Fuchsia|Gainsboro|GhostWhite|Gold|GoldenRod|Gr[ae]y|Green|GreenYellow|HoneyDew|HotPink|IndianRed|Indigo|Ivory|Khaki|Lavender|LavenderBlush|LawnGreen|LemonChiffon|LightBlue|LightCoral|LightCyan|LightGoldenRodYellow|LightGr[ae]y|LightGreen|LightPink|LightSalmon|LightSeaGreen|LightSkyBlue|LightSlateGr[ae]y|LightSteelBlue|LightYellow|Lime|LimeGreen|Linen|Magenta|Maroon|MediumAquaMarine|MediumBlue|MediumOrchid|MediumPurple|MediumSeaGreen|MediumSlateBlue|MediumSpringGreen|MediumTurquoise|MediumVioletRed|MidnightBlue|MintCream|MistyRose|Moccasin|NavajoWhite|Navy|OldLace|Olive|OliveDrab|Orange|OrangeRed|Orchid|PaleGoldenRod|PaleGreen|PaleTurquoise|PaleVioletRed|PapayaWhip|PeachPuff|Peru|Pink|Plum|PowderBlue|Purple|RebeccaPurple|Red|RosyBrown|RoyalBlue|SaddleBrown|Salmon|SandyBrown|SeaGreen|SeaShell|Sienna|Silver|SkyBlue|SlateBlue|SlateGr[ae]y|Snow|SpringGreen|SteelBlue|Tan|Teal|Thistle|Tomato|Transparent|Turquoise|Violet|Wheat|White|WhiteSmoke|Yellow|YellowGreen)(?![\\w-])';
  const definition_15 =
      '\\b(?:hsl|rgb)\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*\\)\\B|\\b(?:hsl|rgb)a\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*,\\s*(?:0|0?\\.\\d+|1)\\s*\\)\\B';
  const definition_12 = '(\\b\\d+)(?:%|[a-z]+(?![\\w-]))';
  const definition_13 = '(^|[^\\w.-])-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)';
  const definition_17 = '[\\w-]+(?=\\()';
  const definition_18 = '[(),]';
  const definition_4 = '\\\\[\\da-f]{1,8}';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_7),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8, caseSensitive: false),
    aliases: ['color'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    inside: definition_16,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
  );
  definition_16.addAllTokens({
    'unit': [definition_5],
    'number': [definition_6],
    'function': [GrammarToken(pattern: RegExp(definition_17))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_0.addAllTokens({
    'operator': [definition_1],
    'hexcode': [definition_2],
    'color': [
      definition_10,
      definition_11,
    ],
    'entity': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'unit': [definition_5],
    'number': [definition_6],
  });

  return LanguageProto(
    'css-extras',
    definition_0,
    requiredDependencies: ['css-selector'],
  );
}

final languageCssExtras = _create();
