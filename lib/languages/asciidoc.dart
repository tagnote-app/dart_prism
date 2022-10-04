// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_25 = Grammar();
  final definition_59 = Grammar();
  final definition_27 = Grammar();
  final definition_61 = Grammar();
  final definition_51 = Grammar();
  final definition_43 = Grammar();
  final definition_89 = Grammar();
  final definition_91 = Grammar();
  final definition_103 = Grammar();
  final definition_53 = Grammar();
  final definition_94 = Grammar();
  final definition_96 = Grammar();
  final definition_98 = Grammar();
  final definition_100 = Grammar();
  final definition_29 = Grammar();
  final definition_63 = Grammar();
  final definition_31 = Grammar();
  final definition_65 = Grammar();
  final definition_39 = Grammar();
  final definition_67 = Grammar();
  const definition_22 = '^(\\/{4,})\$[\\s\\S]*?^\\1';
  const definition_24 =
      '^\\|={3,}(?:(?:\\r?\\n|\\r(?!\\n)).*)*?(?:\\r?\\n|\\r)\\|={3,}\$';
  const definition_85 =
      '(?:(?:(?:\\d+(?:\\.\\d+)?|\\.\\d+)[+*](?:[<^>](?:\\.[<^>])?|\\.[<^>])?|[<^>](?:\\.[<^>])?|\\.[<^>])[a-z]*|[a-z]+)(?=\\|)';
  const definition_87 = '(^|[^\\\\])[|!]=*';
  const definition_26 = '^(\\+{4,})\$[\\s\\S]*?^\\1\$';
  const definition_60 = '^\\++|\\++\$';
  const definition_50 =
      '\\b[a-z\\d][a-z\\d-]*::?(?:[^\\s\\[\\]]*\\[(?:[^\\]\\\\"\']|(["\'])(?:(?!\\1)[^\\\\]|\\\\.)*\\1|\\\\.)*\\])';
  const definition_77 = '^[a-z\\d-]+(?=:)';
  const definition_78 = '^::?';
  const definition_92 =
      '(?:\\[(?:[^\\]\\\\"\']|(["\'])(?:(?!\\1)[^\\\\]|\\\\.)*\\1|\\\\.)*\\])';
  const definition_88 = '([\$`])(?:(?!\\1)[^\\\\]|\\\\.)*\\1';
  const definition_101 = '^[\$`]|[\$`]\$';
  const definition_90 = '\'(?:[^\'\\\\]|\\\\.)*\'';
  const definition_102 = '^\'|\'\$';
  const definition_52 =
      '(^|[^\\\\])(?:(?:\\B\\[(?:[^\\]\\\\"\']|(["\'])(?:(?!\\2)[^\\\\]|\\\\.)*\\2|\\\\.)*\\])?(?:\\b_(?!\\s)(?: _|[^_\\\\\\r\\n]|\\\\.)+(?:(?:\\r?\\n|\\r)(?: _|[^_\\\\\\r\\n]|\\\\.)+)*_\\b|\\B``(?!\\s).+?(?:(?:\\r?\\n|\\r).+?)*\'\'\\B|\\B`(?!\\s)(?:[^`\'\\s]|\\s+\\S)+[\'`]\\B|\\B([\'*+#])(?!\\s)(?: \\3|(?!\\3)[^\\\\\\r\\n]|\\\\.)+(?:(?:\\r?\\n|\\r)(?: \\3|(?!\\3)[^\\\\\\r\\n]|\\\\.)+)*\\3\\B)|(?:\\[(?:[^\\]\\\\"\']|(["\'])(?:(?!\\4)[^\\\\]|\\\\.)*\\4|\\\\.)*\\])?(?:(__|\\*\\*|\\+\\+\\+?|##|\\\$\\\$|[~^]).+?(?:(?:\\r?\\n|\\r).+?)*\\5|\\{[^}\\r\\n]+\\}|\\[\\[\\[?.+?(?:(?:\\r?\\n|\\r).+?)*\\]?\\]\\]|<<.+?(?:(?:\\r?\\n|\\r).+?)*>>|\\(\\(\\(?.+?(?:(?:\\r?\\n|\\r).+?)*\\)?\\)\\)))';
  const definition_42 =
      '(^[ \\t]*)\\[(?!\\[)(?:(["\'\$`])(?:(?!\\2)[^\\\\]|\\\\.)*\\2|\\[(?:[^\\[\\]\\\\]|\\\\.)*\\]|[^\\[\\]\\\\"\'\$`]|\\\\.)*\\]';
  const definition_93 = '^(?:\\[\\[\\[?.+?\\]?\\]\\]|<<.+?>>)\$';
  const definition_104 = '^(?:\\[\\[\\[?|<<)|(?:\\]\\]\\]?|>>)\$';
  const definition_95 = '^\\{.+\\}\$';
  const definition_110 = '(^\\{)[a-z\\d,+_-]+';
  const definition_106 = '^[=?!#%@\$]|!(?=[:}])';
  const definition_107 = '^\\{|\\}\$|::?';
  const definition_97 = '^([\'_])[\\s\\S]+\\1\$';
  const definition_108 = '^(?:\'\'?|__?)|(?:\'\'?|__?)\$';
  const definition_99 = '^\\*[\\s\\S]+\\*\$';
  const definition_109 = '^\\*\\*?|\\*\\*?\$';
  const definition_84 =
      '^(?:``?|\\+{1,3}|##?|\\\$\\\$|[~^]|\\(\\(\\(?)|(?:\'\'?|\\+{1,3}|##?|\\\$\\\$|[~^`]|\\)?\\)\\))\$';
  const definition_54 = '\\((?:C|R|TM)\\)';
  const definition_20 = '&#?[\\da-z]{1,8};';
  const definition_70 = '"(?:[^"\\\\]|\\\\.)*"';
  const definition_71 = '\\w+(?==)';
  const definition_72 = '^\\[|\\]\$|,';
  const definition_73 = '=';
  const definition_74 = '(?!^\\s+\$).+';
  const definition_28 = '^(-{4,}|\\.{4,})\$[\\s\\S]*?^\\1\$';
  const definition_62 = '^(?:-+|\\.+)|(?:-+|\\.+)\$';
  const definition_75 = '(^[ \\t]*)<?\\d*>';
  const definition_76 = '<\\d+>';
  const definition_30 = '^(--|\\*{4,}|_{4,}|={4,})\$[\\s\\S]*?^\\1\$';
  const definition_64 = '^(?:-+|\\*+|_+|=+)|(?:-+|\\*+|_+|=+)\$';
  const definition_32 =
      '(^[ \\t]*)(?:-|\\*{1,5}|\\.{1,5}|(?:[a-z]|\\d+)\\.|[xvi]+\\))(?= )';
  const definition_36 =
      '((\\r?\\n|\\r)\\2)([ \\t]+)\\S.*(?:(?:\\r?\\n|\\r)\\3.+)*(?=\\2{2}|\$)';
  const definition_9 = '^\\/\\/.*';
  const definition_40 = '^:[^:\\r\\n]+:(?: .*?(?: \\+(?:\\r?\\n|\\r).*?)*)?\$';
  const definition_44 = '^\'{3,}\$';
  const definition_45 = '^<{3,}\$';
  const definition_46 = '^(?:CAUTION|IMPORTANT|NOTE|TIP|WARNING):';
  const definition_34 = '(^[ \\t]*)[a-z\\d].+(?::{2,4}|;;)(?=\\s)';
  const definition_56 = '(^| )\\+\$';
  const definition_37 =
      '^.+(?:\\r?\\n|\\r)(?:={3,}|-{3,}|~{3,}|\\^{3,}|\\+{3,})\$|^={1,5} .+|^\\.(?![\\s.]).*';
  const definition_66 = '^(?:\\.|=+)|(?:=+|-+|~+|\\^+|\\++)\$';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_22, multiLine: true),
    aliases: ['comment'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_24, multiLine: true),
    inside: definition_25,
  );
  final definition_57 = GrammarToken(
    pattern: RegExp(definition_85),
    aliases: ['attr-value'],
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_87),
    lookbehind: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_26, multiLine: true),
    inside: definition_27,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_50),
    inside: definition_51,
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_92),
    inside: definition_43,
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_88),
    inside: definition_89,
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_90),
    inside: definition_91,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_52, multiLine: true),
    lookbehind: true,
    inside: definition_53,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_42, multiLine: true),
    lookbehind: true,
    inside: definition_43,
  );
  final definition_80 = GrammarToken(
    pattern: RegExp(definition_93),
    inside: definition_94,
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_95),
    inside: definition_96,
  );
  final definition_105 = GrammarToken(
    pattern: RegExp(definition_110),
    lookbehind: true,
  );
  final definition_82 = GrammarToken(
    pattern: RegExp(definition_97),
    inside: definition_98,
  );
  final definition_83 = GrammarToken(
    pattern: RegExp(definition_99),
    inside: definition_100,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_54),
    aliases: ['builtin'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_28, multiLine: true),
    inside: definition_29,
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_75, multiLine: true),
    lookbehind: true,
    aliases: ['symbol'],
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_76),
    aliases: ['symbol'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_30, multiLine: true),
    inside: definition_31,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_32, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_40, multiLine: true),
    aliases: ['tag'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_44, multiLine: true),
    aliases: ['punctuation'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_45, multiLine: true),
    aliases: ['punctuation'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_46, multiLine: true),
    aliases: ['keyword'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_34, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['symbol'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_56, multiLine: true),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_37, multiLine: true),
    aliases: ['important'],
    inside: definition_39,
  );
  definition_91.rest = definition_103;
  definition_27.rest = definition_61;
  definition_29.rest = definition_63;
  definition_31.rest = definition_65;
  definition_39.rest = definition_67;
  definition_25.rest = definition_59;
  definition_89.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_101))],
  });
  definition_94.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_104))],
  });
  definition_96.addAllTokens({
    'variable': [definition_105],
    'operator': [GrammarToken(pattern: RegExp(definition_106))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_107))],
  });
  definition_98.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_108))],
  });
  definition_100.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_109))],
  });
  definition_53.addAllTokens({
    'attributes': [definition_12],
    'url': [definition_80],
    'attribute-ref': [definition_81],
    'italic': [definition_82],
    'bold': [definition_83],
    'punctuation': [GrammarToken(pattern: RegExp(definition_84))],
  });
  definition_103.addAllTokens({
    'macro': [definition_17],
    'inline': [definition_18],
    'replacement': [definition_19],
    'entity': [
      GrammarToken(pattern: RegExp(definition_20, caseSensitive: false))
    ],
  });
  definition_91.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_102))],
  });
  definition_43.addAllTokens({
    'quoted': [definition_68],
    'interpreted': [definition_69],
    'string': [GrammarToken(pattern: RegExp(definition_70))],
    'variable': [GrammarToken(pattern: RegExp(definition_71))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_72))],
    'operator': [GrammarToken(pattern: RegExp(definition_73))],
    'attr-value': [GrammarToken(pattern: RegExp(definition_74))],
  });
  definition_51.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_77))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_78))],
    'attributes': [definition_79],
  });
  definition_61.addAllTokens({
    'macro': [definition_17],
  });
  definition_27.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_60))],
  });
  definition_63.addAllTokens({
    'callout': [
      definition_48,
      definition_49,
    ],
  });
  definition_29.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_62))],
  });
  definition_65.addAllTokens({
    'table': [definition_2],
    'list-punctuation': [definition_6],
    'indented-block': [definition_8],
    'comment': [GrammarToken(pattern: RegExp(definition_9, multiLine: true))],
    'attribute-entry': [definition_11],
    'attributes': [definition_12],
    'hr': [definition_13],
    'page-break': [definition_14],
    'admonition': [definition_15],
    'list-label': [definition_7],
    'macro': [definition_17],
    'inline': [definition_18],
    'replacement': [definition_19],
    'entity': [
      GrammarToken(pattern: RegExp(definition_20, caseSensitive: false))
    ],
    'line-continuation': [definition_21],
  });
  definition_31.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_64))],
  });
  definition_67.addAllTokens({
    'macro': [definition_17],
    'inline': [definition_18],
    'replacement': [definition_19],
    'entity': [
      GrammarToken(pattern: RegExp(definition_20, caseSensitive: false))
    ],
  });
  definition_39.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_66))],
  });
  definition_59.addAllTokens({
    'comment-block': [definition_1],
    'passthrough-block': [definition_3],
    'literal-block': [definition_4],
    'other-block': [definition_5],
    'list-punctuation': [definition_6],
    'indented-block': [definition_8],
    'comment': [GrammarToken(pattern: RegExp(definition_9, multiLine: true))],
    'title': [definition_10],
    'attribute-entry': [definition_11],
    'attributes': [definition_12],
    'hr': [definition_13],
    'page-break': [definition_14],
    'admonition': [definition_15],
    'list-label': [definition_7],
    'callout': [
      definition_48,
      definition_49,
    ],
    'macro': [definition_17],
    'inline': [definition_18],
    'replacement': [definition_19],
    'entity': [
      GrammarToken(pattern: RegExp(definition_20, caseSensitive: false))
    ],
    'line-continuation': [definition_21],
  });
  definition_25.addAllTokens({
    'specifiers': [definition_57],
    'punctuation': [definition_58],
  });
  definition_0.addAllTokens({
    'comment-block': [definition_1],
    'table': [definition_2],
    'passthrough-block': [definition_3],
    'literal-block': [definition_4],
    'other-block': [definition_5],
    'list-punctuation': [definition_6],
    'list-label': [definition_7],
    'indented-block': [definition_8],
    'comment': [GrammarToken(pattern: RegExp(definition_9, multiLine: true))],
    'title': [definition_10],
    'attribute-entry': [definition_11],
    'attributes': [definition_12],
    'hr': [definition_13],
    'page-break': [definition_14],
    'admonition': [definition_15],
    'callout': [
      definition_48,
      definition_49,
    ],
    'macro': [definition_17],
    'inline': [definition_18],
    'replacement': [definition_19],
    'entity': [
      GrammarToken(pattern: RegExp(definition_20, caseSensitive: false))
    ],
    'line-continuation': [definition_21],
  });

  return LanguageProto(
    'asciidoc',
    definition_0,
    aliases: ['adoc'],
  );
}

final languageAsciidoc = _create();
