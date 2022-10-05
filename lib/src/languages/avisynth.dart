// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_20 = Grammar();
  final definition_22 = Grammar();
  final definition_40 = Grammar();
  const definition_32 =
      '(^|[^\\\\])\\[\\*(?:[^\\[*]|\\[(?!\\*)|\\*(?!\\])|\\[\\*(?:[^\\[*]|\\[(?!\\*)|\\*(?!\\]))*\\*\\])*\\*\\]';
  const definition_33 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_34 = '(^|[^\\\\\$])#.*';
  const definition_19 = '\\b(?:bool|clip|float|int|string|val)\\s+("?)\\w+\\1';
  const definition_35 = '^\\w+';
  const definition_21 = '([,(][\\s\\\\]*)\\w+\\s*=(?!=)';
  const definition_37 = '=\$';
  const definition_38 = '"""[\\s\\S]*?"""';
  const definition_39 = '"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"';
  const definition_42 =
      '\\b(?:DEFAULT_MT_MODE|(?:MACHINE|USER)_(?:CLASSIC|PLUS)_PLUGINS|(?:MAINSCRIPT|PROGRAM|SCRIPT)DIR)\\b';
  const definition_5 = '\\b(?:last)\\b';
  const definition_6 = '\\b(?:false|no|true|yes)\\b';
  const definition_7 =
      '\\b(?:catch|else|for|function|global|if|return|try|while|__END__)\\b';
  const definition_8 =
      '\\bMT_(?:MULTI_INSTANCE|NICE_FILTER|SERIALIZED|SPECIAL_MT)\\b';
  const definition_25 =
      '\\b(?:is(?:bool|clip|float|int|string)|defined|(?:(?:internal)?function|var)?exists?|apply|assert|default|eval|import|nop|select|undefined|opt_(?:allowfloataudio|avipadscanlines|dwchannelmask|enable_(?:b64a|planartopackedrgb|v210|y3_10_10|y3_10_16)|usewaveextensible|vdubplanarhack)|set(?:cachemode|maxcpu|memorymax|planarlegacyalignment|workingdir)|hex(?:value)?|value|abs|ceil|continued(?:denominator|numerator)?|exp|floor|fmod|frac|log(?:10)?|max|min|muldiv|pi|pow|rand|round|sign|spline|sqrt|a?sinh?|a?cosh?|a?tan[2h]?|(?:bit(?:and|not|x?or|[lr]?shift[aslu]?|sh[lr]|sa[lr]|[lr]rotatel?|ro[rl]|te?st|set(?:count)?|cl(?:ea)?r|ch(?:an)?ge?))|average(?:[bgr]|chroma[uv]|luma)|(?:[rgb]|chroma[uv]|luma|rgb|[yuv](?=difference(?:fromprevious|tonext)))difference(?:fromprevious|tonext)?|[yuvrgb]plane(?:median|min|max|minmaxdifference)|getprocessinfo|logmsg|script(?:dir(?:utf8)?|file(?:utf8)?|name(?:utf8)?)|setlogparams|chr|(?:fill|find|left|mid|replace|rev|right)str|format|[lu]case|ord|str(?:cmpi?|fromutf8|len|toutf8)|time|trim(?:all|left|right)|isversionorgreater|version(?:number|string)|buildpixeltype|colorspacenametopixeltype|addautoloaddir|on(?:cpu|cuda)|prefetch|setfiltermtmode|has(?:audio|video)|height|width|frame(?:count|rate)|framerate(?:denominator|numerator)|getparity|is(?:field|frame)based|bitspercomponent|componentsize|hasalpha|is(?:planar(?:rgba?)?|interleaved|rgb(?:24|32|48|64)?|y(?:8|u(?:va?|y2))?|yv(?:12|16|24|411)|420|422|444|packedrgb)|numcomponents|pixeltype|audio(?:bits|channels|duration|length(?:[fs]|hi|lo)?|rate)|isaudio(?:float|int)|avi(?:file)?source|directshowsource|image(?:reader|source|sourceanim)|opendmlsource|segmented(?:avisource|directshowsource)|wavsource|coloryuv|convertbacktoyuy2|convertto(?:RGB(?:24|32|48|64)|(?:planar)?RGBA?|Y8?|YV(?:12|16|24|411)|YUVA?(?:411|420|422|444)|YUY2)|fixluminance|gr[ae]yscale|invert|levels|limiter|mergea?rgb|merge(?:chroma|luma)|rgbadjust|show(?:alpha|blue|green|red)|swapuv|tweak|[uv]toy8?|ytouv|(?:colorkey|reset)mask|layer|mask(?:hs)?|merge|overlay|subtract|addborders|(?:bicubic|bilinear|blackman|gauss|lanczos|lanczos4|point|sinc|spline(?:16|36|64))resize|crop(?:bottom)?|flip(?:horizontal|vertical)|(?:horizontal|vertical)?reduceby2|letterbox|skewrows|turn(?:180|left|right)|blur|fixbrokenchromaupsampling|generalconvolution|sharpen|(?:spatial|temporal)soften|trim|(?:un)?alignedsplice|(?:assume|assumescaled|change|convert)FPS|(?:delete|duplicate)frame|dissolve|fade(?:in|io|out)[02]?|freezeframe|interleave|loop|reverse|select(?:even|odd|(?:range)?every)|assume[bt]ff|assume(?:field|frame)based|bob|complementparity|doubleweave|peculiarblend|pulldown|separate(?:columns|fields|rows)|swapfields|weave(?:columns|rows)?|amplify(?:db)?|assumesamplerate|audiodub(?:ex)?|audiotrim|convertaudioto(?:(?:8|16|24|32)bit|float)|converttomono|delayaudio|ensurevbrmp3sync|get(?:left|right)?channel|kill(?:audio|video)|mergechannels|mixaudio|monotostereo|normalize|resampleaudio|ssrc|supereq|timestretch|animate|applyrange|conditional(?:filter|reader|select)|frameevaluate|scriptclip|tcp(?:server|source)|writefile(?:end|if|start)?|imagewriter|blackness|blankclip|colorbars(?:hd)?|compare|dumpfiltergraph|echo|histogram|info|messageclip|preroll|setgraphanalysis|showfiveversions|show(?:framenumber|smpte|time)|stack(?:horizontal|vertical)|subtitle|tone|version)\\b';
  const definition_27 = '\\b(?:bool|clip|float|int|string|val)(?=\\s*\\()';
  const definition_29 = '\\b[a-z_]\\w*(?=\\s*\\()|(\\.)[a-z_]\\w*\\b';
  const definition_30 = '(^[ \\t]*)\\\\|\\\\(?=[ \\t]*\$)';
  const definition_13 =
      '\\B\\\$(?:[\\da-f]{6}|[\\da-f]{8})\\b|(?:(?:\\b|\\B-)\\d+(?:\\.\\d*)?\\b|\\B\\.\\d+\\b)';
  const definition_14 = '\\+\\+?|[!=<>]=?|&&|\\|\\||[?:*/%-]';
  const definition_15 = '[{}\\[\\]();,.]';
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    inside: definition_20,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    inside: definition_22,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_35),
    aliases: ['punctuation'],
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_38),
    greedy: true,
    global: true,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_39),
    greedy: true,
    inside: definition_40,
    global: true,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_42),
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    aliases: ['function'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    aliases: ['keyword'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_30, multiLine: true),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  definition_20.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_35))],
  });
  definition_22.addAllTokens({
    'argument-name': [definition_36],
    'punctuation': [GrammarToken(pattern: RegExp(definition_37))],
  });
  definition_40.addAllTokens({
    'constant': [definition_41],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_16,
      definition_17,
      definition_18,
    ],
    'argument': [definition_2],
    'argument-label': [definition_3],
    'string': [
      definition_23,
      definition_24,
    ],
    'variable': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_8))],
    'builtin-function': [definition_9],
    'type-cast': [definition_10],
    'function': [definition_11],
    'line-continuation': [definition_12],
    'number': [
      GrammarToken(pattern: RegExp(definition_13, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_14))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });

  return LanguageProto(
    'avisynth',
    definition_0,
    aliases: ['avs'],
  );
}

final languageAvisynth = _create();
