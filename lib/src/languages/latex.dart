// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_19 = Grammar();
  const definition_1 = '%.*';
  const definition_9 =
      '(\\\\begin\\{((?:lstlisting|verbatim)\\*?)\\})[\\s\\S]*?(?=\\\\end\\{\\2\\})';
  const definition_18 =
      '\\\$\\\$(?:\\\\[\\s\\S]|[^\\\\\$])+\\\$\\\$|\\\$(?:\\\\[\\s\\S]|[^\\\\\$])+\\\$|\\\\\\([\\s\\S]*?\\\\\\)|\\\\\\[[\\s\\S]*?\\\\\\]';
  const definition_16 = '\\\\(?:[^a-z()[\\]]|[a-z*]+)';
  const definition_21 =
      '(\\\\begin\\{((?:align|eqnarray|equation|gather|math|multline)\\*?)\\})[\\s\\S]*?(?=\\\\end\\{\\2\\})';
  const definition_12 =
      '(\\\\(?:begin|cite|documentclass|end|label|ref|usepackage)(?:\\[[^\\]]+\\])?\\{)[^}]+(?=\\})';
  const definition_13 = '(\\\\url\\{)[^}]+(?=\\})';
  const definition_14 =
      '(\\\\(?:chapter|frametitle|paragraph|part|section|subparagraph|subsection|subsubparagraph|subsubsection|subsubsubparagraph)\\*?(?:\\[[^\\]]+\\])?\\{)[^}]+(?=\\})';
  const definition_8 = '[[\\]{}&]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_18),
    inside: definition_19,
    aliases: ['string'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    aliases: ['regex'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    inside: definition_19,
    aliases: ['string'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    aliases: ['class-name'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    aliases: ['selector'],
  );
  definition_19.addAllTokens({
    'equation-command': [definition_22],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'cdata': [definition_2],
    'equation': [
      definition_10,
      definition_11,
    ],
    'keyword': [definition_4],
    'url': [definition_5],
    'headline': [definition_6],
    'function': [definition_7],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'latex',
    definition_0,
    aliases: ['tex', 'context'],
  );
}

final languageLatex = _create();
