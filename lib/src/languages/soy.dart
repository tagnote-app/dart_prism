// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_6 = Grammar();
  final definition_24 = Grammar();
  final definition_32 = Grammar();
  const definition_4 = '(\\{literal\\})[\\s\\S]*?(?=\\{\\/literal\\})';
  const definition_5 =
      '\\{\\{.+?\\}\\}|\\{.+?\\}|\\s\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_20 = '\\/\\*[\\s\\S]*?\\*\\/';
  const definition_36 = '(\\s)\\/\\/.*';
  const definition_22 =
      '(\\{+\\/?\\s*(?:alias|call|delcall|delpackage|deltemplate|namespace|template)\\s+)\\.?[\\w.]+';
  const definition_37 = '\\.';
  const definition_25 = '(\\{+\\/?\\s*@?param\\??\\s+)\\.?[\\w.]+';
  const definition_38 =
      '(\\{+\\/?[^\\S\\r\\n]*)(?:\\\\[nrt]|alias|call|case|css|default|delcall|delpackage|deltemplate|else(?:if)?|fallbackmsg|for(?:each)?|if(?:empty)?|lb|let|literal|msg|namespace|nil|@?param\\??|rb|sp|switch|template|xid)';
  const definition_28 =
      '\\b(?:any|as|attributes|bool|css|float|html|in|int|js|list|map|null|number|string|uri)\\b';
  const definition_29 = '^\\{+\\/?|\\/?\\}+\$';
  const definition_12 = '\\w+(?==)';
  const definition_31 = '\\\$[^\\W\\d]\\w*(?:\\??(?:\\.\\w+|\\[[^\\]]+\\]))*';
  const definition_33 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_17 =
      '\\b\\d+(?:\\.\\d+)?(?:[eE][+-]?\\d+)?\\b|\\b0x[\\dA-F]+\\b';
  const definition_40 = '[\\[\\].?]';
  const definition_34 = '\\w+(?=\\()';
  const definition_41 = '(\\|[^\\S\\r\\n]*)\\w+';
  const definition_16 = '\\b(?:false|true)\\b';
  const definition_18 = '\\?:?|<=?|>=?|==?|!=|[+*/%-]|\\b(?:and|not|or)\\b';
  const definition_19 = '[{}()\\[\\]|.,:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_5),
    greedy: true,
    inside: definition_6,
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    aliases: ['string'],
    inside: definition_24,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_29),
    aliases: ['punctuation'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_31),
    inside: definition_32,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_33),
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_33),
    greedy: true,
    global: true,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_24.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_37))],
  });
  definition_32.addAllTokens({
    'string': [definition_39],
    'number': [GrammarToken(pattern: RegExp(definition_17))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
  });
  definition_6.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_20)),
      definition_21,
    ],
    'command-arg': [definition_8],
    'parameter': [definition_9],
    'keyword': [
      definition_27,
      GrammarToken(pattern: RegExp(definition_28)),
    ],
    'delimiter': [definition_11],
    'property': [GrammarToken(pattern: RegExp(definition_12))],
    'variable': [definition_13],
    'string': [definition_14],
    'function': [
      GrammarToken(pattern: RegExp(definition_34)),
      definition_35,
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_16))],
    'number': [GrammarToken(pattern: RegExp(definition_17))],
    'operator': [GrammarToken(pattern: RegExp(definition_18))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });
  definition_0.addAllTokens({
    'ignore-literal': [definition_1],
    'soy': [definition_2],
  });

  return LanguageProto(
    'soy',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageSoy = _create();
