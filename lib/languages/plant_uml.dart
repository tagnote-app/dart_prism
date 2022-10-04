// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  final definition_21 = Grammar();
  const definition_13 = '(^[ \\t]*)(?:\'.*|\\/\'[\\s\\S]*?\'\\/)';
  const definition_14 = '(^[ \\t]*)!.*';
  const definition_11 = '\\\$\\w+|%[a-z]+%';
  const definition_17 = '(^[ \\t]*)@(?:end|start)uml\\b';
  const definition_19 =
      '(^|[^-.<>?|\\\\[\\]ox])[[?]?[ox]?(?:(?:-+(?:[drlu]|do|down|le|left|ri|right|up)-+|\\.+(?:[drlu]|do|down|le|left|ri|right|up)\\.+|-+(?:\\[[^[\\]]*\\]-*)?|\\[[^[\\]]*\\]-+|\\.+(?:\\[[^[\\]]*\\]\\.*)?|\\[[^[\\]]*\\]\\.+)(?:>{1,2}|\\/{1,2}|\\\\{1,2}|\\|>|[#*^+{xo])|(?:<{1,2}|\\/{1,2}|\\\\{1,2}|<\\||[#*^+}xo])(?:-+(?:[drlu]|do|down|le|left|ri|right|up)-+|\\.+(?:[drlu]|do|down|le|left|ri|right|up)\\.+|-+(?:\\[[^[\\]]*\\]-*)?|\\[[^[\\]]*\\]-+|\\.+(?:\\[[^[\\]]*\\]\\.*)?|\\[[^[\\]]*\\]\\.+)(?:(?:>{1,2}|\\/{1,2}|\\\\{1,2}|\\|>|[#*^+{xo]))?)[ox]?[\\]?]?(?![-.<>?|\\\\\\]ox])';
  const definition_37 = '(\\[)[^[\\]]+(?=\\])';
  const definition_35 = '\\[(?=\$|\\])|^\\]';
  const definition_22 = '"[^"]*"';
  const definition_23 = '(\\[[ \\t]*[\\r\\n]+(?![\\r\\n]))[^\\]]*(?=\\])';
  const definition_36 =
      '^([ \\t]*)(?:abstract\\s+class|end\\s+(?:box|fork|group|merge|note|ref|split|title)|(?:fork|split)(?:\\s+again)?|activate|actor|agent|alt|annotation|artifact|autoactivate|autonumber|backward|binary|boundary|box|break|caption|card|case|circle|class|clock|cloud|collections|component|concise|control|create|critical|database|deactivate|destroy|detach|diamond|else|elseif|end|end[hr]note|endif|endswitch|endwhile|entity|enum|file|folder|footer|frame|group|header|hexagon|hide|[hr]?note|if|interface|label|legend|loop|map|namespace|network|newpage|node|nwdiag|object|opt|package|page|par|participant|person|queue|rectangle|ref|remove|repeat|restore|return|robust|scale|set|show|skinparam|stack|start|state|stop|storage|switch|title|together|usecase|usecase\\/|while)(?=\\s|\$)';
  const definition_26 = '\\b(?:elseif|equals|not|while)(?=\\s*\\()';
  const definition_27 = '\\b(?:as|is|then)\\b';
  const definition_28 = '^==.+==\$';
  const definition_30 =
      '@(?:\\d+(?:[:/]\\d+){2}|[+-]?\\d+|:[a-z]\\w*(?:[+-]\\d+)?)\\b';
  const definition_32 = '#(?:[a-z_]+|[a-fA-F0-9]+)\\b';
  const definition_12 = '[:,;()[\\]{}]|\\.{3}';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_13, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    inside: definition_16,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['punctuation'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    greedy: true,
    aliases: ['operator'],
    inside: definition_21,
    global: true,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    inside: 'plant-uml',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_36, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_28, multiLine: true),
    greedy: true,
    aliases: ['important'],
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_30, caseSensitive: false),
    greedy: true,
    aliases: ['number'],
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_32),
    aliases: ['symbol'],
  );
  definition_16.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_11))],
  });
  definition_21.addAllTokens({
    'expression': [definition_34],
    'punctuation': [GrammarToken(pattern: RegExp(definition_35))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'preprocessor': [definition_2],
    'delimiter': [definition_3],
    'arrow': [definition_4],
    'string': [definition_5],
    'text': [definition_6],
    'keyword': [
      definition_25,
      GrammarToken(pattern: RegExp(definition_26)),
      GrammarToken(pattern: RegExp(definition_27)),
    ],
    'divider': [definition_8],
    'time': [definition_9],
    'color': [definition_10],
    'variable': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'plant-uml',
    definition_0,
    aliases: ['plantuml'],
  );
}

final languagePlantUml = _create();
