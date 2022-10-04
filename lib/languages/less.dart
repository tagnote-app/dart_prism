// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_21 = Grammar();
  final definition_23 = Grammar();
  final definition_25 = Grammar();
  final definition_45 = Grammar();
  final definition_48 = Grammar();
  const definition_18 = '\\/\\*[\\s\\S]*?\\*\\/';
  const definition_38 = '(^|[^\\\\])\\/\\/.*';
  const definition_20 =
      '@[\\w-](?:\\((?:[^(){}]|\\([^(){}]*\\))*\\)|[^(){};\\s]|\\s+(?!\\s))*?(?=\\s*\\{)';
  const definition_39 = '[:()]';
  const definition_22 =
      '\\burl\\((?:(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')|(?:[^\\\\\\r\\n()"\']|\\\\[\\s\\S])*)\\)';
  const definition_40 = '^url';
  const definition_41 = '^\\(|\\)\$';
  const definition_49 =
      '^(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')\$';
  const definition_24 =
      '(?:@\\{[\\w-]+\\}|[^{};\\s@])(?:@\\{[\\w-]+\\}|\\((?:[^(){}]|\\([^(){}]*\\))*\\)|[^(){};@\\s]|\\s+(?!\\s))*?(?=\\s*\\{)';
  const definition_43 = '@+[\\w-]+';
  const definition_26 =
      '(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')';
  const definition_44 = '@[\\w-]+\\s*:';
  const definition_51 = ':';
  const definition_28 = '@@?[\\w-]+';
  const definition_29 = '([{;]\\s*)[.#](?!\\d)[\\w-].*?(?=[(;])';
  const definition_8 = '(?:@\\{[\\w-]+\\}|[\\w-])+(?:\\+_?)?(?=\\s*:)';
  const definition_9 = '!important\\b';
  const definition_10 = '[+\\-*\\/]';
  const definition_31 = '\\B#[\\da-f]{3,8}\\b';
  const definition_46 =
      '(^|[^\\w-])(?:AliceBlue|AntiqueWhite|Aqua|Aquamarine|Azure|Beige|Bisque|Black|BlanchedAlmond|Blue|BlueViolet|Brown|BurlyWood|CadetBlue|Chartreuse|Chocolate|Coral|CornflowerBlue|Cornsilk|Crimson|Cyan|DarkBlue|DarkCyan|DarkGoldenRod|DarkGr[ae]y|DarkGreen|DarkKhaki|DarkMagenta|DarkOliveGreen|DarkOrange|DarkOrchid|DarkRed|DarkSalmon|DarkSeaGreen|DarkSlateBlue|DarkSlateGr[ae]y|DarkTurquoise|DarkViolet|DeepPink|DeepSkyBlue|DimGr[ae]y|DodgerBlue|FireBrick|FloralWhite|ForestGreen|Fuchsia|Gainsboro|GhostWhite|Gold|GoldenRod|Gr[ae]y|Green|GreenYellow|HoneyDew|HotPink|IndianRed|Indigo|Ivory|Khaki|Lavender|LavenderBlush|LawnGreen|LemonChiffon|LightBlue|LightCoral|LightCyan|LightGoldenRodYellow|LightGr[ae]y|LightGreen|LightPink|LightSalmon|LightSeaGreen|LightSkyBlue|LightSlateGr[ae]y|LightSteelBlue|LightYellow|Lime|LimeGreen|Linen|Magenta|Maroon|MediumAquaMarine|MediumBlue|MediumOrchid|MediumPurple|MediumSeaGreen|MediumSlateBlue|MediumSpringGreen|MediumTurquoise|MediumVioletRed|MidnightBlue|MintCream|MistyRose|Moccasin|NavajoWhite|Navy|OldLace|Olive|OliveDrab|Orange|OrangeRed|Orchid|PaleGoldenRod|PaleGreen|PaleTurquoise|PaleVioletRed|PapayaWhip|PeachPuff|Peru|Pink|Plum|PowderBlue|Purple|RebeccaPurple|Red|RosyBrown|RoyalBlue|SaddleBrown|Salmon|SandyBrown|SeaGreen|SeaShell|Sienna|Silver|SkyBlue|SlateBlue|SlateGr[ae]y|Snow|SpringGreen|SteelBlue|Tan|Teal|Thistle|Tomato|Transparent|Turquoise|Violet|Wheat|White|WhiteSmoke|Yellow|YellowGreen)(?![\\w-])';
  const definition_47 =
      '\\b(?:hsl|rgb)\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*\\)\\B|\\b(?:hsl|rgb)a\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*,\\s*(?:0|0?\\.\\d+|1)\\s*\\)\\B';
  const definition_35 = '(\\b\\d+)(?:%|[a-z]+(?![\\w-]))';
  const definition_36 = '(^|[^\\w.-])-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)';
  const definition_54 = '[\\w-]+(?=\\()';
  const definition_55 = '[(),]';
  const definition_13 = '\\\\[\\da-f]{1,8}';
  const definition_37 = '(^|[^-a-z0-9])[-a-z0-9]+(?=\\()';
  const definition_17 = '[(){};:,]';
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_20),
    inside: definition_21,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    greedy: true,
    inside: definition_23,
    global: true,
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_49),
    aliases: ['url'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_24),
    inside: definition_25,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    global: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_44),
    inside: definition_45,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_31, caseSensitive: false),
    aliases: ['color'],
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_46, caseSensitive: false),
    lookbehind: true,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_47, caseSensitive: false),
    inside: definition_48,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_37, caseSensitive: false),
    lookbehind: true,
  );
  definition_21.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_39))],
  });
  definition_23.addAllTokens({
    'function': [
      GrammarToken(pattern: RegExp(definition_40, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_41))],
    'string': [definition_42],
  });
  definition_25.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_43))],
  });
  definition_45.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_51))],
  });
  definition_48.addAllTokens({
    'unit': [definition_52],
    'number': [definition_53],
    'function': [GrammarToken(pattern: RegExp(definition_54))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_55))],
  });
  definition_0.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_18)),
      definition_19,
    ],
    'atrule': [definition_2],
    'url': [definition_3],
    'selector': [definition_4],
    'string': [definition_5],
    'variable': [
      definition_27,
      GrammarToken(pattern: RegExp(definition_28)),
    ],
    'mixin-usage': [definition_7],
    'property': [GrammarToken(pattern: RegExp(definition_8))],
    'important': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'hexcode': [definition_11],
    'color': [
      definition_33,
      definition_34,
    ],
    'entity': [
      GrammarToken(pattern: RegExp(definition_13, caseSensitive: false))
    ],
    'unit': [definition_14],
    'number': [definition_15],
    'function': [definition_16],
    'punctuation': [GrammarToken(pattern: RegExp(definition_17))],
  });

  return LanguageProto(
    'less',
    definition_0,
    requiredDependencies: ['css'],
  );
}

final languageLess = _create();
