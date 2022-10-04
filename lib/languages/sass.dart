// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_19 = Grammar();
  final definition_21 = Grammar();
  final definition_25 = Grammar();
  final definition_27 = Grammar();
  final definition_48 = Grammar();
  const definition_17 = '^([ \\t]*)\\/[\\/*].*(?:(?:\\r?\\n|\\r)\\1[ \\t].+)*';
  const definition_18 = '^(?:[ \\t]*)[@+=].+';
  const definition_37 = '(?:@[\\w-]+|[+=])';
  const definition_20 =
      '\\burl\\((?:(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')|(?:[^\\\\\\r\\n()"\']|\\\\[\\s\\S])*)\\)';
  const definition_38 = '^url';
  const definition_39 = '^\\(|\\)\$';
  const definition_49 =
      '^(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')\$';
  const definition_22 =
      '(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')';
  const definition_23 =
      '(^|[^-\\w\\xA0-\\uFFFF])--(?!\\s)[-_a-z\\xA0-\\uFFFF](?:(?!\\s)[-\\w\\xA0-\\uFFFF])*';
  const definition_24 = '^[ \\t]*\\\$.+';
  const definition_41 = ':';
  const definition_42 = '\\\$[-\\w]+|#\\{\\\$[-\\w]+\\}';
  const definition_51 = '[+*\\/%]|[=!]=|<=?|>=?|\\b(?:and|not|or)\\b';
  const definition_59 = '(\\s)-(?=\\s)';
  const definition_26 = '^[ \\t]*(?:[^:\\s]+ *:.*|:[^:\\s].*)';
  const definition_53 = '[^:\\s]+(?=\\s*:)';
  const definition_60 = '(:)[^:\\s]+';
  const definition_45 = '!important\\b';
  const definition_28 = '(\\s)[+\\-*\\/](?=\\s)';
  const definition_29 = '\\B#[\\da-f]{3,8}\\b';
  const definition_46 =
      '(^|[^\\w-])(?:AliceBlue|AntiqueWhite|Aqua|Aquamarine|Azure|Beige|Bisque|Black|BlanchedAlmond|Blue|BlueViolet|Brown|BurlyWood|CadetBlue|Chartreuse|Chocolate|Coral|CornflowerBlue|Cornsilk|Crimson|Cyan|DarkBlue|DarkCyan|DarkGoldenRod|DarkGr[ae]y|DarkGreen|DarkKhaki|DarkMagenta|DarkOliveGreen|DarkOrange|DarkOrchid|DarkRed|DarkSalmon|DarkSeaGreen|DarkSlateBlue|DarkSlateGr[ae]y|DarkTurquoise|DarkViolet|DeepPink|DeepSkyBlue|DimGr[ae]y|DodgerBlue|FireBrick|FloralWhite|ForestGreen|Fuchsia|Gainsboro|GhostWhite|Gold|GoldenRod|Gr[ae]y|Green|GreenYellow|HoneyDew|HotPink|IndianRed|Indigo|Ivory|Khaki|Lavender|LavenderBlush|LawnGreen|LemonChiffon|LightBlue|LightCoral|LightCyan|LightGoldenRodYellow|LightGr[ae]y|LightGreen|LightPink|LightSalmon|LightSeaGreen|LightSkyBlue|LightSlateGr[ae]y|LightSteelBlue|LightYellow|Lime|LimeGreen|Linen|Magenta|Maroon|MediumAquaMarine|MediumBlue|MediumOrchid|MediumPurple|MediumSeaGreen|MediumSlateBlue|MediumSpringGreen|MediumTurquoise|MediumVioletRed|MidnightBlue|MintCream|MistyRose|Moccasin|NavajoWhite|Navy|OldLace|Olive|OliveDrab|Orange|OrangeRed|Orchid|PaleGoldenRod|PaleGreen|PaleTurquoise|PaleVioletRed|PapayaWhip|PeachPuff|Peru|Pink|Plum|PowderBlue|Purple|RebeccaPurple|Red|RosyBrown|RoyalBlue|SaddleBrown|Salmon|SandyBrown|SeaGreen|SeaShell|Sienna|Silver|SkyBlue|SlateBlue|SlateGr[ae]y|Snow|SpringGreen|SteelBlue|Tan|Teal|Thistle|Tomato|Transparent|Turquoise|Violet|Wheat|White|WhiteSmoke|Yellow|YellowGreen)(?![\\w-])';
  const definition_47 =
      '\\b(?:hsl|rgb)\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*\\)\\B|\\b(?:hsl|rgb)a\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*,\\s*(?:0|0?\\.\\d+|1)\\s*\\)\\B';
  const definition_33 = '(\\b\\d+)(?:%|[a-z]+(?![\\w-]))';
  const definition_34 = '(^|[^\\w.-])-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)';
  const definition_57 = '[\\w-]+(?=\\()';
  const definition_58 = '[(),]';
  const definition_11 = '\\\\[\\da-f]{1,8}';
  const definition_35 = '(^|[^-a-z0-9])[-a-z0-9]+(?=\\()';
  const definition_36 =
      '^([ \\t]*)\\S(?:,[^,\\r\\n]+|[^,\\r\\n]*)(?:,[^,\\r\\n]+)*(?:,(?:\\r?\\n|\\r)\\1[ \\t]+\\S(?:,[^,\\r\\n]+|[^,\\r\\n]*)(?:,[^,\\r\\n]+)*)*';
  const definition_16 = '[(){};:,]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_17, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_18, multiLine: true),
    greedy: true,
    inside: definition_19,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_20, caseSensitive: false),
    greedy: true,
    inside: definition_21,
    global: true,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_49),
    aliases: ['url'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_23, caseSensitive: false),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_24, multiLine: true),
    greedy: true,
    inside: definition_25,
    global: true,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_59),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_26, multiLine: true),
    greedy: true,
    inside: definition_27,
    global: true,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_60),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
    aliases: ['color'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_46, caseSensitive: false),
    lookbehind: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_47, caseSensitive: false),
    inside: definition_48,
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_35, caseSensitive: false),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_36, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_19.addAllTokens({
    'atrule': [GrammarToken(pattern: RegExp(definition_37))],
  });
  definition_21.addAllTokens({
    'function': [
      GrammarToken(pattern: RegExp(definition_38, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_39))],
    'string': [definition_40],
  });
  definition_25.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_41))],
    'variable': [GrammarToken(pattern: RegExp(definition_42))],
    'operator': [
      GrammarToken(pattern: RegExp(definition_51)),
      definition_52,
    ],
  });
  definition_27.addAllTokens({
    'property': [
      GrammarToken(pattern: RegExp(definition_53)),
      definition_54,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_41))],
    'variable': [GrammarToken(pattern: RegExp(definition_42))],
    'operator': [
      GrammarToken(pattern: RegExp(definition_51)),
      definition_52,
    ],
    'important': [
      GrammarToken(pattern: RegExp(definition_45, caseSensitive: false))
    ],
  });
  definition_48.addAllTokens({
    'unit': [definition_55],
    'number': [definition_56],
    'function': [GrammarToken(pattern: RegExp(definition_57))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_58))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'atrule-line': [definition_2],
    'url': [definition_3],
    'string': [definition_4],
    'variable': [definition_5],
    'variable-line': [definition_6],
    'property-line': [definition_7],
    'operator': [definition_8],
    'hexcode': [definition_9],
    'color': [
      definition_31,
      definition_32,
    ],
    'entity': [
      GrammarToken(pattern: RegExp(definition_11, caseSensitive: false))
    ],
    'unit': [definition_12],
    'number': [definition_13],
    'function': [definition_14],
    'selector': [definition_15],
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });

  return LanguageProto(
    'sass',
    definition_0,
    requiredDependencies: ['css'],
  );
}

final languageSass = _create();
