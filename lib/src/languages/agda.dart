// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\{-[\\s\\S]*?(?:-\\}|\$)|--.*';
  const definition_8 = '"(?:\\\\(?:\\r\\n|[\\s\\S])|[^\\\\\\r\\n"])*"';
  const definition_3 = '[(){}⦃⦄.;@]';
  const definition_9 = '((?:data|record) +)\\S+';
  const definition_10 = '(^[ \\t]*)(?!\\s)[^:\\r\\n]+(?=:)';
  const definition_11 = '(^\\s*|\\s)(?:[=|:∀→λ\\\\?_]|->)(?=\\s)';
  const definition_7 =
      '\\b(?:Set|abstract|constructor|data|eta-equality|field|forall|hiding|import|in|inductive|infix|infixl|infixr|instance|let|macro|module|mutual|no-eta-equality|open|overlap|pattern|postulate|primitive|private|public|quote|quoteContext|quoteGoal|quoteTerm|record|renaming|rewrite|syntax|tactic|unquote|unquoteDecl|unquoteDef|using|variable|where|with)\\b';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_9),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_10, multiLine: true),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'punctuation': [GrammarToken(pattern: RegExp(definition_3))],
    'class-name': [definition_4],
    'function': [definition_5],
    'operator': [definition_6],
    'keyword': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'agda',
    definition_0,
  );
}

final languageAgda = _create();
