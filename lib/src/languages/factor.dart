// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_69 = Grammar();
  final definition_35 = Grammar();
  final definition_39 = Grammar();
  final definition_85 = Grammar();
  final definition_67 = Grammar();
  final definition_45 = Grammar();
  const definition_68 = '(^|\\s)(?:! .*|!\$)';
  const definition_97 =
      '\\b(?:BUGS?|FIX(?:MES?)?|NOTES?|TODOS?|XX+|HACKS?|WARN(?:ING)?|\\?{2,}|!{2,})\\b';
  const definition_70 = '(^|\\s)\\/\\*\\s[\\s\\S]*?\\*\\/(?=\\s|\$)';
  const definition_71 =
      '(^|\\s)!\\[(={0,6})\\[\\s[\\s\\S]*?\\]\\2\\](?=\\s|\$)';
  const definition_72 = '(^|\\s)[+-]?\\d+(?=\\s|\$)';
  const definition_73 =
      '(^|\\s)[+-]?0(?:b[01]+|o[0-7]+|d\\d+|x[\\dA-F]+)(?=\\s|\$)';
  const definition_74 = '(^|\\s)[+-]?\\d+\\/\\d+\\.?(?=\\s|\$)';
  const definition_75 = '(^|\\s)\\+?\\d+\\+\\d+\\/\\d+(?=\\s|\$)';
  const definition_76 = '(^|\\s)-\\d+-\\d+\\/\\d+(?=\\s|\$)';
  const definition_77 =
      '(^|\\s)[+-]?(?:\\d*\\.\\d+|\\d+\\.\\d*|\\d+)(?:e[+-]?\\d+)?(?=\\s|\$)';
  const definition_78 = '(^|\\s)NAN:\\s+[\\da-fA-F]+(?=\\s|\$)';
  const definition_79 =
      '(^|\\s)[+-]?0(?:b1\\.[01]*|o1\\.[0-7]*|d1\\.\\d*|x1\\.[\\dA-F]*)p\\d+(?=\\s|\$)';
  const definition_33 =
      '(^|\\s)R\\/\\s(?:\\\\\\S|[^\\\\/])*\\/(?:[idmsr]*|[idmsr]+-[idmsr]+)(?=\\s|\$)';
  const definition_80 = '\\\\\\S';
  const definition_81 = '[+?*\\[\\]^\$(){}.|]';
  const definition_98 = '(\\/)[idmsr]+(?:-[idmsr]+)?';
  const definition_36 = '(^|\\s)[tf](?=\\s|\$)';
  const definition_37 = '(^|\\s)[A-Z0-9\\-]+"\\s(?:\\\\\\S|[^"\\\\])*"';
  const definition_83 = '\\\\\\S|%\\w|\\/';
  const definition_84 =
      '(^|\\s)STRING:\\s+\\S+(?:\\n|\\r\\n).*(?:\\n|\\r\\n)\\s*;(?=\\s|\$)';
  const definition_96 = '\\\\[^\\s\']|%\\w';
  const definition_101 = '([\\r\\n][ \\t]*);(?=\\s|\$)';
  const definition_86 =
      '(^|\\s)HEREDOC:\\s+\\S+(?:\\n|\\r\\n).*(?:\\n|\\r\\n)\\s*\\S+(?=\\s|\$)';
  const definition_87 = '(^|\\s)\\[(={0,6})\\[\\s[\\s\\S]*?\\]\\2\\](?=\\s|\$)';
  const definition_43 = '(^|\\s)USING:(?:\\s\\S+)*(?=\\s+;(?:\\s|\$))';
  const definition_100 = '(\\s)[^:\\s]+';
  const definition_89 = '(^|\\s)(?:call|eval|execute)?\\((?=\\s)';
  const definition_90 = '(\\s)--(?=\\s)';
  const definition_91 = '(\\s)\\)(?=\\s|\$)';
  const definition_49 =
      '(^|\\s)(?:2bi|while|2tri|bi\\*|4dip|both\\?|same\\?|tri@|curry|prepose|3bi|\\?if|tri\\*|2keep|3keep|curried|2keepd|when|2bi\\*|2tri\\*|4keep|bi@|keepdd|do|unless\\*|tri-curry|if\\*|loop|bi-curry\\*|when\\*|2bi@|2tri@|with|2with|either\\?|bi|until|3dip|3curry|tri-curry\\*|tri-curry@|bi-curry|keepd|compose|2dip|if|3tri|unless|tuple|keep|2curry|tri|most|while\\*|dip|composed|bi-curry@|find-last-from|trim-head-slice|map-as|each-from|none\\?|trim-tail|partition|if-empty|accumulate\\*|reject!|find-from|accumulate-as|collector-for-as|reject|map|map-sum|accumulate!|2each-from|follow|supremum-by|map!|unless-empty|collector|padding|reduce-index|replicate-as|infimum-by|trim-tail-slice|count|find-index|filter|accumulate\\*!|reject-as|map-integers|map-find|reduce|selector|interleave|2map|filter-as|binary-reduce|map-index-as|find|produce|filter!|replicate|cartesian-map|cartesian-each|find-index-from|map-find-last|3map-as|3map|find-last|selector-as|2map-as|2map-reduce|accumulate|each|each-index|accumulate\\*-as|when-empty|all\\?|collector-as|push-either|new-like|collector-for|2selector|push-if|2all\\?|map-reduce|3each|any\\?|trim-slice|2reduce|change-nth|produce-as|2each|trim|trim-head|cartesian-find|map-index|if-zero|each-integer|unless-zero|\\(find-integer\\)|when-zero|find-last-integer|\\(all-integers\\?\\)|times|\\(each-integer\\)|find-integer|all-integers\\?|unless-negative|if-positive|when-positive|when-negative|unless-positive|if-negative|case|2cleave|cond>quot|case>quot|3cleave|wrong-values|to-fixed-point|alist>quot|cond|cleave|call-effect|recursive-hashcode|spread|deep-spread>quot|2\\|\\||0\\|\\||n\\|\\||0&&|2&&|3\\|\\||1\\|\\||1&&|n&&|3&&|smart-unless\\*|keep-inputs|reduce-outputs|smart-when\\*|cleave>array|smart-with|smart-apply|smart-if|inputs\\/outputs|output>sequence-n|map-outputs|map-reduce-outputs|dropping|output>array|smart-map-reduce|smart-2map-reduce|output>array-n|nullary|input<sequence|append-outputs|drop-inputs|inputs|smart-2reduce|drop-outputs|smart-reduce|preserving|smart-when|outputs|append-outputs-as|smart-unless|smart-if\\*|sum-outputs|input<sequence-unsafe|output>sequence)(?=\\s|\$)';
  const definition_51 =
      '(^|\\s)(?:or|2nipd|4drop|tuck|wrapper|nip|wrapper\\?|callstack>array|die|dupd|callstack|callstack\\?|3dup|hashcode|pick|4nip|build|>boolean|nipd|clone|5nip|eq\\?|\\?|=|swapd|2over|clear|2dup|get-retainstack|not|tuple\\?|dup|3nipd|call|-rotd|object|drop|assert=|assert\\?|-rot|execute|boa|get-callstack|curried\\?|3drop|pickd|overd|over|roll|3nip|swap|and|2nip|rotd|throw|\\(clone\\)|hashcode\\*|spin|reach|4dup|equal\\?|get-datastack|assert|2drop|<wrapper>|boolean\\?|identity-hashcode|identity-tuple\\?|null|composed\\?|new|5drop|rot|-roll|xor|identity-tuple|boolean)(?=\\s|\$)';
  const definition_53 =
      '(^|\\s)(?:member-eq\\?|mismatch|append|assert-sequence=|longer|repetition|clone-like|3sequence|assert-sequence\\?|last-index-from|reversed|index-from|cut\\*|pad-tail|join-as|remove-eq!|concat-as|but-last|snip|nths|nth|sequence|longest|slice\\?|<slice>|remove-nth|tail-slice|empty\\?|tail\\*|member\\?|virtual-sequence\\?|set-length|drop-prefix|iota|unclip|bounds-error\\?|unclip-last-slice|non-negative-integer-expected|non-negative-integer-expected\\?|midpoint@|longer\\?|\\?set-nth|\\?first|rest-slice|prepend-as|prepend|fourth|sift|subseq-start|new-sequence|\\?last|like|first4|1sequence|reverse|slice|virtual@|repetition\\?|set-last|index|4sequence|max-length|set-second|immutable-sequence|first2|first3|supremum|unclip-slice|suffix!|insert-nth|tail|3append|short|suffix|concat|flip|immutable\\?|reverse!|2sequence|sum|delete-all|indices|snip-slice|<iota>|check-slice|sequence\\?|head|append-as|halves|sequence=|collapse-slice|\\?second|slice-error\\?|product|bounds-check\\?|bounds-check|immutable|virtual-exemplar|harvest|remove|pad-head|last|set-fourth|cartesian-product|remove-eq|shorten|shorter|reversed\\?|shorter\\?|shortest|head-slice|pop\\*|tail-slice\\*|but-last-slice|iota\\?|append!|cut-slice|new-resizable|head-slice\\*|sequence-hashcode|pop|set-nth|\\?nth|second|join|immutable-sequence\\?|<reversed>|3append-as|virtual-sequence|subseq\\?|remove-nth!|length|last-index|lengthen|assert-sequence|copy|move|third|first|tail\\?|set-first|prefix|bounds-error|<repetition>|exchange|surround|cut|min-length|set-third|push-all|head\\?|subseq-start-from|delete-slice|rest|sum-lengths|head\\*|infimum|remove!|glue|slice-error|subseq|push|replace-slice|subseq-as|unclip-last)(?=\\s|\$)';
  const definition_54 =
      '(^|\\s)(?:number=|next-power-of-2|\\?1\\+|fp-special\\?|imaginary-part|float>bits|number\\?|fp-infinity\\?|bignum\\?|fp-snan\\?|denominator|gcd|\\*|\\+|fp-bitwise=|-|u>=|\\/|>=|bitand|power-of-2\\?|log2-expects-positive|neg\\?|<|log2|>|integer\\?|number|bits>double|2\\/|zero\\?|bits>float|float\\?|shift|ratio\\?|rect>|even\\?|ratio|fp-sign|bitnot|>fixnum|complex\\?|\\/i|integer>fixnum|\\/f|sgn|>bignum|next-float|u<|u>|mod|recip|rational|>float|2\\^|integer|fixnum\\?|neg|fixnum|sq|bignum|>rect|bit\\?|fp-qnan\\?|simple-gcd|complex|<fp-nan>|real|>fraction|double>bits|bitor|rem|fp-nan-payload|real-part|log2-expects-positive\\?|prev-float|align|unordered\\?|float|fp-nan\\?|abs|bitxor|integer>fixnum-strict|u<=|odd\\?|<=|\\/mod|>integer|real\\?|rational\\?|numerator)(?=\\s|\$)';
  const definition_55 = '(^|\\s)<(?!=+>|-+>)\\S+>(?=\\s|\$)';
  const definition_56 =
      '(^|\\s)(?:=======|recursive|flushable|>>|<<<<<<|M\\\\|B|PRIVATE>|\\\\|======|final|inline|delimiter|deprecated|<PRIVATE|>>>>>>|<<<<<<<|parse-complex|malformed-complex|read-only|>>>>>>>|call-next-method|<<|foldable|\\\$|\\\$\\[|\\\$\\{)(?=\\s|\$)';
  const definition_58 =
      '(^|\\s)(?!")(?:(?:change|new|set|with)-\\S+|\\\$\\S+|>[^>\\s]+|[^:>\\s]+>|[^>\\s]+>[^>\\s]+|\\+[^+\\s]+\\+|[^?\\s]+\\?|\\?[^?\\s]+|[^>\\s]+>>|>>[^>\\s]+|[^<\\s]+<<|\\([^()\\s]+\\)|[^!\\s]+!|[^*\\s]\\S*\\*|[^.\\s]\\S*\\.)(?=\\s|\$)';
  const definition_59 =
      '(^|\\s)(?:[A-Z0-9\\-]+#?)?:{1,2}\\s+(?:;\\S+|(?!;)\\S+)(?=\\s|\$)';
  const definition_60 = '(\\s)(?:;|:>)(?=\\s|\$)';
  const definition_92 = '(^|\\s)[a-z]*\\{(?=\\s)';
  const definition_93 = '(\\s)\\}(?=\\s|\$)';
  const definition_94 = '(^|\\s)\\[(?=\\s)';
  const definition_95 = '(\\s)\\](?=\\s|\$)';
  const definition_65 = '(^|\\s)[^"\\s]\\S*(?=\\s|\$)';
  const definition_66 = '"(?:\\\\\\S|[^"\\\\])*"';
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_68),
    lookbehind: true,
    greedy: true,
    inside: definition_69,
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_70),
    lookbehind: true,
    greedy: true,
    inside: definition_69,
    global: true,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_71),
    lookbehind: true,
    greedy: true,
    inside: definition_69,
    global: true,
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_72),
    lookbehind: true,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_73, caseSensitive: false),
    lookbehind: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_74),
    lookbehind: true,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_75),
    lookbehind: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_76),
    lookbehind: true,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_77, caseSensitive: false),
    lookbehind: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_78),
    lookbehind: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_79, caseSensitive: false),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    aliases: ['number'],
    inside: definition_35,
  );
  final definition_82 = GrammarToken(
    pattern: RegExp(definition_98),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    greedy: true,
    aliases: ['string'],
    inside: definition_39,
    global: true,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_84),
    lookbehind: true,
    greedy: true,
    aliases: ['string'],
    inside: definition_85,
    global: true,
  );
  final definition_99 = GrammarToken(
    pattern: RegExp(definition_101),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_86),
    lookbehind: true,
    greedy: true,
    aliases: ['string'],
    inside: definition_67,
    global: true,
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_87),
    lookbehind: true,
    greedy: true,
    aliases: ['string'],
    inside: definition_67,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_43),
    lookbehind: true,
    aliases: ['function'],
    inside: definition_45,
  );
  final definition_88 = GrammarToken(
    pattern: RegExp(definition_100),
    lookbehind: true,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_89),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_90),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_91),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_53),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_54),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_55),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_56),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_58),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_59),
    lookbehind: true,
    greedy: true,
    aliases: ['function'],
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_60),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_92, caseSensitive: false),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_93),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_94),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_95),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_65),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_66),
    greedy: true,
    inside: definition_67,
    global: true,
  );
  definition_69.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_35.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_80))],
    'keyword': [GrammarToken(pattern: RegExp(definition_81))],
    'operator': [definition_82],
  });
  definition_39.addAllTokens({
    'number': [GrammarToken(pattern: RegExp(definition_83))],
  });
  definition_85.addAllTokens({
    'number': [GrammarToken(pattern: RegExp(definition_96))],
    'semicolon-or-setlocal': [definition_99],
  });
  definition_67.addAllTokens({
    'number': [GrammarToken(pattern: RegExp(definition_96))],
  });
  definition_45.addAllTokens({
    'string': [definition_88],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_22,
      definition_23,
      definition_24,
    ],
    'number': [
      definition_25,
      definition_26,
      definition_27,
      definition_28,
      definition_29,
      definition_30,
      definition_31,
      definition_32,
    ],
    'regexp': [definition_3],
    'boolean': [definition_4],
    'custom-string': [definition_5],
    'multiline-string': [
      definition_40,
      definition_41,
      definition_42,
    ],
    'special-using': [definition_7],
    'stack-effect-delimiter': [
      definition_46,
      definition_47,
      definition_48,
    ],
    'combinators': [definition_9],
    'kernel-builtin': [definition_10],
    'sequences-builtin': [definition_11],
    'math-builtin': [definition_12],
    'constructor-word': [definition_13],
    'other-builtin-syntax': [definition_14],
    'conventionally-named-word': [definition_15],
    'colon-syntax': [definition_16],
    'semicolon-or-setlocal': [definition_17],
    'curly-brace-literal-delimiter': [
      definition_61,
      definition_62,
    ],
    'quotation-delimiter': [
      definition_63,
      definition_64,
    ],
    'normal-word': [definition_20],
    'string': [definition_21],
  });

  return LanguageProto(
    'factor',
    definition_0,
  );
}

final languageFactor = _create();
