// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_15 = Grammar();
  final definition_17 = Grammar();
  const definition_13 = '%%.*';
  const definition_14 =
      '^([ \\t]*(?:classDef|linkStyle|style)[ \\t]+[\\w\$-]+[ \\t]+)\\w.*[^\\s;]';
  const definition_32 = '\\b\\w[\\w-]*(?=[ \\t]*:)';
  const definition_33 = ':';
  const definition_34 = ',';
  const definition_16 =
      '([^<>ox.=-])(?:-[-.]|==)(?![<>ox.=-])[ \\t]*(?:"[^"\\r\\n]*"|[^\\s".=-](?:[^\\r\\n.=-]*[^\\s.=-])?)[ \\t]*(?:\\.+->?|--+[->]|==+[=>])(?![<>ox.=-])';
  const definition_45 = '(?:\\.+->?|--+[->]|==+[=>])\$';
  const definition_46 = '^([\\s\\S]{2}[ \\t]*)\\S(?:[\\s\\S]*\\S)?';
  const definition_47 = '^\\S+';
  const definition_38 =
      '(^|[^{}|o.-])[|}][|o](?:--|\\.\\.)[|o][|{](?![{}|o.-])';
  const definition_40 =
      '(^|[^<>ox.=-])(?:[<ox](?:==+|--+|-\\.*-)[>ox]?|(?:==+|--+|-\\.*-)[>ox]|===+|---+|-\\.+-)(?![<>ox.=-])';
  const definition_41 =
      '(^|[^<>()x-])(?:--?(?:>>|[x>)])(?![<>()x])|(?:<<|[x<(])--?(?!-))';
  const definition_42 =
      '(^|[^<>|*o.-])(?:[*o]--|--[*o]|<\\|?(?:--|\\.\\.)|(?:--|\\.\\.)\\|?>|--|\\.\\.)(?![<>|*o.-])';
  const definition_22 = '(^|[^|<])\\|(?:[^\\r\\n"|]|"[^"\\r\\n]*")+\\|';
  const definition_24 =
      '(?:[(\\[{]+|\\b>)(?:[^\\r\\n"()\\[\\]{}]|"[^"\\r\\n]*")+(?:[)\\]}]+|>)';
  const definition_26 = '"[^"\\r\\n]*"';
  const definition_27 =
      '<<(?:abstract|choice|enumeration|fork|interface|join|service)>>|\\[\\[(?:choice|fork|join)\\]\\]';
  const definition_43 =
      '(^[ \\t]*)(?:action|callback|class|classDef|classDiagram|click|direction|erDiagram|flowchart|gantt|gitGraph|graph|journey|link|linkStyle|pie|requirementDiagram|sequenceDiagram|stateDiagram|stateDiagram-v2|style|subgraph)(?![\\w\$-])';
  const definition_44 =
      '(^[ \\t]*)(?:activate|alt|and|as|autonumber|deactivate|else|end(?:[ \\t]+note)?|loop|opt|par|participant|rect|state|note[ \\t]+(?:over|(?:left|right)[ \\t]+of))(?![\\w\$-])';
  const definition_10 = '#[a-z0-9]+;';
  const definition_31 = '(\\w[ \\t]*)&(?=[ \\t]*\\w)|:::|:';
  const definition_12 = '[(){};]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14, multiLine: true),
    lookbehind: true,
    inside: definition_15,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    greedy: true,
    inside: definition_17,
    global: true,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_45),
    aliases: ['operator'],
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_46),
    lookbehind: true,
    aliases: ['property'],
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_47),
    aliases: ['arrow', 'operator'],
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['string'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    aliases: ['important'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_43, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_44, caseSensitive: false, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
  );
  definition_15.addAllTokens({
    'property': [GrammarToken(pattern: RegExp(definition_32))],
    'operator': [GrammarToken(pattern: RegExp(definition_33))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_17.addAllTokens({
    'arrow': [definition_35],
    'label': [definition_36],
    'arrow-head': [definition_37],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'style': [definition_2],
    'inter-arrow-label': [definition_3],
    'arrow': [
      definition_18,
      definition_19,
      definition_20,
      definition_21,
    ],
    'label': [definition_5],
    'text': [definition_6],
    'string': [definition_7],
    'annotation': [definition_8],
    'keyword': [
      definition_29,
      definition_30,
    ],
    'entity': [GrammarToken(pattern: RegExp(definition_10))],
    'operator': [definition_11],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'mermaid',
    definition_0,
  );
}

final languageMermaid = _create();
