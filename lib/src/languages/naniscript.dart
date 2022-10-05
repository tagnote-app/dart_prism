// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_10 = Grammar();
  final definition_15 = Grammar();
  final definition_33 = Grammar();
  final definition_18 = Grammar();
  final definition_35 = Grammar();
  const definition_7 = '^([\\t ]*);.*';
  const definition_8 = '^>.+';
  const definition_27 = '(^>\\w+[\\t ]+)(?!\\s)[^{}\\r\\n]+';
  const definition_29 = '(^>)\\w+';
  const definition_11 = '^([\\t ]*)#[\\t ]*\\w+[\\t ]*\$';
  const definition_13 = '^([\\t ]*)@\\w+(?=[\\t ]|\$).*';
  const definition_21 = '^@\\w+';
  const definition_30 = '\\{[^\\r\\n\\[\\]{}]*\\}';
  const definition_32 = '\\s*\\S[\\s\\S]*';
  const definition_42 = '"(?:[^"\\\\]|\\\\.)*"';
  const definition_43 = '(\\s)\\w+:';
  const definition_51 = '([\\t ])\\S+';
  const definition_52 = '\\S(?:.*\\S)?';
  const definition_16 = '(^[ \\t]*)[^#@>;\\s].*';
  const definition_24 = '\\\\[{}\\[\\]"]';
  const definition_34 = '\\[[\\t ]*\\w[^\\r\\n\\[\\]]*\\]';
  const definition_48 = '(^\\[[\\t ]*\\w+\\b)[\\s\\S]+(?=\\]\$)';
  const definition_49 = '^(\\[[\\t ]*)\\w+';
  const definition_41 = '[\\[\\]]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_7, multiLine: true),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8, multiLine: true),
    aliases: ['tag'],
    inside: definition_10,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11, multiLine: true),
    lookbehind: true,
    aliases: ['regex'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13, multiLine: true),
    lookbehind: true,
    aliases: ['function'],
    inside: definition_15,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_30),
    greedy: true,
    aliases: ['selector'],
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_32),
    inside: definition_33,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_42),
    aliases: ['operator'],
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_43),
    lookbehind: true,
    aliases: ['property'],
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_30),
    aliases: ['selector'],
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
    greedy: true,
    aliases: ['operator'],
    global: true,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_52),
    aliases: ['operator'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16, multiLine: true),
    lookbehind: true,
    aliases: ['punctuation'],
    inside: definition_18,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_30),
    greedy: true,
    aliases: ['selector'],
    global: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_34),
    greedy: true,
    aliases: ['function'],
    inside: definition_35,
    global: true,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_48),
    lookbehind: true,
    inside: definition_33,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    aliases: ['name'],
  );
  definition_0.tokenize = customTokenizer_3;
  definition_10.addAllTokens({
    'value': [definition_19],
    'key': [definition_20],
  });
  definition_33.addAllTokens({
    'quoted-string': [definition_36],
    'command-param-id': [definition_37],
    'command-param-value': [
      definition_45,
      definition_46,
      definition_47,
    ],
  });
  definition_15.addAllTokens({
    'command-name': [GrammarToken(pattern: RegExp(definition_21))],
    'expression': [definition_22],
    'command-params': [definition_23],
  });
  definition_35.addAllTokens({
    'command-params': [definition_39],
    'command-param-name': [definition_40],
    'start-stop-char': [GrammarToken(pattern: RegExp(definition_41))],
  });
  definition_18.addAllTokens({
    'escaped-char': [GrammarToken(pattern: RegExp(definition_24))],
    'expression': [definition_25],
    'inline-command': [definition_26],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'define': [definition_2],
    'label': [definition_3],
    'command': [definition_4],
    'generic-text': [definition_5],
  });

  return LanguageProto(
    'naniscript',
    definition_0,
    aliases: ['nani'],
  );
}

final languageNaniscript = _create();
