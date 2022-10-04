// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 =
      '\\(\\*(?:[^*(]|\\*(?!\\))|\\((?!\\*)|\\(\\*(?:[^*(]|\\*(?!\\))|\\((?!\\*))*\\*\\))*\\*\\)';
  const definition_12 = '#?"(?:[^"\\\\]|\\\\.)*"';
  const definition_19 =
      '((?:^|[^:]):\\s*)(?:\'[\\w\']*|(?!\\b(?:abstype|and|andalso|as|case|datatype|do|else|end|eqtype|exception|fn|fun|functor|handle|if|in|include|infix|infixr|let|local|nonfix|of|op|open|orelse|raise|rec|sharing|sig|signature|struct|structure|then|type|val|where|while|with|withtype)\\b)[a-z\\d_][\\w\'.]*|\\((?:[^()]|\\([^()]*\\))*\\)|\\{(?:[^{}]|\\{[^{}]*\\})*\\})(?:\\s+(?!\\b(?:abstype|and|andalso|as|case|datatype|do|else|end|eqtype|exception|fn|fun|functor|handle|if|in|include|infix|infixr|let|local|nonfix|of|op|open|orelse|raise|rec|sharing|sig|signature|struct|structure|then|type|val|where|while|with|withtype)\\b)[a-z\\d_][\\w\'.]*)*(?:\\s*(?:(?:\\*|->)\\s*(?:\'[\\w\']*|(?!\\b(?:abstype|and|andalso|as|case|datatype|do|else|end|eqtype|exception|fn|fun|functor|handle|if|in|include|infix|infixr|let|local|nonfix|of|op|open|orelse|raise|rec|sharing|sig|signature|struct|structure|then|type|val|where|while|with|withtype)\\b)[a-z\\d_][\\w\'.]*|\\((?:[^()]|\\([^()]*\\))*\\)|\\{(?:[^{}]|\\{[^{}]*\\})*\\})(?:\\s+(?!\\b(?:abstype|and|andalso|as|case|datatype|do|else|end|eqtype|exception|fn|fun|functor|handle|if|in|include|infix|infixr|let|local|nonfix|of|op|open|orelse|raise|rec|sharing|sig|signature|struct|structure|then|type|val|where|while|with|withtype)\\b)[a-z\\d_][\\w\'.]*)*|,\\s*(?:\'[\\w\']*|(?!\\b(?:abstype|and|andalso|as|case|datatype|do|else|end|eqtype|exception|fn|fun|functor|handle|if|in|include|infix|infixr|let|local|nonfix|of|op|open|orelse|raise|rec|sharing|sig|signature|struct|structure|then|type|val|where|while|with|withtype)\\b)[a-z\\d_][\\w\'.]*|\\((?:[^()]|\\([^()]*\\))*\\)|\\{(?:[^{}]|\\{[^{}]*\\})*\\})(?:\\s+(?!\\b(?:abstype|and|andalso|as|case|datatype|do|else|end|eqtype|exception|fn|fun|functor|handle|if|in|include|infix|infixr|let|local|nonfix|of|op|open|orelse|raise|rec|sharing|sig|signature|struct|structure|then|type|val|where|while|with|withtype)\\b)[a-z\\d_][\\w\'.]*)*(?:(?=\\s*(?:[*,]|->))|(?!\\s*(?:[*,]|->))\\s+(?!\\b(?:abstype|and|andalso|as|case|datatype|do|else|end|eqtype|exception|fn|fun|functor|handle|if|in|include|infix|infixr|let|local|nonfix|of|op|open|orelse|raise|rec|sharing|sig|signature|struct|structure|then|type|val|where|while|with|withtype)\\b)[a-z\\d_][\\w\'.]*)))*';
  const definition_21 =
      '((?:^|[^\\w\'])(?:datatype|exception|functor|signature|structure|type)\\s+)[a-z_][\\w\'.]*';
  const definition_15 = '((?:^|[^\\w\'])fun\\s+)[a-z_][\\w\'.]*';
  const definition_5 =
      '\\b(?:abstype|and|andalso|as|case|datatype|do|else|end|eqtype|exception|fn|fun|functor|handle|if|in|include|infix|infixr|let|local|nonfix|of|op|open|orelse|raise|rec|sharing|sig|signature|struct|structure|then|type|val|where|while|with|withtype)\\b';
  const definition_16 = '(^|[^\\w\'])\'[\\w\']*';
  const definition_7 = '~?\\b(?:\\d+(?:\\.\\d+)?(?:e~?\\d+)?|0x[\\da-f]+)\\b';
  const definition_17 = '\\b0w(?:\\d+|x[\\da-f]+)\\b';
  const definition_9 = '\\b(?:false|true)\\b';
  const definition_10 = '\\.\\.\\.|:[>=:]|=>?|->|[<>]=?|[!+\\-*/^#|@~]';
  const definition_11 = '[(){}\\[\\].:,;]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    lookbehind: true,
    greedy: true,
    inside: 'sml',
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    aliases: ['constant'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'class-name': [
      definition_13,
      definition_14,
    ],
    'function': [definition_4],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'variable': [definition_6],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'word': [definition_8],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'sml',
    definition_0,
    aliases: ['smlnj'],
  );
}

final languageSml = _create();
