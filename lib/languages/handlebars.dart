// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_4 = Grammar();
  final definition_19 = Grammar();
  const definition_3 = '\\{\\{\\{[\\s\\S]+?\\}\\}\\}|\\{\\{[\\s\\S]+?\\}\\}';
  const definition_5 = '\\{\\{![\\s\\S]*?\\}\\}';
  const definition_14 = '^\\{\\{\\{?|\\}\\}\\}?\$';
  const definition_7 = '(["\'])(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_8 =
      '\\b0x[\\dA-Fa-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[Ee][+-]?\\d+)?';
  const definition_9 = '\\b(?:false|true)\\b';
  const definition_16 = '^(\\s*(?:~\\s*)?)[#\\/]\\S+?(?=\\s*(?:~\\s*)?\$|\\s)';
  const definition_18 = '\\[[^\\]]+\\]';
  const definition_20 = '\\[|\\]';
  const definition_21 = '[\\s\\S]+';
  const definition_12 = '[!"#%&\':()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]';
  const definition_13 = '[^!"#%&\'()*+,\\/;<=>@\\[\\\\\\]^`{|}~\\s]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_3),
    inside: definition_4,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['punctuation'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_18),
    inside: definition_19,
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_19.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
    'variable': [GrammarToken(pattern: RegExp(definition_21))],
  });
  definition_4.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_5))],
    'delimiter': [definition_6],
    'string': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [GrammarToken(pattern: RegExp(definition_8))],
    'boolean': [GrammarToken(pattern: RegExp(definition_9))],
    'block': [definition_10],
    'brackets': [definition_11],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
    'variable': [GrammarToken(pattern: RegExp(definition_13))],
  });
  definition_0.addAllTokens({
    'handlebars': [definition_1],
  });

  return LanguageProto(
    'handlebars',
    definition_0,
    aliases: ['hbs', 'mustache'],
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageHandlebars = _create();
