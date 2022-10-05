// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_27 = Grammar();
  const definition_11 = '\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_12 = '"[^"]*"';
  const definition_13 =
      '(\\bnamespace\\s+)(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])';
  const definition_26 =
      '(^|[^\\w-])(?:iterable|maplike|setlike)\\s*<(?:[^<>]|<[^<>]*>)*>';
  const definition_5 =
      '\\b(?:ArrayBuffer|BigInt64Array|BigUint64Array|ByteString|DOMString|DataView|Float32Array|Float64Array|FrozenArray|Int16Array|Int32Array|Int8Array|ObservableArray|Promise|USVString|Uint16Array|Uint32Array|Uint8Array|Uint8ClampedArray)\\b';
  const definition_23 =
      '\\b(?:async|attribute|callback|const|constructor|deleter|dictionary|enum|getter|implements|includes|inherit|interface|mixin|namespace|null|optional|or|partial|readonly|required|setter|static|stringifier|typedef|unrestricted)\\b';
  const definition_24 =
      '\\b(?:any|bigint|boolean|byte|double|float|iterable|long|maplike|object|octet|record|sequence|setlike|short|symbol|undefined|unsigned|void)\\b';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_25 =
      '(^|[^\\w-])-?(?:0x[0-9a-f]+|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:e[+-]?\\d+)?|NaN|Infinity)(?![\\w-])';
  const definition_9 = '\\.{3}|[=:?<>-]';
  const definition_10 = '[(){}[\\].,;]';
  const definition_28 =
      '(\\b(?:attribute|const|deleter|getter|optional|setter)\\s+)(?:\\b(?:unsigned\\s+)?long\\s+long(?![\\w-])|\\b(?:unrestricted|unsigned)\\s+[a-z]+(?![\\w-])|(?!(?:unrestricted|unsigned)\\b)(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])(?:\\s*<(?:[^<>]|<[^<>]*>)*>)?)(?:\\s*\\?)?';
  const definition_29 =
      '(\\bcallback\\s+(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])\\s*=\\s*)(?:\\b(?:unsigned\\s+)?long\\s+long(?![\\w-])|\\b(?:unrestricted|unsigned)\\s+[a-z]+(?![\\w-])|(?!(?:unrestricted|unsigned)\\b)(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])(?:\\s*<(?:[^<>]|<[^<>]*>)*>)?)(?:\\s*\\?)?';
  const definition_30 =
      '(\\btypedef\\b\\s*)(?:\\b(?:unsigned\\s+)?long\\s+long(?![\\w-])|\\b(?:unrestricted|unsigned)\\s+[a-z]+(?![\\w-])|(?!(?:unrestricted|unsigned)\\b)(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])(?:\\s*<(?:[^<>]|<[^<>]*>)*>)?)(?:\\s*\\?)?';
  const definition_31 =
      '(\\b(?:callback|dictionary|enum|interface(?:\\s+mixin)?)\\s+)(?!(?:interface|mixin)\\b)(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])';
  const definition_32 = '(:\\s*)(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])';
  const definition_20 =
      '(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])(?=\\s+(?:implements|includes)\\b)';
  const definition_33 =
      '(\\b(?:implements|includes)\\s+)(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])';
  const definition_34 =
      '(?:\\b(?:unsigned\\s+)?long\\s+long(?![\\w-])|\\b(?:unrestricted|unsigned)\\s+[a-z]+(?![\\w-])|(?!(?:unrestricted|unsigned)\\b)(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])(?:\\s*<(?:[^<>]|<[^<>]*>)*>)?)(?:\\s*\\?)?(?=\\s*(?:\\.{3}\\s*)?(?:\\B-|\\b_|\\b)[A-Za-z][\\w-]*(?![\\w-])\\s*[(),;=])';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
    inside: definition_27,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    inside: definition_27,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    inside: definition_27,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: definition_27,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_34),
    inside: definition_27,
  );
  definition_27.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'namespace': [definition_3],
    'builtin': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_23)),
      GrammarToken(pattern: RegExp(definition_24)),
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [definition_8],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'namespace': [definition_3],
    'class-name': [
      definition_14,
      definition_15,
      definition_16,
      definition_17,
      definition_18,
      definition_19,
      GrammarToken(pattern: RegExp(definition_20)),
      definition_21,
      definition_22,
    ],
    'builtin': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_23)),
      GrammarToken(pattern: RegExp(definition_24)),
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [definition_8],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'web-idl',
    definition_0,
    aliases: ['webidl'],
  );
}

final languageWebIdl = _create();
