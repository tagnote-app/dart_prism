// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_18 = Grammar();
  const definition_16 = '\\/\\/.*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_17 = '(@)builtin\\(.*?\\)';
  const definition_55 = '^builtin';
  const definition_42 = '[(),]';
  const definition_56 =
      '\\b(?:frag_depth|front_facing|global_invocation_id|instance_index|local_invocation_id|local_invocation_index|num_workgroups|position|sample_index|sample_mask|vertex_index|workgroup_id)\\b';
  const definition_19 =
      '(@)(?:align|binding|compute|const|fragment|group|id|interpolate|invariant|location|size|vertex|workgroup_size)';
  const definition_21 = '\\b(fn\\s+)[_a-zA-Z]\\w*(?=[(<])';
  const definition_5 =
      '\\b(?:bitcast|break|case|const|continue|continuing|default|discard|else|enable|fallthrough|fn|for|function|if|let|loop|private|return|storage|struct|switch|type|uniform|var|while|workgroup)\\b';
  const definition_6 =
      '\\b(?:abs|acos|acosh|all|any|array|asin|asinh|atan|atan2|atanh|atomic|atomicAdd|atomicAnd|atomicCompareExchangeWeak|atomicExchange|atomicLoad|atomicMax|atomicMin|atomicOr|atomicStore|atomicSub|atomicXor|bool|ceil|clamp|cos|cosh|countLeadingZeros|countOneBits|countTrailingZeros|cross|degrees|determinant|distance|dot|dpdx|dpdxCoarse|dpdxFine|dpdy|dpdyCoarse|dpdyFine|exp|exp2|extractBits|f32|f64|faceForward|firstLeadingBit|floor|fma|fract|frexp|fwidth|fwidthCoarse|fwidthFine|i32|i64|insertBits|inverseSqrt|ldexp|length|log|log2|mat[2-4]x[2-4]|max|min|mix|modf|normalize|override|pack2x16float|pack2x16snorm|pack2x16unorm|pack4x8snorm|pack4x8unorm|pow|ptr|quantizeToF16|radians|reflect|refract|reverseBits|round|sampler|sampler_comparison|select|shiftLeft|shiftRight|sign|sin|sinh|smoothstep|sqrt|staticAssert|step|storageBarrier|tan|tanh|textureDimensions|textureGather|textureGatherCompare|textureLoad|textureNumLayers|textureNumLevels|textureNumSamples|textureSample|textureSampleBias|textureSampleCompare|textureSampleCompareLevel|textureSampleGrad|textureSampleLevel|textureStore|texture_1d|texture_2d|texture_2d_array|texture_3d|texture_cube|texture_cube_array|texture_depth_2d|texture_depth_2d_array|texture_depth_cube|texture_depth_cube_array|texture_depth_multisampled_2d|texture_multisampled_2d|texture_storage_1d|texture_storage_2d|texture_storage_2d_array|texture_storage_3d|transpose|trunc|u32|u64|unpack2x16float|unpack2x16snorm|unpack2x16unorm|unpack4x8snorm|unpack4x8unorm|vec[2-4]|workgroupBarrier)\\b';
  const definition_23 = '\\b[_a-z]\\w*(?=\\()';
  const definition_8 = '\\b(?:[A-Z][A-Za-z0-9]*)\\b';
  const definition_24 = '\\b(?:false|true)\\b';
  const definition_26 = '\\b0[xX][0-9a-fA-F]+[iu]?\\b(?![.pP])';
  const definition_28 =
      '\\b0[xX][0-9a-fA-F]*(?:\\.[0-9a-fA-F]*)?(?:[pP][+-]?\\d+[fh]?)?';
  const definition_44 = '\\d*\\.\\d+(?:[eE](?:\\+|-)?\\d+)?[fh]?';
  const definition_45 = '\\d+\\.\\d*(?:[eE](?:\\+|-)?\\d+)?[fh]?';
  const definition_46 = '\\d+[eE](?:\\+|-)?\\d+[fh]?';
  const definition_47 = '\\b\\d+[fh]\\b';
  const definition_33 = '\\b\\d+[iu]?\\b';
  const definition_48 = '(?:\\^|~|\\|(?!\\|)|\\|\\||&&|<<|>>|!)(?!=)';
  const definition_49 = '&(?![&=])';
  const definition_50 = '(?:\\+=|-=|\\*=|\\/=|%=|\\^=|&=|\\|=|<<=|>>=)';
  const definition_51 = '(^|[^<>=!])=(?![=>])';
  const definition_52 = '(?:==|!=|<=|\\+\\+|--|(^|[^=])>=)';
  const definition_53 =
      '(?:(?:[+%]|(?:\\*(?!\\w)))(?!=))|(?:-(?!>))|(?:\\/(?!\\/))';
  const definition_54 = '->';
  const definition_15 = '[@(){}[\\],;<>:.]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
    inside: definition_18,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_55),
    aliases: ['attr-name'],
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_56),
    aliases: ['attr-value'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    lookbehind: true,
    aliases: ['attr-name'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_23, caseSensitive: false),
    aliases: ['function'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['boolean'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['number'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['number'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_44),
    aliases: ['number'],
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_45),
    aliases: ['number'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_46),
    aliases: ['number'],
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_47),
    aliases: ['number'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['number'],
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_48),
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_49),
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_50),
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_53),
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_54),
  );
  definition_18.addAllTokens({
    'attribute': [definition_41],
    'punctuation': [GrammarToken(pattern: RegExp(definition_42))],
    'built-in-values': [definition_43],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'builtin-attribute': [definition_2],
    'attributes': [definition_3],
    'functions': [definition_4],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'builtin': [GrammarToken(pattern: RegExp(definition_6))],
    'function-calls': [definition_7],
    'class-name': [GrammarToken(pattern: RegExp(definition_8))],
    'bool-literal': [definition_9],
    'hex-int-literal': [definition_10],
    'hex-float-literal': [definition_11],
    'decimal-float-literal': [
      definition_29,
      definition_30,
      definition_31,
      definition_32,
    ],
    'int-literal': [definition_13],
    'operator': [
      definition_34,
      definition_35,
      definition_36,
      definition_37,
      definition_38,
      definition_39,
      definition_40,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_15))],
  });

  return LanguageProto(
    'wgsl',
    definition_0,
  );
}

final languageWgsl = _create();
