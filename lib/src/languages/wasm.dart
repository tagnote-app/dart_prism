// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  final definition_17 = Grammar();
  const definition_7 = '\\(;[\\s\\S]*?;\\)';
  const definition_13 = ';;.*';
  const definition_9 = '"(?:\\\\[\\s\\S]|[^"\\\\])*"';
  const definition_14 = '\\b(?:align|offset)=';
  const definition_18 = '=';
  const definition_16 =
      '\\b(?:(?:f32|f64|i32|i64)(?:\\.(?:abs|add|and|ceil|clz|const|convert_[su]\\/i(?:32|64)|copysign|ctz|demote\\/f64|div(?:_[su])?|eqz?|extend_[su]\\/i32|floor|ge(?:_[su])?|gt(?:_[su])?|le(?:_[su])?|load(?:(?:8|16|32)_[su])?|lt(?:_[su])?|max|min|mul|neg?|nearest|or|popcnt|promote\\/f32|reinterpret\\/[fi](?:32|64)|rem_[su]|rot[lr]|shl|shr_[su]|sqrt|store(?:8|16|32)?|sub|trunc(?:_[su]\\/f(?:32|64))?|wrap\\/i64|xor))?|memory\\.(?:grow|size))\\b';
  const definition_19 = '\\.';
  const definition_12 =
      '\\b(?:anyfunc|block|br(?:_if|_table)?|call(?:_indirect)?|data|drop|elem|else|end|export|func|get_(?:global|local)|global|if|import|local|loop|memory|module|mut|nop|offset|param|result|return|select|set_(?:global|local)|start|table|tee_local|then|type|unreachable)\\b';
  const definition_4 = '\\\$[\\w!#\$%&\'*+\\-./:<=>?@\\\\^`|~]+';
  const definition_5 =
      '[+-]?\\b(?:\\d(?:_?\\d)*(?:\\.\\d(?:_?\\d)*)?(?:[eE][+-]?\\d(?:_?\\d)*)?|0x[\\da-fA-F](?:_?[\\da-fA-F])*(?:\\.[\\da-fA-F](?:_?[\\da-fA-D])*)?(?:[pP][+-]?\\d(?:_?\\d)*)?)\\b|\\binf\\b|\\bnan(?::0x[\\da-fA-F](?:_?[\\da-fA-D])*)?\\b';
  const definition_6 = '[()]';
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_14),
    inside: definition_15,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_16),
    inside: definition_17,
  );
  definition_15.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_17.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });
  definition_0.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_7)),
      definition_8,
    ],
    'string': [definition_2],
    'keyword': [
      definition_10,
      definition_11,
      GrammarToken(pattern: RegExp(definition_12)),
    ],
    'variable': [GrammarToken(pattern: RegExp(definition_4))],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_6))],
  });

  return LanguageProto(
    'wasm',
    definition_0,
  );
}

final languageWasm = _create();
