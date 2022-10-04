// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_19 = Grammar();
  const definition_9 =
      '(^|[\\s;])(?:base-uri|block-all-mixed-content|(?:child|connect|default|font|frame|img|manifest|media|object|prefetch|script|style|worker)-src|disown-opener|form-action|frame-(?:ancestors|options)|input-protection(?:-(?:clip|selectors))?|navigate-to|plugin-types|policy-uri|referrer|reflected-xss|report-(?:to|uri)|require-sri-for|sandbox|(?:script|style)-src-(?:attr|elem)|upgrade-insecure-requests)(?=[\\s;]|\$)';
  const definition_11 = '([ \\t])(?:[a-z][a-z0-9.+-]*:)(?=[\\s;]|\$)';
  const definition_12 = '([ \\t])(?:\'none\')(?=[\\s;]|\$)';
  const definition_14 = '([ \\t])(?:\'nonce-[-+/\\w=]+\')(?=[\\s;]|\$)';
  const definition_16 =
      '([ \\t])(?:\'sha(?:256|384|512)-[-+/\\w=]+\')(?=[\\s;]|\$)';
  const definition_17 =
      '([ \\t])(?:[a-z][a-z0-9.+-]*:\\/\\/[^\\s;,\']*|\\*[^\\s;,\']*|[a-z0-9-]+(?:\\.[a-z0-9-]+)+(?::[\\d*]+)?(?:\\/[^\\s;,\']*)?)(?=[\\s;]|\$)';
  const definition_22 = '\\*';
  const definition_23 = '([ \\t])(?:\'unsafe-[a-z-]+\')(?=[\\s;]|\$)';
  const definition_25 = '([ \\t])(?:\'[a-z-]+\')(?=[\\s;]|\$)';
  const definition_8 = ';';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9, caseSensitive: false),
    lookbehind: true,
    aliases: ['property'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11, caseSensitive: false),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
    aliases: ['number'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    lookbehind: true,
    aliases: ['url'],
    inside: definition_19,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_23, caseSensitive: false),
    lookbehind: true,
    aliases: ['unsafe'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
    aliases: ['safe'],
  );
  definition_19.addAllTokens({
    'important': [GrammarToken(pattern: RegExp(definition_22))],
  });
  definition_0.addAllTokens({
    'directive': [definition_1],
    'scheme': [definition_2],
    'none': [definition_3],
    'nonce': [definition_4],
    'hash': [definition_5],
    'host': [definition_6],
    'keyword': [
      definition_20,
      definition_21,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'csp',
    definition_0,
  );
}

final languageCsp = _create();
