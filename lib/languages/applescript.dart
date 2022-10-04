// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_8 =
      '\\(\\*(?:\\(\\*(?:[^*]|\\*(?!\\)))*\\*\\)|(?!\\(\\*)[\\s\\S])*?\\*\\)';
  const definition_9 = '--.+';
  const definition_10 = '#.+';
  const definition_2 = '"(?:\\\\.|[^"\\\\\\r\\n])*"';
  const definition_3 = '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e-?\\d+)?\\b';
  const definition_11 = '[&=≠≤≥*+\\-\\/÷^]|[<>]=?';
  const definition_12 =
      '\\b(?:(?:begin|end|start)s? with|(?:contains?|(?:does not|doesn\'t) contain)|(?:is|isn\'t|is not) (?:contained by|in)|(?:(?:is|isn\'t|is not) )?(?:greater|less) than(?: or equal)?(?: to)?|(?:comes|(?:does not|doesn\'t) come) (?:after|before)|(?:is|isn\'t|is not) equal(?: to)?|(?:(?:does not|doesn\'t) equal|equal to|equals|is not|isn\'t)|(?:a )?(?:ref(?: to)?|reference to)|(?:and|as|div|mod|not|or))\\b';
  const definition_5 =
      '\\b(?:about|above|after|against|apart from|around|aside from|at|back|before|beginning|behind|below|beneath|beside|between|but|by|considering|continue|copy|does|eighth|else|end|equal|error|every|exit|false|fifth|first|for|fourth|from|front|get|given|global|if|ignoring|in|instead of|into|is|it|its|last|local|me|middle|my|ninth|of|on|onto|out of|over|prop|property|put|repeat|return|returning|second|set|seventh|since|sixth|some|tell|tenth|that|the|then|third|through|thru|timeout|times|to|transaction|true|try|until|where|while|whose|with|without)\\b';
  const definition_6 =
      '\\b(?:POSIX file|RGB color|alias|application|boolean|centimeters|centimetres|class|constant|cubic centimeters|cubic centimetres|cubic feet|cubic inches|cubic meters|cubic metres|cubic yards|date|degrees Celsius|degrees Fahrenheit|degrees Kelvin|feet|file|gallons|grams|inches|integer|kilograms|kilometers|kilometres|list|liters|litres|meters|metres|miles|number|ounces|pounds|quarts|real|record|reference|script|square feet|square kilometers|square kilometres|square meters|square metres|square miles|square yards|text|yards)\\b';
  const definition_7 = '[{}():,¬«»《》]';
  definition_0.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_8)),
      GrammarToken(pattern: RegExp(definition_9)),
      GrammarToken(pattern: RegExp(definition_10)),
    ],
    'string': [GrammarToken(pattern: RegExp(definition_2))],
    'number': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_11)),
      GrammarToken(pattern: RegExp(definition_12)),
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'class-name': [GrammarToken(pattern: RegExp(definition_6))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'applescript',
    definition_0,
  );
}

final languageApplescript = _create();
