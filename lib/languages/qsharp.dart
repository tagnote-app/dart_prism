// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  final definition_26 = Grammar();
  final definition_23 = Grammar();
  const definition_1 = '\\/\\/.*';
  const definition_12 =
      '\\\$"(?:\\\\.|(?:\\{(?:[^"{}]|(?:"(?:\\\\.|[^\\\\"])*")|(?:\\{(?:[^"{}]|(?:"(?:\\\\.|[^\\\\"])*")|(?:\\{(?:[^"{}]|(?:"(?:\\\\.|[^\\\\"])*")|(?:\\{(?:[^"{}]|(?:"(?:\\\\.|[^\\\\"])*")|[^\\s\\S])*\\}))*\\}))*\\}))*\\})|[^\\\\"{])*"';
  const definition_25 =
      '((?:^|[^\\\\])(?:\\\\\\\\)*)(?:\\{(?:[^"{}]|(?:"(?:\\\\.|[^\\\\"])*")|(?:\\{(?:[^"{}]|(?:"(?:\\\\.|[^\\\\"])*")|(?:\\{(?:[^"{}]|(?:"(?:\\\\.|[^\\\\"])*")|(?:\\{(?:[^"{}]|(?:"(?:\\\\.|[^\\\\"])*")|[^\\s\\S])*\\}))*\\}))*\\}))*\\})';
  const definition_28 = '^\\{|\\}\$';
  const definition_20 = '[\\s\\S]+';
  const definition_21 = '(^|[^\$\\\\])(?:"(?:\\\\.|[^\\\\"])*")';
  const definition_22 =
      '(\\b(?:as|open)\\s+)(?:(?:\\b[A-Za-z_]\\w*\\b)(?:\\s*\\.\\s*(?:\\b[A-Za-z_]\\w*\\b))*)(?=\\s*(?:;|as\\b))';
  const definition_5 =
      '\\b(?:Adj|BigInt|Bool|Ctl|Double|false|Int|One|Pauli|PauliI|PauliX|PauliY|PauliZ|Qubit|Range|Result|String|true|Unit|Zero|Adjoint|adjoint|apply|as|auto|body|borrow|borrowing|Controlled|controlled|distribute|elif|else|fail|fixup|for|function|if|in|internal|intrinsic|invert|is|let|mutable|namespace|new|newtype|open|operation|repeat|return|self|set|until|use|using|while|within)\\b';
  const definition_27 = '[<>()?,.:[\\]]';
  const definition_24 =
      '(\\bnamespace\\s+)(?:(?:\\b[A-Za-z_]\\w*\\b)(?:\\s*\\.\\s*(?:\\b[A-Za-z_]\\w*\\b))*)(?=\\s*\\{)';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 = '\\b\\w+(?=\\()';
  const definition_17 = '\\.\\.';
  const definition_9 =
      '(?:\\b0(?:x[\\da-f]+|b[01]+|o[0-7]+)|(?:\\B\\.\\d+|\\b\\d+(?:\\.\\d*)?)(?:e[-+]?\\d+)?)l?\\b';
  const definition_10 =
      '\\band=|\\bor=|\\band\\b|\\bnot\\b|\\bor\\b|<[-=]|[-=]>|>>>=?|<<<=?|\\^\\^\\^=?|\\|\\|\\|=?|&&&=?|w\\/=?|~~~|[*\\/+\\-^=!%]=?';
  const definition_11 = '::|[{}[\\];(),.:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    inside: definition_26,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['language-qsharp'],
    inside: 'qsharp',
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    inside: definition_23,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    inside: definition_23,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['operator'],
  );
  definition_26.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'expression': [definition_29],
  });
  definition_13.addAllTokens({
    'interpolation': [definition_19],
    'string': [GrammarToken(pattern: RegExp(definition_20))],
  });
  definition_23.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'interpolation-string': [definition_2],
    'string': [
      definition_14,
    ],
    'class-name': [
      definition_15,
      definition_16,
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'range': [definition_8],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'qsharp',
    definition_0,
    aliases: ['qs'],
    requiredDependencies: ['clike'],
  );
}

final languageQsharp = _create();
