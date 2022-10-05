// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '(?:\\B\'|REM)(?:[^\\n\\r]*)';
  const definition_9 = '"(?:""|[!#\$%&\'()*,\\/:;<=>?^\\w +\\-.])*"';
  const definition_3 =
      '\\B#[0-9A-F]+|\\B`[01]+|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:E[+-]?\\d+)?';
  const definition_4 =
      '\\b(?:BEEP|BPS|CASE|CLEAR|CLK|CLO|CLP|CLS|CLT|CLV|CONT|COPY|ELSE|END|FILE|FILES|FOR|GOSUB|GOTO|GSB|IF|INPUT|KBD|LED|LET|LIST|LOAD|LOCATE|LRUN|NEW|NEXT|OUT|PLAY|POKE|PRINT|PWM|REM|RENUM|RESET|RETURN|RIGHT|RTN|RUN|SAVE|SCROLL|SLEEP|SRND|STEP|STOP|SUB|TEMPO|THEN|TO|UART|VIDEO|WAIT)(?:\\\$|\\b)';
  const definition_5 =
      '\\b(?:ABS|ANA|ASC|BIN|BTN|DEC|END|FREE|HELP|HEX|I2CR|I2CW|IN|INKEY|LEN|LINE|PEEK|RND|SCR|SOUND|STR|TICK|USR|VER|VPEEK|ZER)(?:\\\$|\\b)';
  const definition_6 = '(?:\\B@\\S+)';
  const definition_7 =
      '<[=>]?|>=?|\\|\\||&&|[+\\-*\\/=|&^~!]|\\b(?:AND|NOT|OR)\\b';
  const definition_8 = '[\\[,;:()\\]]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_1, caseSensitive: false))
    ],
    'string': [definition_2],
    'number': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'function': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'label': [GrammarToken(pattern: RegExp(definition_6))],
    'operator': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'ichigojam',
    definition_0,
  );
}

final languageIchigojam = _create();
