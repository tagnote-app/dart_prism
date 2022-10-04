// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_4 = Grammar();
  final definition_12 = Grammar();
  const definition_3 =
      '(^[ \\t]*)(?:ADD|ARG|CMD|COPY|ENTRYPOINT|ENV|EXPOSE|FROM|HEALTHCHECK|LABEL|MAINTAINER|ONBUILD|RUN|SHELL|STOPSIGNAL|USER|VOLUME|WORKDIR)(?=\\s)(?:\\\\.|[^\\r\\n\\\\])*(?:\\\\\$(?:\\s|#.*\$)*(?![\\s#])(?:\\\\.|[^\\r\\n\\\\])*)*';
  const definition_11 =
      '(^(?:ONBUILD(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n])))?\\w+(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n])))--[\\w-]+=(?:"(?:[^"\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*"|\'(?:[^\'\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*\'|(?!["\'])(?:[^\\s\\\\]|\\\\.)+)(?:(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))--[\\w-]+=(?:"(?:[^"\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*"|\'(?:[^\'\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*\'|(?!["\'])(?:[^\\s\\\\]|\\\\.)+))*';
  const definition_25 = '(^|\\s)--[\\w-]+';
  const definition_17 =
      '"(?:[^"\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*"|\'(?:[^\'\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*\'';
  const definition_27 = '(=)(?!["\'])(?:[^\\s\\\\]|\\\\.)+';
  const definition_10 = '\\\\\$';
  const definition_20 = '=';
  const definition_21 =
      '(^(?:ONBUILD(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n])))?HEALTHCHECK(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))(?:--[\\w-]+=(?:"(?:[^"\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*"|\'(?:[^\'\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*\'|(?!["\'])(?:[^\\s\\\\]|\\\\.)+)(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n])))*)(?:CMD|NONE)\\b';
  const definition_22 =
      '(^(?:ONBUILD(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n])))?FROM(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))(?:--[\\w-]+=(?:"(?:[^"\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*"|\'(?:[^\'\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*\'|(?!["\'])(?:[^\\s\\\\]|\\\\.)+)(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n])))*(?!--)[^ \\t\\\\]+(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n])))AS';
  const definition_23 =
      '(^ONBUILD(?:[ \\t]+(?![ \\t])(?:\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n]))?|\\\\[\\r\\n](?:\\s|\\\\[\\r\\n]|#.*(?!.))*(?![\\s#]|\\\\[\\r\\n])))\\w+';
  const definition_24 = '^\\w+';
  const definition_5 = '(^[ \\t]*)#.*';
  const definition_9 = '\\\$(?:\\w+|\\{[^{}"\'\\\\]*\\})';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_3, caseSensitive: false, multiLine: true),
    lookbehind: true,
    greedy: true,
    inside: definition_4,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: definition_12,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_23, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_5, multiLine: true),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_12.addAllTokens({
    'property': [definition_18],
    'string': [
      definition_8,
      definition_26,
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10, multiLine: true))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
  });
  definition_4.addAllTokens({
    'options': [definition_6],
    'keyword': [
      definition_13,
      definition_14,
      definition_15,
      definition_16,
    ],
    'comment': [definition_2],
    'string': [definition_8],
    'variable': [GrammarToken(pattern: RegExp(definition_9))],
    'operator': [GrammarToken(pattern: RegExp(definition_10, multiLine: true))],
  });
  definition_0.addAllTokens({
    'instruction': [definition_1],
    'comment': [definition_2],
  });

  return LanguageProto(
    'docker',
    definition_0,
    aliases: ['dockerfile'],
  );
}

final languageDocker = _create();
