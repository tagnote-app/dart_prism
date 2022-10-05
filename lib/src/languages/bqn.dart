// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_17 = '^#![ \\t]*\\/.*';
  const definition_19 = '#.*';
  const definition_20 = '"(?:[^"]|"")*"';
  const definition_22 = '\'(?:[\\s\\S]|[\\uD800-\\uDBFF][\\uDC00-\\uDFFF])\'';
  const definition_5 = '•[\\w¯.∞π]+[\\w¯.∞π]*';
  const definition_24 = '\\{(?=.*\\}\\.)|\\}\\.';
  const definition_26 = '(?:𝕨|𝕩|𝕗|𝕘|𝕤|𝕣|𝕎|𝕏|𝔽|𝔾|𝕊|_𝕣_|_𝕣)';
  const definition_28 = '[A-Za-z_][\\w¯∞π]*\\.';
  const definition_29 = '\\d+(?:\\.\\d+)?[eE]¯?\\d+';
  const definition_31 = '[A-Za-z_][\\w¯∞π]*';
  const definition_33 =
      '[¯∞π]?(?:\\d*\\.?\\b\\d+(?:e[+¯]?\\d+|E[+¯]?\\d+)?|¯|∞|π)(?:j¯?(?:(?:\\d+(?:\\.\\d+)?|\\.\\d+)(?:e[+¯]?\\d+|E[+¯]?\\d+)?|¯|∞|π))?';
  const definition_34 = '@';
  const definition_35 = '[-+×÷⋆√⌊⌈|¬∧∨<>≠=≤≥≡≢⊣⊢⥊∾≍⋈↑↓↕«»⌽⍉/⍋⍒⊏⊑⊐⊒∊⍷⊔!]';
  const definition_37 = '[`˜˘¨⁼⌜´˝˙]';
  const definition_38 = '[∘⊸⟜○⌾⎉⚇⍟⊘◶⎊]';
  const definition_16 = '[←⇐↩(){}⟨⟩[\\]‿·⋄,.;:?]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['important'],
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    aliases: ['char'],
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['namespace'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['keyword'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['namespace'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_29),
    aliases: ['number'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_31),
    aliases: ['symbol'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['number'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_34),
    aliases: ['char'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_35),
    aliases: ['operator'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_37),
    aliases: ['operator'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_38),
    aliases: ['operator'],
  );
  definition_0.addAllTokens({
    'shebang': [definition_1],
    'comment': [definition_2],
    'string-literal': [definition_3],
    'character-literal': [definition_4],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'dot-notation-on-brackets': [definition_6],
    'special-name': [definition_7],
    'dot-notation-on-name': [definition_8],
    'word-number-scientific': [definition_9],
    'word-name': [definition_10],
    'word-number': [definition_11],
    'null-literal': [definition_12],
    'primitive-functions': [definition_13],
    'primitive-1-operators': [definition_14],
    'primitive-2-operators': [definition_15],
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });

  return LanguageProto(
    'bqn',
    definition_0,
  );
}

final languageBqn = _create();
