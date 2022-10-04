// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_3 = Grammar();
  final definition_12 = Grammar();
  const definition_2 = '^.+';
  const definition_13 = '\\|-- |├── ';
  const definition_15 = '\\| {3}|│ {3}';
  const definition_17 = '`-- |└── ';
  const definition_19 = ' {4}';
  const definition_11 = '\\S(?:.*\\S)?';
  const definition_24 = '(^|[^\\\\])\\/\$';
  const definition_25 = '(^|[^\\\\])[=*|]\$';
  const definition_26 = ' -> ';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_2, multiLine: true),
    inside: definition_3,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['line-h'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_15),
    aliases: ['line-v'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['line-v-last'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['line-v-gap'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_11),
    inside: definition_12,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['operator'],
  );
  definition_3.tokenize = customTokenizer_5;
  definition_12.addAllTokens({
    'directory-marker': [definition_21],
    'file-marker': [definition_22],
    'symlink': [definition_23],
  });
  definition_3.addAllTokens({
    'entry-line': [
      definition_7,
      definition_8,
      definition_9,
      definition_10,
    ],
    'entry-name': [definition_5],
  });
  definition_0.addAllTokens({
    'treeview-part': [definition_1],
  });

  return LanguageProto(
    'treeview',
    definition_0,
    aliases: ['tree-view'],
  );
}

final languageTreeview = _create();
