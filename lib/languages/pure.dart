// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_17 = Grammar();
  final definition_19 = Grammar();
  final definition_21 = Grammar();
  final definition_23 = Grammar();
  const definition_28 = '(^|[^\\\\])\\/\\*[\\s\\S]*?\\*\\/';
  const definition_29 = '(^|[^\\\\:])\\/\\/.*';
  const definition_15 = '#!.+';
  const definition_16 = '%< *-\\*- *c\\d* *-\\*-[\\s\\S]+?%>';
  const definition_35 = '(^%< *)-\\*-.+?-\\*-';
  const definition_37 = '^%<.*|%>\$';
  const definition_18 = '%< *-\\*- *c\\+\\+\\d* *-\\*-[\\s\\S]+?%>';
  const definition_20 = '%< *-\\*- *fortran\\d* *-\\*-[\\s\\S]+?%>';
  const definition_22 = '%<[\\s\\S]+?%>';
  const definition_24 = '"(?:\\\\.|[^"\\\\\\r\\n])*"';
  const definition_25 =
      '((?:\\.\\.)?)(?:\\b(?:inf|nan)\\b|\\b0x[\\da-f]+|(?:\\b(?:0b)?\\d+(?:\\.\\d+)?|\\B\\.\\d+)(?:e[+-]?\\d+)?L?)';
  const definition_8 =
      '\\b(?:NULL|ans|break|bt|case|catch|cd|clear|const|def|del|dump|else|end|exit|extern|false|force|help|if|infix[lr]?|interface|let|ls|mem|namespace|nonfix|of|otherwise|outfix|override|postfix|prefix|private|public|pwd|quit|run|save|show|stats|then|throw|trace|true|type|underride|using|when|with)\\b';
  const definition_9 =
      '\\b(?:abs|add_(?:addr|constdef|(?:fundef|interface|macdef|typedef)(?:_at)?|vardef)|all|any|applp?|arity|bigintp?|blob(?:_crc|_size|p)?|boolp?|byte_c?string(?:_pointer)?|byte_(?:matrix|pointer)|calloc|cat|catmap|ceil|char[ps]?|check_ptrtag|chr|clear_sentry|clearsym|closurep?|cmatrixp?|cols?|colcat(?:map)?|colmap|colrev|colvector(?:p|seq)?|complex(?:_float_(?:matrix|pointer)|_matrix(?:_view)?|_pointer|p)?|conj|cookedp?|cst|cstring(?:_(?:dup|list|vector))?|curry3?|cyclen?|del_(?:constdef|fundef|interface|macdef|typedef|vardef)|delete|diag(?:mat)?|dim|dmatrixp?|do|double(?:_matrix(?:_view)?|_pointer|p)?|dowith3?|drop|dropwhile|eval(?:cmd)?|exactp|filter|fix|fixity|flip|float(?:_matrix|_pointer)|floor|fold[lr]1?|frac|free|funp?|functionp?|gcd|get(?:_(?:byte|constdef|double|float|fundef|int(?:64)?|interface(?:_typedef)?|long|macdef|pointer|ptrtag|sentry|short|string|typedef|vardef))?|globsym|hash|head|id|im|imatrixp?|index|inexactp|infp|init|insert|int(?:_matrix(?:_view)?|_pointer|p)?|int64_(?:matrix|pointer)|integerp?|iteraten?|iterwhile|join|keys?|lambdap?|last(?:err(?:pos)?)?|lcd|list[2p]?|listmap|make_ptrtag|malloc|map|matcat|matrixp?|max|member|min|nanp|nargs|nmatrixp?|null|numberp?|ord|pack(?:ed)?|pointer(?:_cast|_tag|_type|p)?|pow|pred|ptrtag|put(?:_(?:byte|double|float|int(?:64)?|long|pointer|short|string))?|rationalp?|re|realp?|realloc|recordp?|redim|reduce(?:_with)?|refp?|repeatn?|reverse|rlistp?|round|rows?|rowcat(?:map)?|rowmap|rowrev|rowvector(?:p|seq)?|same|scan[lr]1?|sentry|sgn|short_(?:matrix|pointer)|slice|smatrixp?|sort|split|str|strcat|stream|stride|string(?:_(?:dup|list|vector)|p)?|subdiag(?:mat)?|submat|subseq2?|substr|succ|supdiag(?:mat)?|symbolp?|tail|take|takewhile|thunkp?|transpose|trunc|tuplep?|typep|ubyte|uint(?:64)?|ulong|uncurry3?|unref|unzip3?|update|ushort|vals?|varp?|vector(?:p|seq)?|void|zip3?|zipwith3?)\\b';
  const definition_26 = '\\b__[a-z]+__\\b';
  const definition_11 =
      '(?:[!"#\$%&\'*+,\\-.\\/:<=>?@\\\\^`|~\\u00a1-\\u00bf\\u00d7-\\u00f7\\u20d0-\\u2bff]|\\b_+\\b)+|\\b(?:and|div|mod|not|or)\\b';
  const definition_12 = '[(){}\\[\\];,|]';
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    inside: definition_17,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    aliases: ['comment'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_37),
    aliases: ['punctuation'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    inside: definition_19,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_20, caseSensitive: false),
    inside: definition_21,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    inside: definition_23,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false),
    aliases: ['builtin'],
  );
  definition_17.rest = 'c';
  definition_19.rest = 'cpp';
  definition_21.rest = 'fortran';
  definition_23.rest = 'c';
  definition_17.addAllTokens({
    'lang': [definition_30],
    'delimiter': [definition_31],
  });
  definition_19.addAllTokens({
    'lang': [definition_30],
    'delimiter': [definition_31],
  });
  definition_21.addAllTokens({
    'lang': [definition_30],
    'delimiter': [definition_31],
  });
  definition_23.addAllTokens({
    'lang': [definition_30],
    'delimiter': [definition_31],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_13,
      definition_14,
      GrammarToken(pattern: RegExp(definition_15)),
    ],
    'inline-lang-c': [definition_2],
    'inline-lang-cpp': [definition_3],
    'inline-lang-fortran': [definition_4],
    'inline-lang': [definition_5],
    'string': [definition_6],
    'number': [definition_7],
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'function': [GrammarToken(pattern: RegExp(definition_9))],
    'special': [definition_10],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'pure',
    definition_0,
  );
}

final languagePure = _create();
