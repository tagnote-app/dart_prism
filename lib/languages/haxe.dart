// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_18 = Grammar();
  final definition_40 = Grammar();
  final definition_21 = Grammar();
  const definition_31 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_32 = '(^|[^\\\\:])\\/\\/.*';
  const definition_17 = '\'(?:[^\'\\\\]|\\\\[\\s\\S])*\'';
  const definition_39 = '(^|[^\\\\])\\\$(?:\\w+|\\{[^{}]+\\})';
  const definition_46 = '^\\\$\\{?|\\}\$';
  const definition_34 = '[\\s\\S]+';
  const definition_19 = '"(?:[^"\\\\]|\\\\[\\s\\S])*"';
  const definition_20 = '~\\/(?:[^\\/\\\\\\r\\n]|\\\\.)+\\/[a-z]*';
  const definition_35 = '\\b[a-z]+\$';
  const definition_41 = '^(~\\/)[\\s\\S]+(?=\\/\$)';
  const definition_37 = '^~\\/|\\/\$';
  const definition_38 =
      '(\\b(?:abstract|class|enum|extends|implements|interface|new|typedef)\\s+)[A-Z_]\\w*';
  const definition_23 = '\\b[A-Z]\\w*';
  const definition_24 = '#(?:else|elseif|end|if)\\b.*';
  const definition_26 = '@:?[\\w.]+';
  const definition_28 = '\\\$(?:\\w+|(?=\\{))';
  const definition_9 =
      '\\bthis\\b|\\b(?:abstract|as|break|case|cast|catch|class|continue|default|do|dynamic|else|enum|extends|extern|final|for|from|function|if|implements|import|in|inline|interface|macro|new|null|operator|overload|override|package|private|public|return|static|super|switch|throw|to|try|typedef|untyped|using|var|while)(?!\\.)\\b';
  const definition_10 = '\\b(?:false|true)\\b';
  const definition_30 = '\\b[a-z_]\\w*(?=\\s*(?:<[^<>]*>\\s*)?\\()';
  const definition_12 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_13 =
      '\\.{3}|\\+\\+|--|&&|\\|\\||->|=>|(?:<<?|>{1,3}|[-+*/%!=&|^])=?|[?:~]';
  const definition_14 = '[{}[\\];(),.:]';
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    inside: definition_18,
    global: true,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
    inside: definition_40,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_46),
    aliases: ['punctuation'],
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_34),
    inside: 'haxe',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    inside: definition_21,
    global: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['property'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['symbol'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['important'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_30, caseSensitive: false),
    greedy: true,
    global: true,
  );
  definition_40.addAllTokens({
    'interpolation-punctuation': [definition_44],
    'expression': [definition_45],
  });
  definition_18.addAllTokens({
    'interpolation': [definition_33],
    'string': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_21.addAllTokens({
    'regex-flags': [GrammarToken(pattern: RegExp(definition_35))],
    'regex-source': [definition_36],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_37))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_15,
      definition_16,
    ],
    'string-interpolation': [definition_2],
    'string': [definition_3],
    'regex': [definition_4],
    'class-name': [
      definition_22,
      GrammarToken(pattern: RegExp(definition_23)),
    ],
    'preprocessor': [definition_6],
    'metadata': [definition_7],
    'reification': [definition_8],
    'keyword': [GrammarToken(pattern: RegExp(definition_9))],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'function': [definition_11],
    'number': [
      GrammarToken(pattern: RegExp(definition_12, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_13))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
  });

  return LanguageProto(
    'haxe',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageHaxe = _create();
