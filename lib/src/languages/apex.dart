// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_29 = Grammar();
  const definition_26 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_27 = '(^|[^\\\\:])\\/\\/.*';
  const definition_15 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_16 = '((?:[=,({:]|\\breturn)\\s*)\\[[^\\[\\]]*\\]';
  const definition_19 = '@\\w+\\b';
  const definition_28 =
      '(\\b(?:class|enum|extends|implements|instanceof|interface|new|trigger\\s+\\w+\\s+on)\\s+)\\b(?:(?=[a-z_]\\w*\\s*[<\\[])|(?!\\b(?:abstract|activate|(?:after|before)(?=\\s+[a-z])|and|any|array|as|asc|autonomous|begin|bigdecimal|blob|boolean|break|bulk|by|byte|case|cast|catch|char|class|collect|commit|const|continue|currency|date|datetime|decimal|default|delete|desc|do|double|else|end|enum|exception|exit|export|extends|final|finally|float|for|from|get(?=\\s*[{};])|global|goto|group|having|hint|if|implements|import|in|inner|insert|instanceof|int|integer|interface|into|join|like|limit|list|long|loop|map|merge|new|not|null|nulls|number|object|of|on|or|outer|override|package|parallel|pragma|private|protected|public|retrieve|return|rollback|select|set|short|sObject|sort|static|string|super|switch|synchronized|system|testmethod|then|this|throw|time|transaction|transient|trigger|try|undelete|update|upsert|using|virtual|void|webservice|when|where|while|(?:inherited|with|without)\\s+sharing)\\b))[A-Z_]\\w*(?:\\s*\\.\\s*[A-Z_]\\w*)*\\b(?:\\s*(?:\\[\\s*\\]|<(?:[^<>]|<(?:[^<>]|<[^<>]*>)*>)*>))*';
  const definition_7 =
      '\\b(?:abstract|activate|(?:after|before)(?=\\s+[a-z])|and|any|array|as|asc|autonomous|begin|bigdecimal|blob|boolean|break|bulk|by|byte|case|cast|catch|char|class|collect|commit|const|continue|currency|date|datetime|decimal|default|delete|desc|do|double|else|end|enum|exception|exit|export|extends|final|finally|float|for|from|get(?=\\s*[{};])|global|goto|group|having|hint|if|implements|import|in|inner|insert|instanceof|int|integer|interface|into|join|like|limit|list|long|loop|map|merge|new|not|null|nulls|number|object|of|on|or|outer|override|package|parallel|pragma|private|protected|public|retrieve|return|rollback|select|set|short|sObject|sort|static|string|super|switch|synchronized|system|testmethod|then|this|throw|time|transaction|transient|trigger|try|undelete|update|upsert|using|virtual|void|webservice|when|where|while|(?:inherited|with|without)\\s+sharing)\\b';
  const definition_32 = '[()\\[\\]{};,:.<>]';
  const definition_30 =
      '(\\(\\s*)\\b(?:(?=[a-z_]\\w*\\s*[<\\[])|(?!\\b(?:abstract|activate|(?:after|before)(?=\\s+[a-z])|and|any|array|as|asc|autonomous|begin|bigdecimal|blob|boolean|break|bulk|by|byte|case|cast|catch|char|class|collect|commit|const|continue|currency|date|datetime|decimal|default|delete|desc|do|double|else|end|enum|exception|exit|export|extends|final|finally|float|for|from|get(?=\\s*[{};])|global|goto|group|having|hint|if|implements|import|in|inner|insert|instanceof|int|integer|interface|into|join|like|limit|list|long|loop|map|merge|new|not|null|nulls|number|object|of|on|or|outer|override|package|parallel|pragma|private|protected|public|retrieve|return|rollback|select|set|short|sObject|sort|static|string|super|switch|synchronized|system|testmethod|then|this|throw|time|transaction|transient|trigger|try|undelete|update|upsert|using|virtual|void|webservice|when|where|while|(?:inherited|with|without)\\s+sharing)\\b))[A-Z_]\\w*(?:\\s*\\.\\s*[A-Z_]\\w*)*\\b(?:\\s*(?:\\[\\s*\\]|<(?:[^<>]|<(?:[^<>]|<[^<>]*>)*>)*>))*(?=\\s*\\)\\s*[\\w(])';
  const definition_31 =
      '\\b(?:(?=[a-z_]\\w*\\s*[<\\[])|(?!\\b(?:abstract|activate|(?:after|before)(?=\\s+[a-z])|and|any|array|as|asc|autonomous|begin|bigdecimal|blob|boolean|break|bulk|by|byte|case|cast|catch|char|class|collect|commit|const|continue|currency|date|datetime|decimal|default|delete|desc|do|double|else|end|enum|exception|exit|export|extends|final|finally|float|for|from|get(?=\\s*[{};])|global|goto|group|having|hint|if|implements|import|in|inner|insert|instanceof|int|integer|interface|into|join|like|limit|list|long|loop|map|merge|new|not|null|nulls|number|object|of|on|or|outer|override|package|parallel|pragma|private|protected|public|retrieve|return|rollback|select|set|short|sObject|sort|static|string|super|switch|synchronized|system|testmethod|then|this|throw|time|transaction|transient|trigger|try|undelete|update|upsert|using|virtual|void|webservice|when|where|while|(?:inherited|with|without)\\s+sharing)\\b))[A-Z_]\\w*(?:\\s*\\.\\s*[A-Z_]\\w*)*\\b(?:\\s*(?:\\[\\s*\\]|<(?:[^<>]|<(?:[^<>]|<[^<>]*>)*>)*>))*(?=\\s*\\w+\\s*[;=,(){:])';
  const definition_24 = '(\\btrigger\\s+)\\w+\\b';
  const definition_8 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_9 = '\\b(?:false|true)\\b';
  const definition_10 = '(?:\\B\\.\\d+|\\b\\d+(?:\\.\\d+|L)?)\\b';
  const definition_11 =
      '[!=](?:==?)?|\\?\\.?|&&|\\|\\||--|\\+\\+|[-+*/^&|]=?|:|<<?=?|>{1,3}=?';
  const definition_12 = '[()\\[\\]{};,.]';
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    aliases: ['language-sql'],
    inside: 'sql',
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['punctuation'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_28, caseSensitive: false),
    lookbehind: true,
    inside: definition_29,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_30, caseSensitive: false),
    lookbehind: true,
    inside: definition_29,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_31, caseSensitive: false),
    inside: definition_29,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    lookbehind: true,
    aliases: ['class-name'],
  );
  definition_29.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_32))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_13,
      definition_14,
    ],
    'string': [definition_2],
    'sql': [definition_3],
    'annotation': [definition_4],
    'class-name': [
      definition_21,
      definition_22,
      definition_23,
    ],
    'trigger': [definition_6],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'function': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'apex',
    definition_0,
    requiredDependencies: ['clike', 'sql'],
  );
}

final languageApex = _create();
