// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_5 = Grammar();
  final definition_13 = Grammar();
  final definition_27 = Grammar();
  final definition_46 = Grammar();
  final definition_29 = Grammar();
  final definition_47 = Grammar();
  final definition_49 = Grammar();
  final definition_31 = Grammar();
  final definition_51 = Grammar();
  final definition_9 = Grammar();
  const definition_4 =
      '\\{(?:[^{}\']|\'(?![{},\'])|\'\'|\'[{}:=,](?:[^\']|\'\')*\'(?!\')|\\{(?:[^{}\']|\'(?![{},\'])|\'\'|\'[{}:=,](?:[^\']|\'\')*\'(?!\')|\\{(?:[^{}\']|\'(?![{},\'])|\'\'|\'[{}:=,](?:[^\']|\'\')*\'(?!\')|\\{(?:[^{}\']|\'(?![{},\'])|\'\'|\'[{}:=,](?:[^\']|\'\')*\'(?!\')|\\{(?:[^{}\']|\'(?![{},\'])|\'\'|\'[{}:=,](?:[^\']|\'\')*\'(?!\')|\\{(?:[^{}\']|\'(?![{},\'])|\'\'|\'[{}:=,](?:[^\']|\'\')*\'(?!\')|\\{(?:[^{}\']|\'(?![{},\'])|\'\'|\'[{}:=,](?:[^\']|\'\')*\'(?!\')|\\{(?:[^{}\']|\'(?![{},\'])|\'\'|\'[{}:=,](?:[^\']|\'\')*\'(?!\')|[])*\\})*\\})*\\})*\\})*\\})*\\})*\\})*\\}';
  const definition_12 = '^(\\{)[\\s\\S]+(?=\\}\$)';
  const definition_25 = '^(\\s*)[^{}:=,\\s]+';
  const definition_26 = '^(\\s*,\\s*choice\\s*,\\s*)\\S(?:[\\s\\S]*\\S)?';
  const definition_38 = '\\|';
  const definition_45 =
      '^(\\s*)[+-]?(?:\\d+(?:\\.\\d*)?|\\u221e)\\s*[<#\\u2264]';
  const definition_52 = '[<#\\u2264]';
  const definition_53 = '\\S+';
  const definition_28 =
      '^(\\s*,\\s*(?:plural|selectordinal)\\s*,\\s*)\\S(?:[\\s\\S]*\\S)?';
  const definition_41 = '^offset:\\s*\\d+';
  const definition_14 = '.';
  const definition_48 = '=\\d+|[^{}:=,\\s]+';
  const definition_56 = '^(?:few|many|one|other|two|zero)\$';
  const definition_30 = '^(\\s*,\\s*select\\s*,\\s*)\\S(?:[\\s\\S]*\\S)?';
  const definition_50 = '[^{}:=,\\s]+';
  const definition_57 = '^other\$';
  const definition_19 = '\\b(?:choice|plural|select|selectordinal)\\b';
  const definition_32 = '\\b(?:date|duration|number|ordinal|spellout|time)\\b';
  const definition_34 = '(,\\s*)::[^{}:=,\\s]+';
  const definition_35 =
      '(,\\s*)(?:currency|full|integer|long|medium|percent|short)(?=\\s*\$)';
  const definition_36 =
      '(^\\s*,\\s*(?=\\S))(?:[^{}\']|\'[^\']*\'|\\{(?:(?:[^{}\']|\'[^\']*\'|\\{(?:(?:[^{}\']|\'[^\']*\'|\\{(?:(?:[^{}\']|\'[^\']*\'|\\{(?:(?:[^{}\']|\'[^\']*\'|\\{(?:(?:[^{}\']|\'[^\']*\'|\\{(?:(?:[^{}\']|\'[^\']*\'|\\{(?:(?:[^{}\']|\'[^\']*\'|\\{(?:[])?\\})+)?\\})+)?\\})+)?\\})+)?\\})+)?\\})+)?\\})+)?\\})+\$';
  const definition_24 = ',';
  const definition_6 = '\'\'';
  const definition_8 = '\'[{}:=,](?:[^\']|\'\')*\'(?!\')';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4),
    greedy: true,
    inside: definition_5,
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    inside: definition_13,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
    inside: definition_27,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
    inside: definition_46,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    inside: definition_29,
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_4),
    inside: definition_47,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    inside: 'icu-message-format',
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['punctuation'],
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_48),
    inside: definition_49,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: definition_31,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_50),
    inside: definition_51,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_32),
    aliases: ['keyword'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
    aliases: ['string'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['operator'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_6),
    greedy: true,
    aliases: ['operator'],
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    inside: definition_9,
    global: true,
  );
  definition_27.rest = 'icu-message-format';
  definition_46.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_52))],
    'number': [GrammarToken(pattern: RegExp(definition_53))],
  });
  definition_27.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_38))],
    'range': [definition_39],
  });
  definition_47.addAllTokens({
    'message': [definition_54],
    'message-delimiter': [definition_55],
  });
  definition_49.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_56))],
  });
  definition_29.addAllTokens({
    'offset': [GrammarToken(pattern: RegExp(definition_41))],
    'nested-message': [definition_42],
    'selector': [definition_43],
  });
  definition_51.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_57))],
  });
  definition_31.addAllTokens({
    'nested-message': [definition_42],
    'selector': [definition_44],
  });
  definition_13.addAllTokens({
    'argument-name': [definition_15],
    'choice-style': [definition_16],
    'plural-style': [definition_17],
    'select-style': [definition_18],
    'keyword': [GrammarToken(pattern: RegExp(definition_19))],
    'arg-type': [definition_20],
    'arg-skeleton': [definition_21],
    'arg-style': [definition_22],
    'arg-style-text': [definition_23],
    'punctuation': [GrammarToken(pattern: RegExp(definition_24))],
  });
  definition_5.addAllTokens({
    'content': [definition_10],
    'argument-delimiter': [definition_11],
  });
  definition_9.addAllTokens({
    'escape': [definition_2],
  });
  definition_0.addAllTokens({
    'argument': [definition_1],
    'escape': [definition_2],
    'string': [definition_3],
  });

  return LanguageProto(
    'icu-message-format',
    definition_0,
  );
}

final languageIcuMessageFormat = _create();
