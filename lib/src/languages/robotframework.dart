// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_9 = Grammar();
  final definition_41 = Grammar();
  final definition_43 = Grammar();
  final definition_11 = Grammar();
  final definition_44 = Grammar();
  final definition_13 = Grammar();
  final definition_47 = Grammar();
  final definition_50 = Grammar();
  final definition_51 = Grammar();
  final definition_15 = Grammar();
  final definition_52 = Grammar();
  final definition_17 = Grammar();
  final definition_53 = Grammar();
  const definition_7 =
      '^ ?\\*{3}[ \\t]*Settings[ \\t]*\\*{3}(?:.|[\\r\\n](?!\\*{3}))*';
  const definition_35 = '^ ?\\*{3}.+?\\*{3}';
  const definition_37 =
      '([\\r\\n] ?Documentation(?: {2}|\\t)[ \\t]*)(?![ \\t]|#)(?:.|(?:\\r\\n?|\\n)[ \\t]*\\.{3})+';
  const definition_39 = '([\\r\\n] ?)(?!\\.{3}|#)(?:\\S(?:[ \\t]\\S)*)+';
  const definition_40 = '([\\r\\n](?: {2}|\\t)[ \\t]*)\\[[-\\w]+\\]';
  const definition_54 = '\\[|\\]';
  const definition_42 =
      '((?:^|[^\\\\])(?:\\\\{2})*)[\$@&%]\\{(?:[^{}\\r\\n]|\\{[^{}\\r\\n]*\\})*\\}';
  const definition_55 = '^[\$@&%]\\{|\\}\$';
  const definition_18 = '(^[ \\t]*| {2}|\\t)#.*';
  const definition_10 =
      '^ ?\\*{3}[ \\t]*Variables[ \\t]*\\*{3}(?:.|[\\r\\n](?!\\*{3}))*';
  const definition_12 =
      '^ ?\\*{3}[ \\t]*Test Cases[ \\t]*\\*{3}(?:.|[\\r\\n](?!\\*{3}))*';
  const definition_45 = '([\\r\\n] ?)(?!#)(?:\\S(?:[ \\t]\\S)*)+';
  const definition_48 =
      '(\\[Documentation\\](?: {2}|\\t)[ \\t]*)(?![ \\t]|#)(?:.|(?:\\r\\n?|\\n)[ \\t]*\\.{3})+';
  const definition_49 =
      '([\\r\\n](?: {2}|\\t)[ \\t]*)(?!\\[|\\.{3}|#)(?:\\S(?:[ \\t]\\S)*)+';
  const definition_14 =
      '^ ?\\*{3}[ \\t]*Keywords[ \\t]*\\*{3}(?:.|[\\r\\n](?!\\*{3}))*';
  const definition_16 =
      '^ ?\\*{3}[ \\t]*Tasks[ \\t]*\\*{3}(?:.|[\\r\\n](?!\\*{3}))*';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_7, caseSensitive: false, multiLine: true),
    aliases: ['section'],
    inside: definition_9,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_35),
    aliases: ['keyword'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    aliases: ['string'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
    inside: definition_41,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
    inside: definition_43,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_18, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10, caseSensitive: false, multiLine: true),
    aliases: ['section'],
    inside: definition_11,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_35),
    aliases: ['keyword'],
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
    inside: definition_44,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false, multiLine: true),
    aliases: ['section'],
    inside: definition_13,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_35),
    aliases: ['keyword'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
    aliases: ['function'],
    inside: definition_47,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_48),
    lookbehind: true,
    aliases: ['string'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    inside: definition_50,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
    inside: definition_51,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false, multiLine: true),
    aliases: ['section'],
    inside: definition_15,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_35),
    aliases: ['keyword'],
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
    inside: definition_52,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false, multiLine: true),
    aliases: ['section'],
    inside: definition_17,
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_35),
    aliases: ['keyword'],
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
    inside: definition_53,
  );
  definition_41.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_54))],
  });
  definition_43.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_55))],
  });
  definition_9.addAllTokens({
    'section-header': [definition_19],
    'documentation': [definition_20],
    'property': [definition_21],
    'tag': [definition_22],
    'variable': [definition_23],
    'comment': [definition_6],
  });
  definition_44.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_54))],
  });
  definition_11.addAllTokens({
    'section-header': [definition_24],
    'tag': [definition_25],
    'variable': [definition_23],
    'comment': [definition_6],
  });
  definition_47.addAllTokens({
    'variable': [definition_23],
  });
  definition_50.addAllTokens({
    'variable': [definition_23],
  });
  definition_51.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_54))],
  });
  definition_13.addAllTokens({
    'section-header': [definition_26],
    'test-name': [definition_27],
    'documentation': [definition_28],
    'property': [definition_29],
    'tag': [definition_30],
    'variable': [definition_23],
    'comment': [definition_6],
  });
  definition_52.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_54))],
  });
  definition_15.addAllTokens({
    'section-header': [definition_31],
    'keyword-name': [definition_27],
    'documentation': [definition_28],
    'property': [definition_29],
    'tag': [definition_32],
    'variable': [definition_23],
    'comment': [definition_6],
  });
  definition_53.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_54))],
  });
  definition_17.addAllTokens({
    'section-header': [definition_33],
    'task-name': [definition_27],
    'documentation': [definition_28],
    'property': [definition_29],
    'tag': [definition_34],
    'variable': [definition_23],
    'comment': [definition_6],
  });
  definition_0.addAllTokens({
    'settings': [definition_1],
    'variables': [definition_2],
    'test-cases': [definition_3],
    'keywords': [definition_4],
    'tasks': [definition_5],
    'comment': [definition_6],
  });

  return LanguageProto(
    'robotframework',
    definition_0,
    aliases: ['robot'],
  );
}

final languageRobotframework = _create();
