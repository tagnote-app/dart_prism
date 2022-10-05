// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  final definition_43 = Grammar();
  final definition_38 = Grammar();
  const definition_30 = '(^|[^\\\\])\\/\\*[\\s\\S]*?\\*\\/';
  const definition_31 = '(^|[^\\\\])#.*';
  const definition_15 =
      '(^|[^"])("""|")(?:\\\\[\\s\\S]|(?!\\2)[^\\\\])*\\2(?!")';
  const definition_41 = '(^|[^\\\\])#[a-z_](?:-?[a-z]|[\\d_])*';
  const definition_42 = '(^|[^\\\\])#\\{[^}]+\\}';
  const definition_47 = '^#\\{|\\}\$';
  const definition_34 = '[\\s\\S]+';
  const definition_35 = '(\'\'\'|\')(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1';
  const definition_36 = '<\\[[\\s\\S]*?\\]>';
  const definition_19 = '\\\\[^\\s,;\\])}]+';
  const definition_37 =
      '\\/\\/(?:\\[[^\\r\\n\\]]*\\]|\\\\.|(?!\\/\\/)[^\\\\\\[])+\\/\\/[gimyu]{0,5}';
  const definition_39 =
      '\\/(?:\\[[^\\r\\n\\]]*\\]|\\\\.|[^/\\\\\\r\\n\\[])+\\/[gimyu]{0,5}';
  const definition_22 =
      '(^|(?!-).)\\b(?:break|case|catch|class|const|continue|default|do|else|extends|fallthrough|finally|for(?: ever)?|function|if|implements|it|let|loop|new|null|otherwise|own|return|super|switch|that|then|this|throw|try|unless|until|var|void|when|while|yield)(?!-)\\b';
  const definition_23 =
      '(^|[^-])\\b(?:(?:delete|require|typeof)!|(?:and|by|delete|export|from|import(?: all)?|in|instanceof|is(?: not|nt)?|not|of|or|til|to|typeof|with|xor)(?!-)\\b)';
  const definition_25 = '(^|[^-])\\b(?:false|no|off|on|true|yes)(?!-)\\b';
  const definition_26 = '(^|(?!\\.&\\.)[^&])&(?!&)\\d*';
  const definition_9 =
      '\\b(?:\\d+~[\\da-z]+|\\d[\\d_]*(?:\\.\\d[\\d_]*)?(?:[a-z]\\w*)?)';
  const definition_10 = '[a-z_](?:-?[a-z]|[\\d_])*';
  const definition_40 = '( )\\.(?= )';
  const definition_29 =
      '\\.(?:[=~]|\\.\\.?)|\\.(?:[&|^]|<<|>>>?)\\.|:(?:=|:=?)|&&|\\|[|>]|<(?:<<?<?|--?!?|~~?!?|[|=?])?|>[>=?]?|-(?:->?|>)?|\\+\\+?|@@?|%%?|\\*\\*?|!(?:~?=|--?>|~?~>)?|~(?:~?>|=)?|==?|\\^\\^?|[\\/?]';
  const definition_12 = '[(){}\\[\\]|.,:;`]';
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
    greedy: true,
    inside: definition_16,
    global: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_41, multiLine: true),
    lookbehind: true,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_42, multiLine: true),
    lookbehind: true,
    inside: definition_43,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_47),
    aliases: ['variable'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_35),
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_36),
    greedy: true,
    global: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_37),
    greedy: true,
    inside: definition_38,
    global: true,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_39),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_22, multiLine: true),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_23, multiLine: true),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_25, multiLine: true),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_26, multiLine: true),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
  );
  definition_43.rest = 'livescript';
  definition_43.addAllTokens({
    'interpolation-punctuation': [definition_45],
  });
  definition_16.addAllTokens({
    'variable': [definition_32],
    'interpolation': [definition_33],
    'string': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_38.addAllTokens({
    'comment': [definition_44],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_13,
      definition_14,
    ],
    'interpolated-string': [definition_2],
    'string': [
      definition_17,
      definition_18,
      GrammarToken(pattern: RegExp(definition_19)),
    ],
    'regex': [
      definition_20,
      definition_21,
    ],
    'keyword': [definition_5],
    'keyword-operator': [definition_6],
    'boolean': [definition_7],
    'argument': [definition_8],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'identifier': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'operator': [
      definition_28,
      GrammarToken(pattern: RegExp(definition_29)),
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'livescript',
    definition_0,
  );
}

final languageLivescript = _create();
