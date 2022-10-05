// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_11 =
      '^(>.*(?:\\r(?:\\n|(?!\\n))|\\n))(?!>)(?:.+|(?:\\r(?:\\n|(?!\\n))|\\n)(?!>).*)(?:(?:\\r(?:\\n|(?!\\n))|\\n)(?!>).*)*';
  const definition_12 = '\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_13 = '(^|[^\\\\"])"(?:[^\\r\\n\\\\"]|\\\\.)*"';
  const definition_4 =
      '\\b(?:_|adj|and|assert|assert2|assert3|assigned|break|by|case|cat|catch|clear|cmpeq|cmpne|continue|declare|default|delete|diff|div|do|elif|else|end|eq|error|eval|exists|exit|for|forall|forward|fprintf|freeze|function|ge|gt|if|iload|import|in|intrinsic|is|join|le|load|local|lt|meet|mod|ne|not|notadj|notin|notsubset|or|print|printf|procedure|quit|random|read|readi|repeat|require|requirege|requirerange|restore|return|save|sdiff|select|subset|then|time|to|try|until|vprint|vprintf|vtime|when|where|while|xor)\\b';
  const definition_5 = '\\b(?:false|true)\\b';
  const definition_14 = '\\b[a-z_]\\w*(?=\\s*<)';
  const definition_7 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_16 =
      '(^|[^\\w.]|\\.\\.)(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[eE][+-]?\\d+)?(?:_[a-z]?)?(?=\$|[^\\w.]|\\.\\.)';
  const definition_9 = '->|[-+*/^~!|#=]|:=|\\.\\.';
  const definition_10 = '[()[\\]{}<>,;.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    aliases: ['class-name'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'output': [definition_1],
    'comment': [definition_2],
    'string': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'boolean': [GrammarToken(pattern: RegExp(definition_5))],
    'generator': [definition_6],
    'function': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'number': [definition_8],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'magma',
    definition_0,
  );
}

final languageMagma = _create();
