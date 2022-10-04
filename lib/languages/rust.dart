// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_28 = Grammar();
  final definition_30 = Grammar();
  final definition_54 = Grammar();
  final definition_46 = Grammar();
  const definition_47 =
      '(^|[^\\\\])\\/\\*(?:[^*/]|\\*(?!\\/)|\\/(?!\\*)|\\/\\*(?:[^*/]|\\*(?!\\/)|\\/(?!\\*)|\\/\\*(?:[^*/]|\\*(?!\\/)|\\/(?!\\*)|\\/\\*(?:[^*/]|\\*(?!\\/)|\\/(?!\\*)|[^\\s\\S])*\\*\\/)*\\*\\/)*\\*\\/)*\\*\\/';
  const definition_48 = '(^|[^\\\\:])\\/\\/.*';
  const definition_24 =
      'b?"(?:\\\\[\\s\\S]|[^\\\\"])*"|b?r(#*)"(?:[^"]|"(?!\\1))*"\\1';
  const definition_25 =
      'b?\'(?:\\\\(?:x[0-7][\\da-fA-F]|u\\{(?:[\\da-fA-F]_*){1,6}\\}|.)|[^\\\\\\r\\n\\t\'])\'';
  const definition_26 = '#!?\\[(?:[^\\[\\]"]|"(?:\\\\[\\s\\S]|[^\\\\"])*")*\\]';
  const definition_29 =
      '([=(,:]\\s*|\\bmove\\s*)\\|[^|]*\\||\\|[^|]*\\|(?=\\s*(?:\\{|->))';
  const definition_56 = '^\\||\\|\$';
  const definition_31 = '\'\\w+';
  const definition_33 = '(\\\$\\w+:)[a-z]+';
  const definition_8 = '\\\$\\w+';
  const definition_35 = '(\\bfn\\s+)\\w+';
  const definition_37 = '(\\b(?:enum|struct|trait|type|union)\\s+)\\w+';
  const definition_51 = '(\\b(?:crate|mod)\\s+)[a-z][a-z_\\d]*';
  const definition_53 =
      '(\\b(?:crate|self|super)\\s*)::\\s*[a-z][a-z_\\d]*\\b(?:\\s*::(?:\\s*[a-z][a-z_\\d]*\\s*::)*)?';
  const definition_55 = '::';
  const definition_41 =
      '\\b(?:Self|abstract|as|async|await|become|box|break|const|continue|crate|do|dyn|else|enum|extern|final|fn|for|if|impl|in|let|loop|macro|match|mod|move|mut|override|priv|pub|ref|return|self|static|struct|super|trait|try|type|typeof|union|unsafe|unsized|use|virtual|where|while|yield)\\b';
  const definition_42 =
      '\\b(?:bool|char|f(?:32|64)|[ui](?:8|16|32|64|128|size)|str)\\b';
  const definition_13 = '\\b[a-z_]\\w*(?=\\s*(?:::\\s*<|\\())';
  const definition_43 = '\\b\\w+!';
  const definition_15 = '\\b[A-Z_][A-Z_\\d]+\\b';
  const definition_16 = '\\b[A-Z]\\w*\\b';
  const definition_45 =
      '(?:\\b[a-z][a-z_\\d]*\\s*::\\s*)*\\b[a-z][a-z_\\d]*\\s*::(?!\\s*<)';
  const definition_18 =
      '\\b(?:0x[\\dA-Fa-f](?:_?[\\dA-Fa-f])*|0o[0-7](?:_?[0-7])*|0b[01](?:_?[01])*|(?:(?:\\d(?:_?\\d)*)?\\.)?\\d(?:_?\\d)*(?:[Ee][+-]?\\d+)?)(?:_?(?:f32|f64|[iu](?:8|16|32|64|size)?))?\\b';
  const definition_19 = '\\b(?:false|true)\\b';
  const definition_20 = '->|\\.\\.=|\\.{1,3}|::|[{}[\\];(),:]';
  const definition_21 = '[-+*\\/%!^]=?|=[=>]?|&[&=]?|\\|[|=]?|<<?=?|>>?=?|[@?]';
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_47),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_48),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    aliases: ['attr-name'],
    inside: definition_28,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    greedy: true,
    inside: definition_30,
    global: true,
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_56),
    aliases: ['punctuation'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_31),
    aliases: ['symbol'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    aliases: ['class-name'],
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
    aliases: ['namespace'],
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_53),
    lookbehind: true,
    aliases: ['namespace'],
    inside: definition_54,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_43),
    aliases: ['property'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_45),
    inside: definition_46,
  );
  definition_30.rest = 'rust';
  definition_28.addAllTokens({
    'string': [definition_2],
  });
  definition_30.addAllTokens({
    'closure-punctuation': [definition_49],
  });
  definition_54.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_55))],
  });
  definition_46.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_55))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_22,
      definition_23,
    ],
    'string': [definition_2],
    'char': [definition_3],
    'attribute': [definition_4],
    'closure-params': [definition_5],
    'lifetime-annotation': [definition_6],
    'fragment-specifier': [definition_7],
    'variable': [GrammarToken(pattern: RegExp(definition_8))],
    'function-definition': [definition_9],
    'type-definition': [definition_10],
    'module-declaration': [
      definition_39,
      definition_40,
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_41)),
      GrammarToken(pattern: RegExp(definition_42)),
    ],
    'function': [GrammarToken(pattern: RegExp(definition_13))],
    'macro': [definition_14],
    'constant': [GrammarToken(pattern: RegExp(definition_15))],
    'class-name': [GrammarToken(pattern: RegExp(definition_16))],
    'namespace': [definition_17],
    'number': [GrammarToken(pattern: RegExp(definition_18))],
    'boolean': [GrammarToken(pattern: RegExp(definition_19))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
    'operator': [GrammarToken(pattern: RegExp(definition_21))],
  });

  return LanguageProto(
    'rust',
    definition_0,
  );
}

final languageRust = _create();
