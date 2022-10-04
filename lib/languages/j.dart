// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_10 = '\\bNB\\..*';
  const definition_11 = '\'(?:\'\'|[^\'\\r\\n])*\'';
  const definition_3 =
      '\\b(?:(?:CR|LF|adverb|conjunction|def|define|dyad|monad|noun|verb)\\b|(?:assert|break|case|catch[dt]?|continue|do|else|elseif|end|fcase|for|for_\\w+|goto_\\w+|if|label_\\w+|return|select|throw|try|while|whilst)\\.)';
  const definition_12 =
      '(?!\\^:|;\\.|[=!][.:])(?:\\{(?:\\.|::?)?|p(?:\\.\\.?|:)|[=!\\]]|[<>+*\\-%\$|,#][.:]?|[?^]\\.?|[;\\[]:?|[~}"i][.:]|[ACeEIjLor]\\.|(?:[_\\/\\\\qsux]|_?\\d):)';
  const definition_5 =
      '\\b_?(?:(?!\\d:)\\d+(?:\\.\\d+)?(?:(?:ad|ar|[ejpx])_?\\d+(?:\\.\\d+)?)*(?:b_?[\\da-z]+(?:\\.[\\da-z]+)?)?|_\\b(?!\\.))';
  const definition_14 = '[~}]|[\\/\\\\]\\.?|[bfM]\\.|t[.:]';
  const definition_7 = '[=a][.:]|_\\.';
  const definition_16 =
      '&(?:\\.:?|:)?|[.:@][.:]?|[!D][.:]|[;dHT]\\.|`:?|[\\^LS]:|"';
  const definition_9 = '[()]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['keyword'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['builtin'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['variable'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'keyword': [GrammarToken(pattern: RegExp(definition_3))],
    'verb': [definition_4],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'adverb': [definition_6],
    'operator': [GrammarToken(pattern: RegExp(definition_7))],
    'conjunction': [definition_8],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'j',
    definition_0,
  );
}

final languageJ = _create();
