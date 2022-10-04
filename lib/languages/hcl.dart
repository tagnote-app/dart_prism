// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_19 = Grammar();
  final definition_21 = Grammar();
  final definition_17 = Grammar();
  final definition_26 = Grammar();
  const definition_1 = '(?:\\/\\/|#).*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_9 = '<<-?(\\w+\\b)[\\s\\S]*?^[ \\t]*\\1';
  const definition_18 =
      '(?:data|resource)\\s+(?:"(?:\\\\[\\s\\S]|[^\\\\"])*")(?=\\s+"[\\w-]+"\\s+\\{)';
  const definition_27 = '(resource|data|\\s+)(?:"(?:\\\\[\\s\\S]|[^\\\\"])*")';
  const definition_20 =
      '(?:backend|module|output|provider|provisioner|variable)\\s+(?:[\\w-]+|"(?:\\\\[\\s\\S]|[^\\\\"])*")\\s+(?=\\{)';
  const definition_29 =
      '(backend|module|output|provider|provisioner|variable)\\s+(?:[\\w-]+|"(?:\\\\[\\s\\S]|[^\\\\"])*")\\s+';
  const definition_13 = '[\\w-]+(?=\\s+\\{)';
  const definition_14 = '[-\\w\\.]+(?=\\s*=(?!=))';
  const definition_15 = '"(?:\\\\[\\s\\S]|[^\\\\"])+"(?=\\s*[:=])';
  const definition_16 =
      '"(?:[^\\\\\$"]|\\\\[\\s\\S]|\\\$(?:(?=")|\\\$+(?!\\\$)|[^"\${])|\\\$\\{(?:[^{}"]|"(?:[^\\\\"]|\\\\[\\s\\S])*")*\\})*"';
  const definition_25 =
      '(^|[^\$])\\\$\\{(?:[^{}"]|"(?:[^\\\\"]|\\\\[\\s\\S])*")*\\}';
  const definition_35 =
      '(\\b(?:count|data|local|module|path|self|terraform|var)\\b\\.)[\\w\\*]+';
  const definition_31 =
      '\\b(?:count|data|local|module|path|self|terraform|var)\\b';
  const definition_32 = '\\w+(?=\\()';
  const definition_36 = '"(?:\\\\[\\s\\S]|[^\\\\"])*"';
  const definition_6 = '\\b0x[\\da-f]+\\b|\\b\\d+(?:\\.\\d*)?(?:e[+-]?\\d+)?';
  const definition_34 = '[!\\\$#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~?:]';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_8 = '[=\\[\\]{}]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9, multiLine: true),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    inside: definition_19,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_20, caseSensitive: false),
    inside: definition_21,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    inside: definition_17,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    inside: definition_26,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_35, caseSensitive: false),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_36),
    greedy: true,
    global: true,
  );
  definition_19.addAllTokens({
    'type': [definition_23],
  });
  definition_21.addAllTokens({
    'type': [definition_24],
  });
  definition_26.addAllTokens({
    'type': [definition_30],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_31, caseSensitive: false))
    ],
    'function': [GrammarToken(pattern: RegExp(definition_32))],
    'string': [definition_33],
    'number': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_34))],
  });
  definition_17.addAllTokens({
    'interpolation': [definition_22],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'heredoc': [definition_2],
    'keyword': [
      definition_11,
      definition_12,
      GrammarToken(pattern: RegExp(definition_13)),
    ],
    'property': [
      GrammarToken(pattern: RegExp(definition_14)),
      GrammarToken(pattern: RegExp(definition_15)),
    ],
    'string': [definition_5],
    'number': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'hcl',
    definition_0,
  );
}

final languageHcl = _create();
