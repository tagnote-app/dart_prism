// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_19 = Grammar();
  final definition_43 = Grammar();
  final definition_32 = Grammar();
  final definition_34 = Grammar();
  final definition_36 = Grammar();
  final definition_38 = Grammar();
  final definition_26 = Grammar();
  const definition_27 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_28 = '(^|[^\\\\:])\\/\\/.*';
  const definition_16 = '"""[\\s\\S]*?"""';
  const definition_18 = '@"[\\s\\S]*?"';
  const definition_42 = '\\\$(?:\\([^)]*\\)|[a-zA-Z]\\w*)';
  const definition_49 = '^\\\$\\(?|\\)\$';
  const definition_30 = '[\\s\\S]+';
  const definition_20 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_31 =
      '\\b[A-Z]\\w*(?:\\.\\w+)*\\b(?=(?:\\?\\s+|\\*?\\s+\\*?)\\w)';
  const definition_44 = '\\.';
  const definition_33 = '(\\[)[A-Z]\\w*(?:\\.\\w+)*\\b';
  const definition_35 =
      '(\\b(?:class|interface)\\s+[A-Z]\\w*(?:\\.\\w+)*\\s*:\\s*)[A-Z]\\w*(?:\\.\\w+)*\\b';
  const definition_37 =
      '((?:\\b(?:class|enum|interface|new|struct)\\s+)|(?:catch\\s+\\())[A-Z]\\w*(?:\\.\\w+)*\\b';
  const definition_25 =
      '\\/(?:\\[(?:[^\\]\\\\\\r\\n]|\\\\.)*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[imsx]{0,4}(?=\\s*(?:\$|[\\r\\n,.;})\\]]))';
  const definition_45 = '^(\\/)[\\s\\S]+(?=\\/[a-z]*\$)';
  const definition_40 = '^\\/';
  const definition_41 = '^[a-z]+\$';
  const definition_7 =
      '\\b(?:abstract|as|assert|async|base|bool|break|case|catch|char|class|const|construct|continue|default|delegate|delete|do|double|dynamic|else|ensures|enum|errordomain|extern|finally|float|for|foreach|get|if|in|inline|int|int16|int32|int64|int8|interface|internal|is|lock|long|namespace|new|null|out|override|owned|params|private|protected|public|ref|requires|return|set|short|signal|sizeof|size_t|ssize_t|static|string|struct|switch|this|throw|throws|try|typeof|uchar|uint|uint16|uint32|uint64|uint8|ulong|unichar|unowned|ushort|using|value|var|virtual|void|volatile|weak|while|yield)\\b';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_9 = '\\b\\w+(?=\\s*\\()';
  const definition_10 =
      '(?:\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?)(?:f|u?l?)?';
  const definition_11 =
      '\\+\\+|--|&&|\\|\\||<<=?|>>=?|=>|->|~|[+\\-*\\/%&^|=!<>]=?|\\?\\??|\\.\\.\\.';
  const definition_12 = '[{}[\\];(),.:]';
  const definition_13 = '\\b[A-Z0-9_]+\\b';
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    inside: definition_19,
    global: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_42),
    inside: definition_43,
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_49),
    aliases: ['punctuation'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_31),
    inside: definition_32,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    inside: definition_34,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    inside: definition_36,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    inside: definition_38,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    inside: definition_26,
    global: true,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  definition_43.rest = definition_0;
  definition_43.addAllTokens({
    'delimiter': [definition_48],
  });
  definition_19.addAllTokens({
    'interpolation': [definition_29],
    'string': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_32.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_34.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_36.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_38.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_26.addAllTokens({
    'regex-source': [definition_39],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_40))],
    'regex-flags': [GrammarToken(pattern: RegExp(definition_41))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_14,
      definition_15,
    ],
    'raw-string': [definition_2],
    'template-string': [definition_3],
    'string': [definition_4],
    'class-name': [
      definition_21,
      definition_22,
      definition_23,
      definition_24,
    ],
    'regex': [definition_6],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'function': [GrammarToken(pattern: RegExp(definition_9))],
    'number': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
    'constant': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'vala',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageVala = _create();
