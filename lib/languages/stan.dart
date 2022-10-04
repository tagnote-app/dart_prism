// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_18 = Grammar();
  const definition_1 = '\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/|#(?!include).*';
  const definition_12 = '"[\\x20\\x21\\x23-\\x5B\\x5D-\\x7E]*"';
  const definition_13 = '^([ \\t]*)#include\\b.*';
  const definition_15 =
      '(\\b(?:algebra_solver|algebra_solver_newton|integrate_1d|integrate_ode|integrate_ode_bdf|integrate_ode_rk45|map_rect|ode_(?:adams|bdf|ckrk|rk45)(?:_tol)?|ode_adjoint_tol_ctl|reduce_sum|reduce_sum_static)\\b\\s*\\(\\s*)[a-zA-Z]\\w*';
  const definition_17 =
      '(\\b(?:int|matrix|real|row_vector|vector)\\s*)<[^<>]*>';
  const definition_28 =
      '(=\\s*)\\S(?:\\S|\\s+(?!\\s))*?(?=\\s*(?:>\$|,\\s*\\w+\\s*=))';
  const definition_23 = '\\b[a-z]\\w*(?=\\s*=)';
  const definition_24 = '=';
  const definition_25 = '^<|>\$|,';
  const definition_26 =
      '\\bdata(?=\\s*\\{)|\\b(?:functions|generated|model|parameters|quantities|transformed)\\b';
  const definition_20 =
      '\\b(?:array|break|cholesky_factor_corr|cholesky_factor_cov|complex|continue|corr_matrix|cov_matrix|data|else|for|if|in|increment_log_prob|int|matrix|ordered|positive_ordered|print|real|reject|return|row_vector|simplex|target|unit_vector|vector|void|while)\\b';
  const definition_21 =
      '\\b(?:algebra_solver|algebra_solver_newton|integrate_1d|integrate_ode|integrate_ode_bdf|integrate_ode_rk45|map_rect|ode_(?:adams|bdf|ckrk|rk45)(?:_tol)?|ode_adjoint_tol_ctl|reduce_sum|reduce_sum_static)\\b';
  const definition_7 = '\\b[a-z]\\w*(?=\\s*\\()';
  const definition_8 =
      '(?:\\b\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\B\\.\\d+(?:_\\d+)*)(?:E[+-]?\\d+(?:_\\d+)*)?i?(?!\\w)';
  const definition_9 = '\\b(?:false|true)\\b';
  const definition_10 = '<-|\\.[*/]=?|\\|\\|?|&&|[!=<>+\\-*/]=?|[\'^%~?:]';
  const definition_11 = '[()\\[\\]{},;]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
    inside: definition_18,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    inside: 'stan',
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['program-block'],
  );
  definition_18.addAllTokens({
    'expression': [definition_22],
    'property': [
      GrammarToken(pattern: RegExp(definition_23, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_24))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_25))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'directive': [definition_3],
    'function-arg': [definition_4],
    'constraint': [definition_5],
    'keyword': [
      definition_19,
      GrammarToken(pattern: RegExp(definition_20)),
      GrammarToken(pattern: RegExp(definition_21)),
    ],
    'function': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_9))],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'stan',
    definition_0,
  );
}

final languageStan = _create();
