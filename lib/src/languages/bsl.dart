// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\/\\/.*';
  const definition_18 = '"(?:[^"]|"")*"(?!")';
  const definition_19 = '\'(?:[^\'\\r\\n\\\\]|\\\\.)*\'';
  const definition_20 =
      '(^|[^\\w\\u0400-\\u0484\\u0487-\\u052f\\u1d2b\\u1d78\\u2de0-\\u2dff\\ua640-\\ua69f\\ufe2e\\ufe2f])(?:пока|для|новый|прервать|попытка|исключение|вызватьисключение|иначе|конецпопытки|неопределено|функция|перем|возврат|конецфункции|если|иначеесли|процедура|конецпроцедуры|тогда|знач|экспорт|конецесли|из|каждого|истина|ложь|по|цикл|конеццикла|выполнить)(?![\\w\\u0400-\\u0484\\u0487-\\u052f\\u1d2b\\u1d78\\u2de0-\\u2dff\\ua640-\\ua69f\\ufe2e\\ufe2f])';
  const definition_21 =
      '\\b(?:break|do|each|else|elseif|enddo|endfunction|endif|endprocedure|endtry|except|execute|export|false|for|function|if|in|new|null|procedure|raise|return|then|to|true|try|undefined|val|var|while)\\b';
  const definition_12 =
      '(^(?=\\d)|[^\\w\\u0400-\\u0484\\u0487-\\u052f\\u1d2b\\u1d78\\u2de0-\\u2dff\\ua640-\\ua69f\\ufe2e\\ufe2f])(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:E[+-]?\\d+)?';
  const definition_13 = '[<>+\\-*/]=?|[%=]';
  const definition_22 =
      '(^|[^\\w\\u0400-\\u0484\\u0487-\\u052f\\u1d2b\\u1d78\\u2de0-\\u2dff\\ua640-\\ua69f\\ufe2e\\ufe2f])(?:и|или|не)(?![\\w\\u0400-\\u0484\\u0487-\\u052f\\u1d2b\\u1d78\\u2de0-\\u2dff\\ua640-\\ua69f\\ufe2e\\ufe2f])';
  const definition_23 = '\\b(?:and|not|or)\\b';
  const definition_6 = '\\(\\.|\\.\\)|[()\\[\\]:;,.]';
  const definition_24 = '^([ \\t]*)&.*';
  const definition_26 = '^([ \\t]*)#.*';
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_19),
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_20, caseSensitive: false),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_23, caseSensitive: false),
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_24, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['important'],
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_26, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['important'],
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [
      definition_8,
      definition_9,
    ],
    'keyword': [
      definition_10,
      definition_11,
    ],
    'number': [definition_4],
    'operator': [
      GrammarToken(pattern: RegExp(definition_13)),
      definition_14,
      definition_15,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_6))],
    'directive': [
      definition_16,
      definition_17,
    ],
  });

  return LanguageProto(
    'bsl',
    definition_0,
    aliases: ['oscript'],
  );
}

final languageBsl = _create();
