// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_19 = Grammar();
  final definition_32 = Grammar();
  final definition_22 = Grammar();
  const definition_26 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_27 = '(^|[^\\\\:])\\/\\/.*';
  const definition_16 = '#!.+';
  const definition_18 =
      '"""(?:[^\\\\]|\\\\[\\s\\S])*?"""|(["/])(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1|\\\$\\/(?:[^/\$]|\\\$(?:[/\$]|(?![/\$]))|\\/(?!\\\$))*\\/\\\$';
  const definition_31 =
      '((?:^|[^\\\\\$])(?:\\\\{2})*)\\\$(?:\\w+|\\{[^{}]*\\})';
  const definition_35 = '^\\\$\\{?|\\}\$';
  const definition_29 = '[\\s\\S]+';
  const definition_20 =
      '\'\'\'(?:[^\\\\]|\\\\[\\s\\S])*?\'\'\'|\'(?:\\\\.|[^\\\\\'\\r\\n])*\'';
  const definition_21 =
      '(\\b(?:class|extends|implements|instanceof|interface|new|trait)\\s+|\\bcatch\\s+\\()[\\w.\\\\]+';
  const definition_30 = '[.\\\\]';
  const definition_6 =
      '\\b(?:apply|def|dependencies|else|if|implementation|import|plugin|plugins|project|repositories|repository|sourceSets|tasks|val)\\b';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_23 = '(^|[^.])@\\w+';
  const definition_9 = '\\b\\w+(?=\\()';
  const definition_10 =
      '\\b(?:0b[01_]+|0x[\\da-f_]+(?:\\.[\\da-f_p\\-]+)?|[\\d_]+(?:\\.[\\d_]+)?(?:e[+-]?\\d+)?)[glidf]?\\b';
  const definition_25 =
      '(^|[^.])(?:~|==?~?|\\?[.:]?|\\*(?:[.=]|\\*=?)?|\\.[@&]|\\.\\.<|\\.\\.(?!\\.)|-[-=>]?|\\+[+=]?|!=?|<(?:<=?|=>?)?|>(?:>>?=?|=)?|&[&=]?|\\|[|=]?|\\/=?|\\^=?|%=?)';
  const definition_12 =
      '\\b(?:and|cleanup|expect|given|setup|then|when|where):';
  const definition_13 = '\\.+|[{}[\\];(),:\$]';
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['comment'],
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    inside: definition_19,
    global: true,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    inside: definition_32,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_35),
    aliases: ['punctuation'],
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_29),
    inside: 'gradle',
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
    inside: definition_22,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  definition_32.addAllTokens({
    'interpolation-punctuation': [definition_33],
    'expression': [definition_34],
  });
  definition_19.addAllTokens({
    'interpolation': [definition_28],
    'string': [GrammarToken(pattern: RegExp(definition_29))],
  });
  definition_22.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_30))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_14,
      definition_15,
    ],
    'shebang': [definition_2],
    'interpolation-string': [definition_3],
    'string': [definition_4],
    'class-name': [definition_5],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'annotation': [definition_8],
    'function': [GrammarToken(pattern: RegExp(definition_9))],
    'number': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'operator': [definition_11],
    'spock-block': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'gradle',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageGradle = _create();
