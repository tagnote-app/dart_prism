// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_20 = Grammar();
  final definition_35 = Grammar();
  final definition_37 = Grammar();
  final definition_61 = Grammar();
  final definition_69 = Grammar();
  final definition_63 = Grammar();
  final definition_39 = Grammar();
  const definition_17 = ';;;.*';
  const definition_2 = ';.*';
  const definition_19 = '"(?:[^"\\\\]|\\\\.)*"';
  const definition_45 = '[-A-Z]+(?=[.,\\s])';
  const definition_46 = '`(?!\\d)[-+*/~!@\$%^=<>{}\\w]+\'';
  const definition_21 = '#?\'(?!\\d)[-+*/~!@\$%^=<>{}\\w]+';
  const definition_23 = ':(?!\\d)[-+*/~!@\$%^=<>{}\\w]+';
  const definition_25 = ',@?(?!\\d)[-+*/~!@\$%^=<>{}\\w]+';
  const definition_49 =
      '(\\()(?:and|(?:cl-)?letf|cl-loop|cond|cons|error|if|(?:lexical-)?let\\*?|message|not|null|or|provide|require|setq|unless|use-package|when|while)(?=\\s)';
  const definition_50 =
      '(\\()(?:append|by|collect|concat|do|finally|for|in|return)(?=\\s)';
  const definition_29 = '(\\()(?:declare)(?=[\\s\\)])';
  const definition_31 = '(\\()(?:interactive)(?=[\\s\\)])';
  const definition_32 = '([\\s([])(?:nil|t)(?=[\\s)])';
  const definition_33 = '([\\s([])(?:[-+]?\\d+(?:\\.\\d*)?)(?=[\\s)])';
  const definition_34 =
      '(\\()def(?:const|custom|group|var)\\s+(?!\\d)[-+*/~!@\$%^=<>{}\\w]+';
  const definition_51 = '^def[a-z]+';
  const definition_52 = '(?!\\d)[-+*/~!@\$%^=<>{}\\w]+';
  const definition_36 =
      '(\\()(?:cl-)?(?:defmacro|defun\\*?)\\s+(?!\\d)[-+*/~!@\$%^=<>{}\\w]+\\s+\\((?:[^()]|\\((?:[^()]|\\((?:[^()]|\\((?:[^()]|\\((?:[^()]|\\([^()]*\\))*\\))*\\))*\\))*\\))*\\)';
  const definition_53 = '^(?:cl-)?def\\S+';
  const definition_60 =
      '(\\()(?:[^()]|\\((?:[^()]|\\((?:[^()]|\\((?:[^()]|\\((?:[^()]|\\([^()]*\\))*\\))*\\))*\\))*\\))*(?=\\))';
  const definition_68 = '&(?:body|rest)\\s+\\S+(?:\\s+\\S+)*';
  const definition_72 = '&(?!\\d)[-+*/~!@\$%^=<>{}\\w]+';
  const definition_76 =
      '\\((?!\\d)[-+*/~!@\$%^=<>{}\\w]+\\s+(?=\\S)(?:[^()]|\\((?:[^()]|\\((?:[^()]|\\((?:[^()]|\\((?:[^()]|\\([^()]*\\))*\\))*\\))*\\))*\\))*\\)';
  const definition_77 = '(^|[\\s(])(?!\\d)[-+*/~!@\$%^=<>{}\\w]+';
  const definition_70 = '&(?:aux|optional)\\s+\\S+(?:\\s+\\S+)*';
  const definition_71 = '&key\\s+\\S+(?:\\s+\\S+)*(?:\\s+&allow-other-keys)?';
  const definition_56 = '[()]';
  const definition_62 = '(^\\s)(?!\\d)[-+*/~!@\$%^=<>{}\\w]+';
  const definition_38 =
      '(\\()lambda\\s+\\(\\s*(?:&?(?!\\d)[-+*/~!@\$%^=<>{}\\w]+(?:\\s+&?(?!\\d)[-+*/~!@\$%^=<>{}\\w]+)*\\s*)?\\)';
  const definition_57 = '^lambda';
  const definition_40 = '(\\()(?!\\d)[-+*/~!@\$%^=<>{}\\w]+';
  const definition_41 = '(?:[\'`,]?\\(|[)\\[\\]])';
  const definition_59 = '(\\s)\\.(?=\\s)';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['comment', 'title'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_21),
    aliases: ['variable', 'symbol'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['property'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_25),
    aliases: ['symbol', 'variable'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_50),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_32),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
    inside: definition_35,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
    greedy: true,
    inside: definition_37,
    global: true,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_60),
    lookbehind: true,
    inside: definition_61,
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_68),
    inside: definition_69,
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_76),
    inside: 'lisp',
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_77),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_70),
    inside: definition_69,
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_71),
    inside: definition_69,
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_52),
    aliases: ['variable'],
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_60),
    lookbehind: true,
    inside: definition_63,
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_62),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    greedy: true,
    inside: definition_39,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_59),
    lookbehind: true,
  );
  definition_69.rest = 'lisp';
  definition_20.addAllTokens({
    'argument': [GrammarToken(pattern: RegExp(definition_45))],
    'symbol': [GrammarToken(pattern: RegExp(definition_46))],
  });
  definition_35.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_51))],
    'variable': [GrammarToken(pattern: RegExp(definition_52))],
  });
  definition_69.addAllTokens({
    'lisp-marker': [GrammarToken(pattern: RegExp(definition_72))],
    'varform': [definition_73],
    'argument': [definition_74],
  });
  definition_63.addAllTokens({
    'rest-vars': [definition_64],
    'other-marker-vars': [definition_65],
    'keys': [definition_66],
    'argument': [definition_67],
    'punctuation': [GrammarToken(pattern: RegExp(definition_56))],
  });
  definition_61.addAllTokens({
    'rest-vars': [definition_64],
    'other-marker-vars': [definition_65],
    'keys': [definition_66],
    'argument': [definition_67],
    'punctuation': [GrammarToken(pattern: RegExp(definition_56))],
    'sublist': [definition_58],
  });
  definition_37.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_53))],
    'arguments': [definition_54],
    'function': [definition_55],
    'punctuation': [GrammarToken(pattern: RegExp(definition_56))],
  });
  definition_39.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_57))],
    'arguments': [definition_58],
    'punctuation': [GrammarToken(pattern: RegExp(definition_56))],
  });
  definition_0.addAllTokens({
    'heading': [definition_1],
    'comment': [GrammarToken(pattern: RegExp(definition_2))],
    'string': [definition_3],
    'quoted-symbol': [definition_4],
    'lisp-property': [definition_5],
    'splice': [definition_6],
    'keyword': [
      definition_27,
      definition_28,
    ],
    'declare': [definition_8],
    'interactive': [definition_9],
    'boolean': [definition_10],
    'number': [definition_11],
    'defvar': [definition_12],
    'defun': [definition_13],
    'lambda': [definition_14],
    'car': [definition_15],
    'punctuation': [
      GrammarToken(pattern: RegExp(definition_41)),
      definition_42,
    ],
  });

  return LanguageProto(
    'lisp',
    definition_0,
    aliases: ['emacs', 'elisp', 'emacs-lisp'],
  );
}

final languageLisp = _create();
