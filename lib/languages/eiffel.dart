// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '--.*';
  const definition_15 = '"([^[]*)\\[[\\s\\S]*?\\]\\1"';
  const definition_16 = '"([^{]*)\\{[\\s\\S]*?\\}\\1"';
  const definition_17 = '"(?:%(?:(?!\\n)\\s)*\\n\\s*%|%\\S|[^%"\\r\\n])*"';
  const definition_3 = '\'(?:%.|[^%\'\\r\\n])+\'';
  const definition_4 =
      '\\b(?:across|agent|alias|all|and|as|assign|attached|attribute|check|class|convert|create|Current|debug|deferred|detachable|do|else|elseif|end|ensure|expanded|export|external|feature|from|frozen|if|implies|inherit|inspect|invariant|like|local|loop|not|note|obsolete|old|once|or|Precursor|redefine|rename|require|rescue|Result|retry|select|separate|some|then|undefine|until|variant|Void|when|xor)\\b';
  const definition_5 = '\\b(?:False|True)\\b';
  const definition_6 = '\\b[A-Z][\\dA-Z_]*\\b';
  const definition_13 = '\\b0[xcb][\\da-f](?:_*[\\da-f])*\\b';
  const definition_14 =
      '(?:\\b\\d(?:_*\\d)*)?\\.(?:(?:\\d(?:_*\\d)*)?e[+-]?)?\\d(?:_*\\d)*\\b|\\b\\d(?:_*\\d)*\\b\\.?';
  const definition_8 = ':=|<<|>>|\\(\\||\\|\\)|->|\\.(?=\\w)|[{}[\\];(),:?]';
  const definition_9 =
      '\\\\\\\\|\\|\\.\\.\\||\\.\\.|\\/[~\\/=]?|[><]=?|[-+*^=~]';
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    global: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [
      definition_10,
      definition_11,
      definition_12,
    ],
    'char': [GrammarToken(pattern: RegExp(definition_3))],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'class-name': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_13, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_14, caseSensitive: false)),
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'eiffel',
    definition_0,
  );
}

final languageEiffel = _create();
