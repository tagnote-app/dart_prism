// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_15 = '\\/\\*[\\s\\S]*?(?:\\*\\/|\$)|--.*';
  const definition_16 =
      '(^|[^"\\\\@])(?:"(?:[^"\\\\]|\\\\[\\s\\S])*"|@"[^"]*")';
  const definition_17 = '\\\$(?:[\\w/\\\\.*?]|\'[^\']*\')*';
  const definition_19 =
      '((?:^|[;=<>+\\-*/^({\\[]|\\b(?:and|by|case|catch|collect|do|else|if|in|not|or|return|then|to|try|where|while|with)\\b)[ 	]*)(?!\\b(?:about|and|animate|as|at|attributes|by|case|catch|collect|continue|coordsys|do|else|exit|fn|for|from|function|global|if|in|local|macroscript|mapped|max|not|of|off|on|or|parameters|persistent|plugin|rcmenu|return|rollout|set|struct|then|throw|to|tool|try|undo|utility|when|where|while|with)\\b)[a-z_]\\w*\\b(?=[ 	]*(?:(?!\\b(?:about|and|animate|as|at|attributes|by|case|catch|collect|continue|coordsys|do|else|exit|fn|for|from|function|global|if|in|local|macroscript|mapped|max|not|of|off|on|or|parameters|persistent|plugin|rcmenu|return|rollout|set|struct|then|throw|to|tool|try|undo|utility|when|where|while|with)\\b)[a-z_]|\\d|-\\.?\\d|[({\'"\$@#?]))';
  const definition_21 = '(\\b(?:fn|function)\\s+)\\w+\\b';
  const definition_22 = '\\b[a-z_]\\w*(?=:)';
  const definition_7 =
      '\\b(?:about|and|animate|as|at|attributes|by|case|catch|collect|continue|coordsys|do|else|exit|fn|for|from|function|global|if|in|local|macroscript|mapped|max|not|of|off|on|or|parameters|persistent|plugin|rcmenu|return|rollout|set|struct|then|throw|to|tool|try|undo|utility|when|where|while|with)\\b';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_24 =
      '(^|[^\\w.])(?:(?:(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[eEdD][+-]\\d+|[LP])?[msft])+|\\d+:\\d+(?:\\.\\d*)?)(?![\\w.:])';
  const definition_30 =
      '(^|[^\\w.])(?:(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[eEdD][+-]\\d+|[LP])?|0x[a-fA-F0-9]+)(?![\\w.:])';
  const definition_27 = '\\b(?:e|pi)\\b';
  const definition_11 =
      '\\b(?:dontcollect|ok|silentValue|undefined|unsupplied)\\b';
  const definition_28 =
      '\\b(?:black|blue|brown|gray|green|orange|red|white|yellow)\\b';
  const definition_13 = '[-+*/<>=!]=?|[&^?]|#(?!\\()';
  const definition_14 = '[()\\[\\]{}.:,;]|#(?=\\()|\\\\\$';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['function'],
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    aliases: ['attr-name'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_28, caseSensitive: false),
    aliases: ['constant'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'path': [definition_3],
    'function-call': [definition_4],
    'function-definition': [definition_5],
    'argument': [definition_6],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'time': [definition_9],
    'number': [
      definition_26,
      GrammarToken(pattern: RegExp(definition_27)),
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_11))],
    'color': [definition_12],
    'operator': [GrammarToken(pattern: RegExp(definition_13))],
    'punctuation': [
      GrammarToken(pattern: RegExp(definition_14, multiLine: true))
    ],
  });

  return LanguageProto(
    'maxscript',
    definition_0,
  );
}

final languageMaxscript = _create();
