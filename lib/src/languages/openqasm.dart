// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\/\\*[\\s\\S]*?\\*\\/|\\/\\/.*';
  const definition_10 = '"[^"\\r\\n\\t]*"|\'[^\'\\r\\n\\t]*\'';
  const definition_3 =
      '\\b(?:CX|OPENQASM|U|barrier|boxas|boxto|break|const|continue|ctrl|def|defcal|defcalgrammar|delay|else|end|for|gate|gphase|if|in|include|inv|kernel|lengthof|let|measure|pow|reset|return|rotary|stretchinf|while)\\b|#pragma\\b';
  const definition_4 =
      '\\b(?:angle|bit|bool|creg|fixed|float|int|length|qreg|qubit|stretch|uint)\\b';
  const definition_5 =
      '\\b(?:cos|exp|ln|popcount|rotl|rotr|sin|sqrt|tan)\\b(?=\\s*\\()';
  const definition_6 = '\\b(?:euler|pi|tau)\\b|π|𝜏|ℇ';
  const definition_11 =
      '(^|[^.\\w\$])(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:e[+-]?\\d+)?(?:dt|ns|us|µs|ms|s)?';
  const definition_8 = '->|>>=?|<<=?|&&|\\|\\||\\+\\+|--|[!=<>&|~^+\\-*/%]=?|@';
  const definition_9 = '[(){}\\[\\];,:.]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'keyword': [GrammarToken(pattern: RegExp(definition_3))],
    'class-name': [GrammarToken(pattern: RegExp(definition_4))],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'constant': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [definition_7],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'openqasm',
    definition_0,
    aliases: ['qasm'],
  );
}

final languageOpenqasm = _create();
