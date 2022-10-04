// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_10 = '(^|[^\\\\])#.*';
  const definition_11 = '"(?:[^"\\\\\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*"';
  const definition_21 = '(\\\$)(?:::)?(?:[a-zA-Z0-9]+::)*\\w+';
  const definition_22 = '(\\\$)\\{[^}]+\\}';
  const definition_23 = '(^[\\t ]*set[ \\t]+)(?:::)?(?:[a-zA-Z0-9]+::)*\\w+';
  const definition_15 = '(^[\\t ]*proc[ \\t]+)\\S+';
  const definition_24 =
      '(^[\\t ]*)(?:break|class|continue|error|eval|exit|for|foreach|if|proc|return|switch|while)\\b';
  const definition_17 = '\\b(?:else|elseif)\\b';
  const definition_18 = '(^[\\t ]*)(?:global|upvar|variable)\\b';
  const definition_20 =
      '(^[\\t ]*|\\[)(?:Safe_Base|Tcl|after|append|apply|array|auto_(?:execok|import|load|mkindex|qualify|reset)|automkindex_old|bgerror|binary|catch|cd|chan|clock|close|concat|dde|dict|encoding|eof|exec|expr|fblocked|fconfigure|fcopy|file(?:event|name)?|flush|gets|glob|history|http|incr|info|interp|join|lappend|lassign|lindex|linsert|list|llength|load|lrange|lrepeat|lreplace|lreverse|lsearch|lset|lsort|math(?:func|op)|memory|msgcat|namespace|open|package|parray|pid|pkg_mkIndex|platform|puts|pwd|re_syntax|read|refchan|regexp|registry|regsub|rename|scan|seek|set|socket|source|split|string|subst|tcl(?:_endOfWord|_findLibrary|startOf(?:Next|Previous)Word|test|vars|wordBreak(?:After|Before))|tell|time|tm|trace|unknown|unload|unset|update|uplevel|vwait)\\b';
  const definition_8 =
      '!=?|\\*\\*?|==|&&?|\\|\\|?|<[=<]?|>[=>]?|[-+~\\/%?^]|\\b(?:eq|in|ne|ni)\\b';
  const definition_9 = '[{}()\\[\\]]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_23, multiLine: true),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15, multiLine: true),
    lookbehind: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_24, multiLine: true),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_18, multiLine: true),
    lookbehind: true,
    aliases: ['constant'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_20, multiLine: true),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'variable': [
      definition_12,
      definition_13,
      definition_14,
    ],
    'function': [definition_4],
    'builtin': [
      definition_16,
      GrammarToken(pattern: RegExp(definition_17)),
    ],
    'scope': [definition_6],
    'keyword': [definition_7],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'tcl',
    definition_0,
  );
}

final languageTcl = _create();
