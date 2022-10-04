// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '(?:⍝|#[! ]).*\$';
  const definition_13 = '\'(?:[^\'\\r\\n]|\'\')*\'';
  const definition_3 =
      '¯?(?:\\d*\\.?\\b\\d+(?:e[+¯]?\\d+)?|¯|∞)(?:j¯?(?:(?:\\d+(?:\\.\\d+)?|\\.\\d+)(?:e[+¯]?\\d+)?|¯|∞))?';
  const definition_4 = ':[A-Z][a-z][A-Za-z]*\\b';
  const definition_14 = '⎕[A-Z]+';
  const definition_6 = '[⍬⌾#⎕⍞]';
  const definition_7 =
      '[-+×÷⌈⌊∣|⍳⍸?*⍟○!⌹<≤=>≥≠≡≢∊⍷∪∩~∨∧⍱⍲⍴,⍪⌽⊖⍉↑↓⊂⊃⊆⊇⌷⍋⍒⊤⊥⍕⍎⊣⊢⍁⍂≈⍯↗¤→]';
  const definition_16 = '[\\\\\\/⌿⍀¨⍨⌶&∥]';
  const definition_18 = '[.⍣⍠⍤∘⌸@⌺⍥]';
  const definition_19 = '←';
  const definition_11 = '[\\[;\\]()◇⋄]';
  const definition_21 = '[{}⍺⍵⍶⍹∇⍫:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    aliases: ['function'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['operator'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['operator'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['keyword'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_21),
    aliases: ['builtin'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1, multiLine: true))],
    'string': [definition_2],
    'number': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'statement': [GrammarToken(pattern: RegExp(definition_4))],
    'system-function': [definition_5],
    'constant': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'monadic-operator': [definition_8],
    'dyadic-operator': [definition_9],
    'assignment': [definition_10],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
    'dfn': [definition_12],
  });

  return LanguageProto(
    'apl',
    definition_0,
  );
}

final languageApl = _create();
