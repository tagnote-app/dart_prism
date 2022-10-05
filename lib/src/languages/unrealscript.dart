// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_17 = Grammar();
  const definition_1 = '\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_13 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_14 =
      '(\\b(?:(?:autoexpand|hide|show)categories|var)\\s*\\()[^()]+(?=\\))';
  const definition_16 =
      '(\\w\\s*)<\\s*\\w+\\s*=[^<>|=\\r\\n]+(?:\\|\\s*\\w+\\s*=[^<>|=\\r\\n]+)*>';
  const definition_20 = '\\b\\w+(?=\\s*=)';
  const definition_21 = '=';
  const definition_22 = '[<>|]';
  const definition_18 = '`\\w+';
  const definition_19 =
      '(\\b(?:class|enum|extends|interface|state(?:\\(\\))?|struct|within)\\s+)\\w+';
  const definition_7 =
      '\\b(?:abstract|actor|array|auto|autoexpandcategories|bool|break|byte|case|class|classgroup|client|coerce|collapsecategories|config|const|continue|default|defaultproperties|delegate|dependson|deprecated|do|dontcollapsecategories|editconst|editinlinenew|else|enum|event|exec|export|extends|final|float|for|forcescriptorder|foreach|function|goto|guid|hidecategories|hidedropdown|if|ignores|implements|inherits|input|int|interface|iterator|latent|local|material|name|native|nativereplication|noexport|nontransient|noteditinlinenew|notplaceable|operator|optional|out|pawn|perobjectconfig|perobjectlocalized|placeable|postoperator|preoperator|private|protected|reliable|replication|return|server|showcategories|simulated|singular|state|static|string|struct|structdefault|structdefaultproperties|switch|texture|transient|travel|unreliable|until|var|vector|while|within)\\b';
  const definition_8 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_9 = '\\b(?:false|true)\\b';
  const definition_10 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_11 =
      '>>|<<|--|\\+\\+|\\*\\*|[-+*/~!=<>\$@]=?|&&?|\\|\\|?|\\^\\^?|[?:%]|\\b(?:ClockwiseFrom|Cross|Dot)\\b';
  const definition_12 = '[()[\\]{};,.]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    greedy: true,
    inside: definition_17,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['property'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
  );
  definition_17.addAllTokens({
    'property': [GrammarToken(pattern: RegExp(definition_20))],
    'operator': [GrammarToken(pattern: RegExp(definition_21))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_22))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'category': [definition_3],
    'metadata': [definition_4],
    'macro': [definition_5],
    'class-name': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
    'function': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_9))],
    'number': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'unrealscript',
    definition_0,
    aliases: ['uscript', 'uc'],
  );
}

final languageUnrealscript = _create();
