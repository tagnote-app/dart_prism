// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_9 = '(^|[^\\\\:])rem\\s+.*';
  const definition_10 = '([\'"])(?:(?!\\1|\\\\).|\\\\.)*\\1';
  const definition_3 = '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:E[+-]?\\d+)?';
  const definition_4 =
      '\\b(?:abstract|all|argc|begin|bye|callback|case|chn|class|classend|ctl|day|declare|delete|dim|dom|dread|dsz|else|end|endif|err|exitto|extends|fi|field|for|from|gosub|goto|if|implements|interface|interfaceend|iol|iolist|let|list|load|method|methodend|methodret|on|opts|pfx|print|private|process_events|protected|psz|public|read|read_resource|release|remove_callback|repeat|restore|return|rev|seterr|setesc|sqlchn|sqlunt|ssn|start|static|swend|switch|sys|then|tim|unt|until|use|void|wend|where|while)\\b';
  const definition_5 = '\\b\\w+(?=\\()';
  const definition_6 = '\\b(?:BBjAPI\\.TRUE|BBjAPI\\.FALSE)\\b';
  const definition_7 = '<[=>]?|>=?|[+\\-*\\/^=&]|\\b(?:and|not|or|xor)\\b';
  const definition_8 = '[.,;:()]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'number': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'bbj',
    definition_0,
  );
}

final languageBbj = _create();
