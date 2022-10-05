// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_33 = Grammar();
  final definition_54 = Grammar();
  final definition_62 = Grammar();
  final definition_57 = Grammar();
  final definition_35 = Grammar();
  final definition_37 = Grammar();
  final definition_21 = Grammar();
  final definition_46 = Grammar();
  final definition_24 = Grammar();
  final definition_48 = Grammar();
  final definition_26 = Grammar();
  const definition_31 =
      '(@\\("([^"\\r\\n\\/):]+)"(?:\\/[nrts\$uL]*)?\\).*(?:\\r?\\n|\\r))(?:.*(?:\\r?\\n|\\r(?!\\n)))*?[ \\t]*(?:\\|[ \\t]*)?(?:-[ \\t]*)?\\2';
  const definition_42 = '(?=\\S).*\\S(?= *\$)';
  const definition_53 =
      '(^|[^\\\\])\\\$\\{(?:[^\'"{}]|\\{[^}]*\\}|(["\'])(?:(?!\\2)[^\\\\]|\\\\[\\s\\S])*\\2)+\\}';
  const definition_61 = '(^\\\$\\{)(?!\\w+\\()(?:::)?\\w+(?:::\\w+)*';
  const definition_40 = '::';
  const definition_63 = '^\\\$';
  const definition_55 = '(^|[^\\\\])\\\$(?:::)?\\w+(?:::\\w+)*';
  const definition_34 =
      '(@\\(([^"\\r\\n\\/):]+)(?:\\/[nrts\$uL]*)?\\).*(?:\\r?\\n|\\r))(?:.*(?:\\r?\\n|\\r(?!\\n)))*?[ \\t]*(?:\\|[ \\t]*)?(?:-[ \\t]*)?\\2';
  const definition_36 = '@\\("?(?:[^"\\r\\n\\/):]+)"?(?:\\/[nrts\$uL]*)?\\)';
  const definition_51 = '(\\().+?(?=\\))';
  const definition_18 = '(^|[^\\\\])\\/\\*[\\s\\S]*?\\*\\/';
  const definition_20 =
      '((?:\\bnode\\s+|[~=\\(\\[\\{,]\\s*|[=+]>\\s*|^\\s*))\\/(?:[^\\/\\\\]|\\\\[\\s\\S])+\\/(?:[imx]+\\b|\\B)';
  const definition_45 = '^\\/(?:[^\\/\\\\]|\\\\[\\s\\S])+\\/[im]*x[im]*\$';
  const definition_52 = '#.*';
  const definition_22 = '(^|[^\\\\])#.*';
  const definition_23 =
      '(["\'])(?:\\\$\\{(?:[^\'"}]|(["\'])(?:(?!\\2)[^\\\\]|\\\\[\\s\\S])*\\2)+\\}|\\\$(?!\\{)|(?!\\1)[^\\\\\$]|\\\\[\\s\\S])*\\1';
  const definition_47 = '^"[\\s\\S]*"\$';
  const definition_25 = '\\\$(?:::)?\\w+(?:::\\w+)*';
  const definition_7 = '(?:\\b\\w+|\\*)(?=\\s*=>)';
  const definition_41 = '(\\.)(?!\\d)\\w+';
  const definition_28 =
      '\\b(?:contain|debug|err|fail|include|info|notice|realize|require|tag|warning)\\b|\\b(?!\\d)\\w+(?=\\()';
  const definition_9 = '\\b(?:0x[a-f\\d]+|\\d+(?:\\.\\d+)?(?:e-?\\d+)?)\\b';
  const definition_10 = '\\b(?:false|true)\\b';
  const definition_11 =
      '\\b(?:application|attr|case|class|consumes|default|define|else|elsif|function|if|import|inherits|node|private|produces|type|undef|unless)\\b';
  const definition_29 =
      '\\b(?:Any|Array|Boolean|Callable|Catalogentry|Class|Collection|Data|Default|Enum|Float|Hash|Integer|NotUndef|Numeric|Optional|Pattern|Regexp|Resource|Runtime|Scalar|String|Struct|Tuple|Type|Undef|Variant)\\b';
  const definition_13 =
      '=[=~>]?|![=~]?|<(?:<\\|?|[=~|-])?|>[>=]?|->?|~>|\\|>?>?|[*\\/%+?]|\\b(?:and|in|or)\\b';
  const definition_14 = '[\\[\\]{}().,;]|:+';
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    aliases: ['string'],
    inside: definition_33,
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_53),
    lookbehind: true,
    inside: definition_54,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_61),
    lookbehind: true,
    aliases: ['variable'],
    inside: definition_62,
  );
  final definition_59 = GrammarToken(
    pattern: RegExp(definition_63),
    aliases: ['variable'],
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_55),
    lookbehind: true,
    aliases: ['variable'],
    inside: definition_57,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
    greedy: true,
    aliases: ['string'],
    inside: definition_35,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_36),
    aliases: ['string'],
    inside: definition_37,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    greedy: true,
    inside: definition_21,
    global: true,
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_45),
    inside: definition_46,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    inside: definition_24,
    global: true,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_47),
    inside: definition_48,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_25),
    inside: definition_26,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_29),
    aliases: ['symbol'],
  );
  definition_54.rest = 'puppet';
  definition_62.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
  });
  definition_54.addAllTokens({
    'short-variable': [definition_58],
    'delimiter': [definition_59],
  });
  definition_57.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
  });
  definition_33.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_42))],
    'interpolation': [
      definition_49,
      definition_50,
    ],
  });
  definition_35.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_42))],
  });
  definition_37.addAllTokens({
    'punctuation': [definition_44],
  });
  definition_46.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_52))],
  });
  definition_21.addAllTokens({
    'extended-regex': [definition_38],
  });
  definition_48.addAllTokens({
    'interpolation': [
      definition_49,
      definition_50,
    ],
  });
  definition_24.addAllTokens({
    'double-quoted': [definition_39],
  });
  definition_26.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_40))],
  });
  definition_0.addAllTokens({
    'heredoc': [
      definition_15,
      definition_16,
      definition_17,
    ],
    'multiline-comment': [definition_2],
    'regex': [definition_3],
    'comment': [definition_4],
    'string': [definition_5],
    'variable': [definition_6],
    'attr-name': [GrammarToken(pattern: RegExp(definition_7))],
    'function': [
      definition_27,
      GrammarToken(pattern: RegExp(definition_28)),
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'keyword': [GrammarToken(pattern: RegExp(definition_11))],
    'datatype': [definition_12],
    'operator': [GrammarToken(pattern: RegExp(definition_13))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
  });

  return LanguageProto(
    'puppet',
    definition_0,
  );
}

final languagePuppet = _create();
