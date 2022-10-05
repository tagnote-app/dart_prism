// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_17 = Grammar();
  const definition_1 =
      '\\/\\*[\\s\\S]*?\\*\\/|\\bREM[^;]*;|<\\*(?:[^<*]|\\*(?!>)|<(?!\\*)|<\\*(?:(?!\\*>)[\\s\\S])*\\*>)*\\*>|\\/\\+[\\s\\S]*?\\+\\/';
  const definition_13 =
      '\'(?:\'\'|[^\'\\r\\n])*\'(?!\')|"(?:""|[^"\\r\\n])*"(?!")';
  const definition_3 = '%\\w+';
  const definition_14 = '((?:^|[^\\w-])(?:function|method)\\s+)\\w+';
  const definition_16 =
      '((?:^|[^-\\w])(?:as|catch|class|component|create|extends|global|implements|instance|local|of|property|returns)\\s+)\\w+(?::\\w+)*';
  const definition_20 = ':';
  const definition_6 =
      '\\b(?:abstract|alias|as|catch|class|component|constant|create|declare|else|end-(?:class|evaluate|for|function|get|if|method|set|try|while)|evaluate|extends|for|function|get|global|if|implements|import|instance|library|local|method|null|of|out|peopleCode|private|program|property|protected|readonly|ref|repeat|returns?|set|step|then|throw|to|try|until|value|when(?:-other)?|while)\\b';
  const definition_18 = '\\b(?:and|not|or)\\b';
  const definition_8 = '[_a-z]\\w*(?=\\s*\\()';
  const definition_9 = '\\b(?:false|true)\\b';
  const definition_10 = '\\b\\d+(?:\\.\\d+)?\\b';
  const definition_11 = '<>|[<>]=?|!=|\\*\\*|[-+*/|=@]';
  const definition_12 = '[:.;,()[\\]]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
    inside: definition_17,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    aliases: ['operator'],
  );
  definition_17.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'variable': [GrammarToken(pattern: RegExp(definition_3))],
    'function-definition': [definition_4],
    'class-name': [definition_5],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'operator-keyword': [definition_7],
    'function': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'number': [GrammarToken(pattern: RegExp(definition_10))],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'peoplecode',
    definition_0,
    aliases: ['pcode'],
  );
}

final languagePeoplecode = _create();
