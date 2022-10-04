// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  final definition_39 = Grammar();
  final definition_46 = Grammar();
  const definition_6 = '(\\{literal\\})[\\s\\S]*?(?=\\{\\/literal\\})';
  const definition_7 = '(\\{php\\})[\\s\\S]*?(?=\\{\\/php\\})';
  const definition_10 = '\\{\\*[\\s\\S]*?\\*\\}';
  const definition_12 =
      '\\{(?:[^{}"\']|"(?:\\\\.|[^"\\\\\\r\\n])*"|\'(?:\\\\.|[^\'\\\\\\r\\n])*\'|\\{(?:[^{}"\']|"(?:\\\\.|[^"\\\\\\r\\n])*"|\'(?:\\\\.|[^\'\\\\\\r\\n])*\'|\\{(?:[^{}"\']|"(?:\\\\.|[^"\\\\\\r\\n])*"|\'(?:\\\\.|[^\'\\\\\\r\\n])*\')*\\})*\\})*\\}';
  const definition_38 = '"(?:\\\\.|[^"\\\\\\r\\n])*"';
  const definition_45 = '\\{[^{}]*\\}|`[^`]*`';
  const definition_49 = '^[{`]|[`}]\$';
  const definition_50 = '[\\s\\S]+';
  const definition_44 = '\\\$\\w+';
  const definition_40 = '\'(?:\\\\.|[^\'\\\\\\r\\n])*\'';
  const definition_27 = '(^\\{\\/?)[a-z_]\\w*\\b(?!\\()';
  const definition_28 = '^\\{\\/?|\\}\$';
  const definition_18 =
      '\\b0x[\\dA-Fa-f]+|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[Ee][-+]?\\d+)?';
  const definition_30 = '\\\$(?!\\d)\\w+';
  const definition_31 = '#(?!\\d)\\w+#';
  const definition_41 = '(\\.|->|\\w\\s*=)(?!\\d)\\w+\\b(?!\\()';
  const definition_42 = '(\\[)(?!\\d)\\w+(?=\\])';
  const definition_34 = '(\\|\\s*)@?[a-z_]\\w*|\\b[a-z_]\\w*(?=\\()';
  const definition_21 = '\\b[a-z_]\\w*(?=\\s*=)';
  const definition_22 = '\\b(?:false|no|off|on|true|yes)\\b';
  const definition_23 = '[\\[\\](){}.,:`]|->';
  const definition_35 = '[+\\-*\\/%]|==?=?|[!<>]=?|&&|\\|\\|?';
  const definition_36 = '\\bis\\s+(?:not\\s+)?(?:div|even|odd)(?:\\s+by)?\\b';
  const definition_37 = '\\b(?:and|eq|gt?e|gt|lt?e|lt|mod|neq?|not|or)\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_6),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_7),
    lookbehind: true,
    greedy: true,
    aliases: ['php', 'language-php'],
    inside: 'php',
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_38),
    greedy: true,
    inside: definition_39,
    global: true,
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_45),
    inside: definition_46,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_49),
    aliases: ['punctuation'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_50),
    inside: definition_13,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_40),
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_28),
    greedy: true,
    aliases: ['punctuation'],
    global: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_34, caseSensitive: false),
    lookbehind: true,
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_46.addAllTokens({
    'interpolation-punctuation': [definition_47],
    'expression': [definition_48],
  });
  definition_39.addAllTokens({
    'interpolation': [definition_43],
    'variable': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_13.addAllTokens({
    'string': [
      definition_25,
      definition_26,
    ],
    'keyword': [definition_16],
    'delimiter': [definition_17],
    'number': [GrammarToken(pattern: RegExp(definition_18))],
    'variable': [
      GrammarToken(pattern: RegExp(definition_30)),
      GrammarToken(pattern: RegExp(definition_31)),
      definition_32,
      definition_33,
    ],
    'function': [definition_20],
    'attr-name': [
      GrammarToken(pattern: RegExp(definition_21, caseSensitive: false))
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_22))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_23))],
    'operator': [
      GrammarToken(pattern: RegExp(definition_35)),
      GrammarToken(pattern: RegExp(definition_36)),
      GrammarToken(pattern: RegExp(definition_37)),
    ],
  });
  definition_0.addAllTokens({
    'ignore-literal': [definition_1],
    'embedded-php': [definition_2],
    'smarty-comment': [definition_3],
    'smarty': [definition_4],
  });

  return LanguageProto(
    'smarty',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageSmarty = _create();
