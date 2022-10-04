// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_27 = Grammar();
  final definition_29 = Grammar();
  final definition_32 = Grammar();
  final definition_53 = Grammar();
  const definition_23 = '(^|[^\\\\])(?:\\/\\*[\\s\\S]*?\\*\\/|\\/\\/.*)';
  const definition_24 =
      '@(?:content|debug|each|else(?: if)?|extend|for|forward|function|if|import|include|mixin|return|use|warn|while)\\b';
  const definition_47 = '( )(?:from|through)(?= )';
  const definition_26 =
      '@[\\w-](?:\\([^()]+\\)|[^()\\s]|\\s+(?!\\s))*?(?=\\s+[{;])';
  const definition_48 = '@[\\w-]+';
  const definition_4 = '(?:[-a-z]+-)?url(?=\\()';
  const definition_28 =
      '(?=\\S)[^@;{}()]?(?:[^@;{}()\\s]|\\s+(?!\\s)|#\\{\\\$[-\\w]+\\})+(?=\\s*\\{(?:\\}|\\s|[^}][^:{}]*[:{][^}]))';
  const definition_54 = '&';
  const definition_41 = '%[-\\w]+';
  const definition_8 = '\\\$[-\\w]+|#\\{\\\$[-\\w]+\\}';
  const definition_30 =
      '(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n])*\')';
  const definition_31 = '(?:[-\\w]|\\\$[-\\w]|#\\{\\\$[-\\w]+\\})+(?=\\s*:)';
  const definition_9 = '!important\\b';
  const definition_33 = '\\B#[\\da-f]{3,8}\\b';
  const definition_51 =
      '(^|[^\\w-])(?:AliceBlue|AntiqueWhite|Aqua|Aquamarine|Azure|Beige|Bisque|Black|BlanchedAlmond|Blue|BlueViolet|Brown|BurlyWood|CadetBlue|Chartreuse|Chocolate|Coral|CornflowerBlue|Cornsilk|Crimson|Cyan|DarkBlue|DarkCyan|DarkGoldenRod|DarkGr[ae]y|DarkGreen|DarkKhaki|DarkMagenta|DarkOliveGreen|DarkOrange|DarkOrchid|DarkRed|DarkSalmon|DarkSeaGreen|DarkSlateBlue|DarkSlateGr[ae]y|DarkTurquoise|DarkViolet|DeepPink|DeepSkyBlue|DimGr[ae]y|DodgerBlue|FireBrick|FloralWhite|ForestGreen|Fuchsia|Gainsboro|GhostWhite|Gold|GoldenRod|Gr[ae]y|Green|GreenYellow|HoneyDew|HotPink|IndianRed|Indigo|Ivory|Khaki|Lavender|LavenderBlush|LawnGreen|LemonChiffon|LightBlue|LightCoral|LightCyan|LightGoldenRodYellow|LightGr[ae]y|LightGreen|LightPink|LightSalmon|LightSeaGreen|LightSkyBlue|LightSlateGr[ae]y|LightSteelBlue|LightYellow|Lime|LimeGreen|Linen|Magenta|Maroon|MediumAquaMarine|MediumBlue|MediumOrchid|MediumPurple|MediumSeaGreen|MediumSlateBlue|MediumSpringGreen|MediumTurquoise|MediumVioletRed|MidnightBlue|MintCream|MistyRose|Moccasin|NavajoWhite|Navy|OldLace|Olive|OliveDrab|Orange|OrangeRed|Orchid|PaleGoldenRod|PaleGreen|PaleTurquoise|PaleVioletRed|PapayaWhip|PeachPuff|Peru|Pink|Plum|PowderBlue|Purple|RebeccaPurple|Red|RosyBrown|RoyalBlue|SaddleBrown|Salmon|SandyBrown|SeaGreen|SeaShell|Sienna|Silver|SkyBlue|SlateBlue|SlateGr[ae]y|Snow|SpringGreen|SteelBlue|Tan|Teal|Thistle|Tomato|Transparent|Turquoise|Violet|Wheat|White|WhiteSmoke|Yellow|YellowGreen)(?![\\w-])';
  const definition_52 =
      '\\b(?:hsl|rgb)\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*\\)\\B|\\b(?:hsl|rgb)a\\(\\s*\\d{1,3}\\s*,\\s*\\d{1,3}%?\\s*,\\s*\\d{1,3}%?\\s*,\\s*(?:0|0?\\.\\d+|1)\\s*\\)\\B';
  const definition_37 = '(\\b\\d+)(?:%|[a-z]+(?![\\w-]))';
  const definition_38 = '(^|[^\\w.-])-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)';
  const definition_58 = '[\\w-]+(?=\\()';
  const definition_59 = '[(),]';
  const definition_12 = '\\\\[\\da-f]{1,8}';
  const definition_39 = '\\b(?:as|hide|show|with)\\b';
  const definition_43 = '\\B!(?:default|optional)\\b';
  const definition_18 = '\\b(?:false|true)\\b';
  const definition_44 = '\\bnull\\b';
  const definition_45 = '(\\s)(?:[-+*\\/%]|[=!]=|<=?|>=?|and|not|or)(?=\\s)';
  const definition_46 = '(^|[^-a-z0-9])[-a-z0-9]+(?=\\()';
  const definition_22 = '[(){};:,]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_47),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_26),
    inside: definition_27,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_28),
    inside: definition_29,
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_54),
    aliases: ['important'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_30),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_31),
    inside: definition_32,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_33, caseSensitive: false),
    aliases: ['color'],
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_51, caseSensitive: false),
    lookbehind: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_52, caseSensitive: false),
    inside: definition_53,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
  );
  final definition_57 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_39, caseSensitive: false),
    aliases: ['keyword'],
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_41),
    aliases: ['selector'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_43, caseSensitive: false),
    aliases: ['keyword'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_44),
    aliases: ['keyword'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_46, caseSensitive: false),
    lookbehind: true,
  );
  definition_27.rest = 'scss';
  definition_27.addAllTokens({
    'rule': [GrammarToken(pattern: RegExp(definition_48))],
  });
  definition_29.addAllTokens({
    'parent': [definition_50],
    'placeholder': [GrammarToken(pattern: RegExp(definition_41))],
    'variable': [GrammarToken(pattern: RegExp(definition_8))],
  });
  definition_32.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_8))],
  });
  definition_53.addAllTokens({
    'unit': [definition_56],
    'number': [definition_57],
    'function': [GrammarToken(pattern: RegExp(definition_58))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_59))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_24, caseSensitive: false)),
      definition_25,
    ],
    'atrule': [definition_3],
    'url': [GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))],
    'selector': [definition_5],
    'string': [definition_6],
    'property': [definition_7],
    'variable': [GrammarToken(pattern: RegExp(definition_8))],
    'important': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'hexcode': [definition_10],
    'color': [
      definition_35,
      definition_36,
    ],
    'entity': [
      GrammarToken(pattern: RegExp(definition_12, caseSensitive: false))
    ],
    'unit': [definition_13],
    'number': [definition_14],
    'module-modifier': [definition_15],
    'placeholder': [definition_16],
    'statement': [definition_17],
    'boolean': [GrammarToken(pattern: RegExp(definition_18))],
    'null': [definition_19],
    'operator': [definition_20],
    'function': [definition_21],
    'punctuation': [GrammarToken(pattern: RegExp(definition_22))],
  });

  return LanguageProto(
    'scss',
    definition_0,
    requiredDependencies: ['css'],
  );
}

final languageScss = _create();
