// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_15 = '%.*';
  const definition_16 = '"[^\\r\\n"]*"';
  const definition_3 = '\\d*\\.?\\d+';
  const definition_4 = '\\b(?:false|true)\\b';
  const definition_17 = '[,;()]';
  const definition_39 = '(^|[^{}])(?:\\{|\\})(?![{}])';
  const definition_40 = '(^|[^[])\\[(?!\\[)';
  const definition_41 = '(^|[^\\]])\\](?!\\])';
  const definition_42 = '(^|[^!?])\\?\\?\\?(?![!?])';
  const definition_43 = '(^|[^/*\\\\])(?:\\\\|\\\\\\\\)(?![/*\\\\])';
  const definition_23 =
      '\\b(?:_|blankpicture|bp|cc|cm|dd|ditto|down|eps|epsilon|fullcircle|halfcircle|identity|in|infinity|left|mm|nullpen|nullpicture|origin|pc|penrazor|penspeck|pensquare|penstroke|proof|pt|quartercircle|relax|right|smoke|unitpixel|unitsquare|up)\\b';
  const definition_24 =
      '\\b(?:autorounding|blacker|boundarychar|charcode|chardp|chardx|chardy|charext|charht|charic|charwd|currentwindow|day|designsize|displaying|fillin|fontmaking|granularity|hppp|join_radius|month|o_correction|pausing|pen_(?:bot|lft|rt|top)|pixels_per_inch|proofing|showstopping|smoothing|time|tolerance|tracingcapsules|tracingchoices|tracingcommands|tracingedges|tracingequations|tracingmacros|tracingonline|tracingoutput|tracingpens|tracingrestores|tracingspecs|tracingstats|tracingtitles|turningcheck|vppp|warningcheck|xoffset|year|yoffset)\\b';
  const definition_26 =
      '\\b(?:addto|batchmode|charlist|cull|display|errhelp|errmessage|errorstopmode|everyjob|extensible|fontdimen|headerbyte|inner|interim|let|ligtable|message|newinternal|nonstopmode|numspecial|openwindow|outer|randomseed|save|scrollmode|shipout|show|showdependencies|showstats|showtoken|showvariable|special)\\b';
  const definition_44 =
      '(^|[^>=<:|])(?:<|<=|=|=:|\\|=:|\\|=:>|=:\\|>|=:\\||\\|=:\\||\\|=:\\|>|\\|=:\\|>>|>|>=|:|:=|<>|::|\\|\\|:)(?![>=<:|])';
  const definition_45 = '(^|[^+-])(?:\\+|\\+\\+|-{1,3}|\\+-\\+)(?![+-])';
  const definition_46 = '(^|[^/*\\\\])(?:\\*|\\*\\*|\\/)(?![/*\\\\])';
  const definition_47 = '(^|[^.])(?:\\.{2,3})(?!\\.)';
  const definition_48 = '(^|[^@#&\$])&(?![@#&\$])';
  const definition_33 = '\\b(?:and|not|or)\\b';
  const definition_34 =
      '\\b(?:abs|beginchar|bot|byte|capsule_def|ceiling|change_width|clear_pen_memory|clearit|clearpen|clearxy|counterclockwise|cullit|cutdraw|cutoff|decr|define_blacker_pixels|define_corrected_pixels|define_good_x_pixels|define_good_y_pixels|define_horizontal_corrected_pixels|define_pixels|define_whole_blacker_pixels|define_whole_pixels|define_whole_vertical_blacker_pixels|define_whole_vertical_pixels|dir|direction|directionpoint|div|dotprod|downto|draw|drawdot|endchar|erase|fill|filldraw|fix_units|flex|font_coding_scheme|font_extra_space|font_identifier|font_normal_shrink|font_normal_space|font_normal_stretch|font_quad|font_size|font_slant|font_x_height|gfcorners|gobble|gobbled|good\\.(?:bot|lft|rt|top|x|y)|grayfont|hide|hround|imagerules|incr|interact|interpath|intersectionpoint|inverse|italcorr|killtext|labelfont|labels|lft|loggingall|lowres_fix|makegrid|makelabel(?:\\.(?:bot|lft|rt|top)(?:\\.nodot)?)?|max|min|mod|mode_def|mode_setup|nodisplays|notransforms|numtok|openit|penlabels|penpos|pickup|proofoffset|proofrule|proofrulethickness|range|reflectedabout|rotatedabout|rotatedaround|round|rt|savepen|screenchars|screenrule|screenstrokes|shipit|showit|slantfont|softjoin|solve|stop|superellipse|tensepath|thru|titlefont|top|tracingall|tracingnone|undraw|undrawdot|unfill|unfilldraw|upto|vround)\\b';
  const definition_11 =
      '\\b(?:ASCII|angle|char|cosd|decimal|directiontime|floor|hex|intersectiontimes|jobname|known|length|makepath|makepen|mexp|mlog|normaldeviate|oct|odd|pencircle|penoffset|point|postcontrol|precontrol|reverse|rotated|sind|sqrt|str|subpath|substring|totalweight|turningnumber|uniformdeviate|unknown|xpart|xxpart|xypart|ypart|yxpart|yypart)\\b';
  const definition_12 =
      '\\b(?:also|at|atleast|begingroup|charexists|contour|controls|curl|cycle|def|delimiters|doublepath|dropping|dump|else|elseif|end|enddef|endfor|endgroup|endinput|exitif|exitunless|expandafter|fi|for|forever|forsuffixes|from|if|input|inwindow|keeping|kern|of|primarydef|quote|readstring|scaled|scantokens|secondarydef|shifted|skipto|slanted|step|tension|tertiarydef|to|transformed|until|vardef|withpen|withweight|xscaled|yscaled|zscaled)\\b';
  const definition_36 =
      '\\b(?:boolean|expr|numeric|pair|path|pen|picture|primary|secondary|string|suffix|tertiary|text|transform)\\b';
  const definition_38 =
      '(^|[^@#&\$])(?:@#|#@|#|@)(?![@#&\$])|\\b(?:aspect_ratio|currentpen|currentpicture|currenttransform|d|extra_beginchar|extra_endchar|extra_setup|h|localfont|mag|mode|screen_cols|screen_rows|w|whatever|x|y|z)\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_43),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['keyword'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['builtin'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_44),
    lookbehind: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_46),
    lookbehind: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_47),
    lookbehind: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_48),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_34),
    aliases: ['function'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_36),
    aliases: ['property'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'number': [GrammarToken(pattern: RegExp(definition_3))],
    'boolean': [GrammarToken(pattern: RegExp(definition_4))],
    'punctuation': [
      GrammarToken(pattern: RegExp(definition_17)),
      definition_18,
      definition_19,
      definition_20,
    ],
    'constant': [
      definition_21,
      definition_22,
      GrammarToken(pattern: RegExp(definition_23)),
    ],
    'quantity': [definition_7],
    'command': [definition_8],
    'operator': [
      definition_28,
      definition_29,
      definition_30,
      definition_31,
      definition_32,
      GrammarToken(pattern: RegExp(definition_33)),
    ],
    'macro': [definition_10],
    'builtin': [GrammarToken(pattern: RegExp(definition_11))],
    'keyword': [GrammarToken(pattern: RegExp(definition_12))],
    'type': [definition_13],
    'variable': [definition_14],
  });

  return LanguageProto(
    'metafont',
    definition_0,
  );
}

final languageMetafont = _create();
