// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_24 = Grammar();
  final definition_26 = Grammar();
  final definition_28 = Grammar();
  final definition_30 = Grammar();
  final definition_32 = Grammar();
  final definition_34 = Grammar();
  final definition_36 = Grammar();
  final definition_38 = Grammar();
  final definition_40 = Grammar();
  final definition_42 = Grammar();
  final definition_47 = Grammar();
  final definition_114 = Grammar();
  final definition_51 = Grammar();
  const definition_19 =
      '((?:^|\\r?\\n|\\r)([\\t ]*))(?:\\/|-#).*(?:(?:\\r?\\n|\\r)\\2[\\t ].+)*';
  const definition_53 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)(?:[~-]|[&!]?=)).*,[\\t ]*(?:(?:\\r?\\n|\\r)\\2[\\t ].*,[\\t ]*)*(?:(?:\\r?\\n|\\r)\\2[\\t ].+)';
  const definition_54 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)(?:[~-]|[&!]?=)).*\\|[\\t ]*(?:(?:\\r?\\n|\\r)\\2[\\t ].*\\|[\\t ]*)*';
  const definition_23 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):css(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_78 = '^:[\\w-]+';
  const definition_80 = '[\\s\\S]+';
  const definition_25 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):coffee(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_27 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):erb(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_29 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):javascript(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_31 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):less(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_33 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):markdown(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_35 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):ruby(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_37 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):scss(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_39 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):textile(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_41 =
      '((?:^|\\r?\\n|\\r)([\\t ]*)):[\\w-]+(?:(?:\\r?\\n|\\r)(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_43 = '((?:^|\\r?\\n|\\r)[\\t ]*)<.+';
  const definition_45 = '((?:^|\\r?\\n|\\r)[\\t ]*)!!!(?: .+)?';
  const definition_46 =
      '((?:^|\\r?\\n|\\r)[\\t ]*)[%.#][\\w\\-#.]*[\\w\\-](?:\\([^)]+\\)|\\{(?:\\{[^}]+\\}|[^{}])+\\}|\\[[^\\]]+\\])*[\\/<>]*';
  const definition_112 = '(^|[^#])\\{(?:\\{[^}]+\\}|[^{}])+\\}';
  const definition_113 = '\\([^)]+\\)';
  const definition_119 = '(=\\s*)(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|[^)\\s]+)';
  const definition_117 = '[\\w:-]+(?=\\s*!?=|\\s*[,)])';
  const definition_118 = '[=(),]';
  const definition_115 = '\\[[^\\]]+\\]';
  const definition_75 = '[<>]';
  const definition_48 = '((?:^|\\r?\\n|\\r)[\\t ]*(?:[~-]|[&!]?=)).+';
  const definition_50 = '#\\{[^}]+\\}';
  const definition_101 = '^#\\{|\\}\$';
  const definition_52 = '((?:^|\\r?\\n|\\r)[\\t ]*)[~=\\-&!]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
    aliases: ['comment'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_53),
    lookbehind: true,
    inside: 'ruby',
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_54),
    lookbehind: true,
    inside: 'ruby',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    inside: definition_24,
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    inside: definition_26,
  );
  final definition_57 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['coffeescript', 'language-coffeescript'],
    inside: 'coffeescript',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    inside: definition_28,
  );
  final definition_59 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['erb', 'language-erb'],
    inside: 'erb',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    inside: definition_30,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    inside: definition_32,
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['less', 'language-less'],
    inside: 'less',
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    inside: definition_34,
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['markdown', 'language-markdown'],
    inside: 'markdown',
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    inside: definition_36,
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['ruby', 'language-ruby'],
    inside: 'ruby',
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    inside: definition_38,
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['scss', 'language-scss'],
    inside: 'scss',
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
    inside: definition_40,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['textile', 'language-textile'],
    inside: 'textile',
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
    inside: definition_42,
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_78),
    aliases: ['symbol'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_43),
    lookbehind: true,
    inside: 'markup',
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_46),
    lookbehind: true,
    inside: definition_47,
  );
  final definition_98 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: 'ruby',
  );
  final definition_99 = GrammarToken(
    pattern: RegExp(definition_113),
    inside: definition_114,
  );
  final definition_116 = GrammarToken(
    pattern: RegExp(definition_119),
    lookbehind: true,
  );
  final definition_100 = GrammarToken(
    pattern: RegExp(definition_115),
    inside: 'ruby',
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_48),
    lookbehind: true,
    inside: 'ruby',
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_50),
    inside: definition_51,
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_101),
    aliases: ['punctuation'],
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_80),
    inside: 'ruby',
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
  );
  definition_24.addAllTokens({
    'filter-name': [definition_55],
    'text': [definition_56],
  });
  definition_26.addAllTokens({
    'filter-name': [definition_57],
    'text': [definition_58],
  });
  definition_28.addAllTokens({
    'filter-name': [definition_59],
    'text': [definition_60],
  });
  definition_30.addAllTokens({
    'filter-name': [definition_61],
    'text': [definition_62],
  });
  definition_32.addAllTokens({
    'filter-name': [definition_63],
    'text': [definition_64],
  });
  definition_34.addAllTokens({
    'filter-name': [definition_65],
    'text': [definition_66],
  });
  definition_36.addAllTokens({
    'filter-name': [definition_67],
    'text': [definition_68],
  });
  definition_38.addAllTokens({
    'filter-name': [definition_69],
    'text': [definition_70],
  });
  definition_40.addAllTokens({
    'filter-name': [definition_71],
    'text': [definition_72],
  });
  definition_42.addAllTokens({
    'filter-name': [definition_73],
  });
  definition_114.addAllTokens({
    'attr-value': [definition_116],
    'attr-name': [GrammarToken(pattern: RegExp(definition_117))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_118))],
  });
  definition_47.addAllTokens({
    'attributes': [
      definition_98,
      definition_99,
      definition_100,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_75))],
  });
  definition_51.addAllTokens({
    'delimiter': [definition_76],
    'ruby': [definition_77],
  });
  definition_0.addAllTokens({
    'multiline-comment': [definition_1],
    'multiline-code': [
      definition_21,
      definition_22,
    ],
    'filter-css': [definition_3],
    'filter-coffee': [definition_4],
    'filter-erb': [definition_5],
    'filter-javascript': [definition_6],
    'filter-less': [definition_7],
    'filter-markdown': [definition_8],
    'filter-ruby': [definition_9],
    'filter-scss': [definition_10],
    'filter-textile': [definition_11],
    'filter': [definition_12],
    'markup': [definition_13],
    'doctype': [definition_14],
    'tag': [definition_15],
    'code': [definition_16],
    'interpolation': [definition_17],
    'punctuation': [definition_18],
  });

  return LanguageProto(
    'haml',
    definition_0,
    requiredDependencies: ['ruby', 'clike'],
  );
}

final languageHaml = _create();
