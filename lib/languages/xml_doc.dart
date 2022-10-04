// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_5 = Grammar();
  final definition_10 = Grammar();
  final definition_17 = Grammar();
  final definition_26 = Grammar();
  final definition_39 = Grammar();
  final definition_28 = Grammar();
  final definition_40 = Grammar();
  final definition_21 = Grammar();
  final definition_23 = Grammar();
  final definition_7 = Grammar();
  const definition_3 = '\\/\\/\\/.*';
  const definition_9 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_16 = '^(<\\/?)[^\\s>\\/]+';
  const definition_24 = '^[^\\s>\\/:]+:';
  const definition_25 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_31 = '^[^\\s=]+';
  const definition_38 = '=[\\s\\S]+';
  const definition_50 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_41 = '^=';
  const definition_54 = '"|\'';
  const definition_27 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_20 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_43 = '^(\\s*)["\']|["\']\$';
  const definition_44 = '&[\\da-z]{1,8};';
  const definition_37 = '&#x?[\\da-f]{1,8};';
  const definition_14 = '^<\\/?|\\/?>\$';
  const definition_22 = '[^\\s>\\/]+';
  const definition_6 = '\'\'\'.*';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_3),
    greedy: true,
    aliases: ['comment'],
    inside: definition_5,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    inside: definition_10,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    inside: definition_17,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
    inside: definition_26,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_38),
    inside: definition_39,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_50),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_41),
    aliases: ['attr-equals'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    lookbehind: true,
    inside: definition_28,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_38),
    inside: definition_40,
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_50),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_57 = GrammarToken(
    pattern: RegExp(definition_41),
    aliases: ['attr-equals'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_20),
    inside: definition_21,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_41),
    aliases: ['attr-equals'],
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_43),
    lookbehind: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_44, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_22),
    inside: definition_23,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_6),
    greedy: true,
    aliases: ['comment'],
    inside: definition_7,
    global: true,
  );
  definition_17.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_39.addAllTokens({
    'value': [definition_46],
    'punctuation': [
      definition_53,
      GrammarToken(pattern: RegExp(definition_54)),
    ],
  });
  definition_26.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_31))],
    'attr-value': [definition_32],
  });
  definition_40.addAllTokens({
    'value': [definition_48],
    'punctuation': [
      definition_57,
      GrammarToken(pattern: RegExp(definition_54)),
    ],
  });
  definition_28.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_31))],
    'attr-value': [definition_33],
  });
  definition_21.addAllTokens({
    'punctuation': [
      definition_34,
      definition_35,
    ],
    'entity': [
      definition_36,
      GrammarToken(pattern: RegExp(definition_37, caseSensitive: false)),
    ],
  });
  definition_23.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_10.addAllTokens({
    'tag': [definition_11],
    'special-attr': [
      definition_18,
      definition_19,
    ],
    'attr-value': [definition_13],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
    'attr-name': [definition_15],
  });
  definition_5.addAllTokens({
    'tag': [definition_8],
  });
  definition_7.addAllTokens({
    'tag': [definition_8],
  });
  definition_0.addAllTokens({
    'slash': [definition_1],
    'tick': [definition_2],
  });

  return LanguageProto(
    'xml-doc',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageXmlDoc = _create();
