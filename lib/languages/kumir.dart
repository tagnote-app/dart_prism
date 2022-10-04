// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_13 = '\\|.*';
  const definition_14 = '#.*';
  const definition_15 = '"[^\\n\\r"]*"|\'[^\\n\\r\']*\'';
  const definition_16 =
      '(^|[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e])(?:да|нет)(?=[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]|\$)';
  const definition_17 =
      '(^|[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e])(?:и|или|не)(?=[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]|\$)';
  const definition_19 =
      '(^|[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e])знач(?=[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]|\$)';
  const definition_27 =
      '(^|[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e])(?:вещ|лит|лог|сим|цел)(?:\\x20*таб)?(?=[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]|\$)';
  const definition_29 =
      '(^|[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e])(?:компл|сканкод|файл|цвет)(?=[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]|\$)';
  const definition_22 =
      '(^|[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e])(?:алг|арг(?:\\x20*рез)?|ввод|ВКЛЮЧИТЬ|вс[её]|выбор|вывод|выход|дано|для|до|дс|если|иначе|исп|использовать|кон(?:(?:\\x20+|_)исп)?|кц(?:(?:\\x20+|_)при)?|надо|нач|нс|нц|от|пауза|пока|при|раза?|рез|стоп|таб|то|утв|шаг)(?=[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]|\$)';
  const definition_23 =
      '(^|[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e])[^\\d\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e][^\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]*(?:\\x20+[^\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]+)*(?=[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]|\$)';
  const definition_24 =
      '(^|[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e])(?:\\B\\\$[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?)(?=[\\s\\x00-\\x1f\\x22-\\x2f\\x3a-\\x3f\\x5b-\\x5e\\x60\\x7b-\\x7e]|\$)';
  const definition_11 = ':=|[(),:;\\[\\]]';
  const definition_25 = '\\*\\*?|<[=>]?|>=?|[-+/=]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_13),
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    aliases: ['builtin'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    aliases: ['important'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_25),
    aliases: ['operator'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'prolog': [definition_2],
    'string': [definition_3],
    'boolean': [definition_4],
    'operator-word': [definition_5],
    'system-variable': [definition_6],
    'type': [
      definition_20,
      definition_21,
    ],
    'keyword': [definition_8],
    'name': [definition_9],
    'number': [definition_10],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
    'operator-char': [definition_12],
  });

  return LanguageProto(
    'kumir',
    definition_0,
    aliases: ['kum'],
  );
}

final languageKumir = _create();
