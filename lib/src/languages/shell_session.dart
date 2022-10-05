// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_4 = Grammar();
  final definition_10 = Grammar();
  const definition_3 =
      '^(?:[^\\s@:\$#%*!/\\\\]+@[^\\r\\n@:\$#%*!/\\\\]+(?::[^\\0-\\x1F\$#%*?"<>:;|]+)?|[/~.][^\\0-\\x1F\$#%*?"<>@:;|]*)?[\$#%](?=\\s)(?:[^\\\\\\r\\n \\t\'"<\$]|[ \\t](?:(?!#)|#.*\$)|\\\\(?:[^\\r]|\\r\\n?)|\\\$(?!\')|<(?!<)|"(?:\\\\[\\s\\S]|\\\$\\([^)]+\\)|\\\$(?!\\()|`[^`]+`|[^"\\\\`\$])*"|\'[^\']*\'|\\\$\'(?:[^\'\\\\]|\\\\[\\s\\S])*\'|<<-?\\s*(["\']?)(\\w+)\\1\\s[\\s\\S]*?[\\r\\n]\\2)+';
  const definition_8 = '^[^#\$%]+';
  const definition_16 = '^[^\\s@:\$#%*!/\\\\]+@[^\\r\\n@:\$#%*!/\\\\]+';
  const definition_17 = ':';
  const definition_18 = '[\\s\\S]+';
  const definition_11 = '(^[\$#%]\\s*)\\S[\\s\\S]*';
  const definition_14 = '^[\$#%]';
  const definition_2 = '.(?:.*(?:[\\r\\n]|.\$))*';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_3, multiLine: true),
    greedy: true,
    inside: definition_4,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_8),
    aliases: ['punctuation'],
    inside: definition_10,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    aliases: ['language-bash'],
    inside: 'bash',
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['important'],
  );
  definition_10.addAllTokens({
    'user': [GrammarToken(pattern: RegExp(definition_16))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_17))],
    'path': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_4.addAllTokens({
    'info': [definition_5],
    'bash': [definition_6],
    'shell-symbol': [definition_7],
  });
  definition_0.addAllTokens({
    'command': [definition_1],
    'output': [GrammarToken(pattern: RegExp(definition_2))],
  });

  return LanguageProto(
    'shell-session',
    definition_0,
    aliases: ['sh-session', 'shellsession'],
    requiredDependencies: ['bash'],
  );
}

final languageShellSession = _create();
