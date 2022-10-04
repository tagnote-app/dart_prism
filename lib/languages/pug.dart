// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_28 = Grammar();
  final definition_30 = Grammar();
  final definition_32 = Grammar();
  final definition_34 = Grammar();
  final definition_36 = Grammar();
  final definition_38 = Grammar();
  final definition_40 = Grammar();
  final definition_42 = Grammar();
  final definition_44 = Grammar();
  final definition_46 = Grammar();
  final definition_52 = Grammar();
  final definition_113 = Grammar();
  final definition_84 = Grammar();
  final definition_86 = Grammar();
  final definition_59 = Grammar();
  final definition_137 = Grammar();
  const definition_24 = '(^([\\t ]*))\\/\\/.*(?:(?:\\r?\\n|\\r)\\2[\\t ].+)*';
  const definition_25 =
      '(^([\\t ]*)script\\b.*\\.[\\t ]*)(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_27 =
      '(^([\\t ]*)):atpl(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_92 = '^:[\\w-]+';
  const definition_80 = '\\S[\\s\\S]*';
  const definition_29 =
      '(^([\\t ]*)):coffee(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_31 =
      '(^([\\t ]*)):ejs(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_33 =
      '(^([\\t ]*)):handlebars(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_35 =
      '(^([\\t ]*)):less(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_37 =
      '(^([\\t ]*)):livescript(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_39 =
      '(^([\\t ]*)):markdown(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_41 =
      '(^([\\t ]*)):sass(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_43 =
      '(^([\\t ]*)):stylus(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_45 =
      '(^([\\t ]*)):.+(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_47 =
      '(^([\\t ]*)[\\w\\-#.]+\\.[\\t ]*)(?:(?:\\r?\\n|\\r(?!\\n))(?:\\2[\\t ].+|\\s*?(?=\\r?\\n|\\r)))+';
  const definition_48 = '(^[\\t ]*)<.+';
  const definition_50 = '((?:^|\\n)[\\t ]*)doctype(?: .+)?';
  const definition_51 =
      '(^[\\t ]*)(?:case|default|each|else|if|unless|when|while)\\b(?: .+)?';
  const definition_112 = '^each .+? in\\b';
  const definition_131 = '\\b(?:each|in)\\b';
  const definition_132 = ',';
  const definition_114 = '^(?:case|default|else|if|unless|when|while)\\b';
  const definition_53 =
      '(^[\\t ]*)(?:append|block|extends|include|prepend)\\b.+';
  const definition_83 = '(^[\\t ]*)mixin .+';
  const definition_116 = '^mixin';
  const definition_117 = '\\w+(?=\\s*\\(|\\s*\$)';
  const definition_118 = '[(),.]';
  const definition_85 = '(^[\\t ]*)\\+.+';
  const definition_133 = '^\\+\\w+';
  const definition_56 = '(^[\\t ]*script(?:(?:&[^(]+)?\\([^)]+\\))*[\\t ]).+';
  const definition_57 =
      '(^[\\t ]*(?!-)[\\w\\-#.]*[\\w\\-](?:(?:&[^(]+)?\\([^)]+\\))*\\/?[\\t ]).+';
  const definition_58 =
      '(^[\\t ]*)(?!-)[\\w\\-#.]*[\\w\\-](?:(?:&[^(]+)?\\([^)]+\\))*\\/?:?';
  const definition_135 = '&[^(]+\\([^)]+\\)';
  const definition_136 = '\\([^)]+\\)';
  const definition_141 = '(=\\s*(?!\\s))(?:\\{[^}]*\\}|[^,)\\r\\n]+)';
  const definition_139 = '[\\w-]+(?=\\s*!?=|\\s*[,)])';
  const definition_140 = '[!=(),]+';
  const definition_88 = ':';
  const definition_89 = '#[\\w\\-]+';
  const definition_90 = '\\.[\\w\\-]+';
  const definition_91 = '(^[\\t ]*(?:-|!?=)).+';
  const definition_23 = '[.\\-!=|]+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_24, multiLine: true),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_25, multiLine: true),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_27, multiLine: true),
    lookbehind: true,
    inside: definition_28,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['twig', 'language-twig'],
    inside: 'twig',
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_29, multiLine: true),
    lookbehind: true,
    inside: definition_30,
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['coffeescript', 'language-coffeescript'],
    inside: 'coffeescript',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_31, multiLine: true),
    lookbehind: true,
    inside: definition_32,
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['ejs', 'language-ejs'],
    inside: 'ejs',
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_33, multiLine: true),
    lookbehind: true,
    inside: definition_34,
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['handlebars', 'language-handlebars'],
    inside: 'handlebars',
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_35, multiLine: true),
    lookbehind: true,
    inside: definition_36,
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['less', 'language-less'],
    inside: 'less',
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_37, multiLine: true),
    lookbehind: true,
    inside: definition_38,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['livescript', 'language-livescript'],
    inside: 'livescript',
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_39, multiLine: true),
    lookbehind: true,
    inside: definition_40,
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['markdown', 'language-markdown'],
    inside: 'markdown',
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_41, multiLine: true),
    lookbehind: true,
    inside: definition_42,
  );
  final definition_75 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['scss', 'language-scss'],
    inside: 'scss',
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_43, multiLine: true),
    lookbehind: true,
    inside: definition_44,
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_78 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['stylus', 'language-stylus'],
    inside: 'stylus',
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_45, multiLine: true),
    lookbehind: true,
    inside: definition_46,
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_92),
    aliases: ['variable'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_47, multiLine: true),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_48, multiLine: true),
    lookbehind: true,
    inside: 'markup',
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_50),
    lookbehind: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_51, multiLine: true),
    lookbehind: true,
    inside: definition_52,
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_112),
    inside: definition_113,
  );
  final definition_82 = GrammarToken(
    pattern: RegExp(definition_114),
    aliases: ['keyword'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_53, multiLine: true),
    lookbehind: true,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_83, multiLine: true),
    lookbehind: true,
    inside: definition_84,
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_85, multiLine: true),
    lookbehind: true,
    inside: definition_86,
  );
  final definition_119 = GrammarToken(
    pattern: RegExp(definition_133),
    aliases: ['function'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_56, multiLine: true),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_57, multiLine: true),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_58, multiLine: true),
    lookbehind: true,
    inside: definition_59,
  );
  final definition_120 = GrammarToken(
    pattern: RegExp(definition_135),
    inside: 'javascript',
  );
  final definition_121 = GrammarToken(
    pattern: RegExp(definition_136),
    inside: definition_137,
  );
  final definition_138 = GrammarToken(
    pattern: RegExp(definition_141),
    lookbehind: true,
    inside: 'javascript',
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_91, multiLine: true),
    lookbehind: true,
    inside: 'javascript',
  );
  definition_52.rest = 'javascript';
  definition_86.rest = 'javascript';
  definition_28.addAllTokens({
    'filter-name': [definition_61],
    'text': [definition_62],
  });
  definition_30.addAllTokens({
    'filter-name': [definition_63],
    'text': [definition_64],
  });
  definition_32.addAllTokens({
    'filter-name': [definition_65],
    'text': [definition_66],
  });
  definition_34.addAllTokens({
    'filter-name': [definition_67],
    'text': [definition_68],
  });
  definition_36.addAllTokens({
    'filter-name': [definition_69],
    'text': [definition_70],
  });
  definition_38.addAllTokens({
    'filter-name': [definition_71],
    'text': [definition_72],
  });
  definition_40.addAllTokens({
    'filter-name': [definition_73],
    'text': [definition_74],
  });
  definition_42.addAllTokens({
    'filter-name': [definition_75],
    'text': [definition_76],
  });
  definition_44.addAllTokens({
    'filter-name': [definition_77],
    'text': [definition_78],
  });
  definition_46.addAllTokens({
    'filter-name': [definition_79],
    'text': [GrammarToken(pattern: RegExp(definition_80))],
  });
  definition_113.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_131))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_132))],
  });
  definition_52.addAllTokens({
    'each': [definition_81],
    'branch': [definition_82],
  });
  definition_84.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_116))],
    'function': [GrammarToken(pattern: RegExp(definition_117))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_118))],
  });
  definition_86.addAllTokens({
    'name': [definition_119],
  });
  definition_137.addAllTokens({
    'attr-value': [definition_138],
    'attr-name': [GrammarToken(pattern: RegExp(definition_139))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_140))],
  });
  definition_59.addAllTokens({
    'attributes': [
      definition_120,
      definition_121,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_88))],
    'attr-id': [GrammarToken(pattern: RegExp(definition_89))],
    'attr-class': [GrammarToken(pattern: RegExp(definition_90))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'multiline-script': [definition_2],
    'filter-atpl': [definition_3],
    'filter-coffee': [definition_4],
    'filter-ejs': [definition_5],
    'filter-handlebars': [definition_6],
    'filter-less': [definition_7],
    'filter-livescript': [definition_8],
    'filter-markdown': [definition_9],
    'filter-sass': [definition_10],
    'filter-stylus': [definition_11],
    'filter': [definition_12],
    'multiline-plain-text': [definition_13],
    'markup': [definition_14],
    'doctype': [definition_15],
    'flow-control': [definition_16],
    'keyword': [definition_17],
    'mixin': [
      definition_54,
      definition_55,
    ],
    'script': [definition_19],
    'plain-text': [definition_20],
    'tag': [definition_21],
    'code': [
      definition_60,
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_23))],
  });

  return LanguageProto(
    'pug',
    definition_0,
    requiredDependencies: ['markup', 'xml', 'javascript', 'clike'],
  );
}

final languagePug = _create();
