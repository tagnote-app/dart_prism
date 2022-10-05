// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_31 = Grammar();
  final definition_33 = Grammar();
  final definition_35 = Grammar();
  final definition_37 = Grammar();
  final definition_39 = Grammar();
  final definition_110 = Grammar();
  final definition_122 = Grammar();
  final definition_41 = Grammar();
  final definition_56 = Grammar();
  final definition_61 = Grammar();
  final definition_63 = Grammar();
  final definition_46 = Grammar();
  final definition_48 = Grammar();
  final definition_50 = Grammar();
  final definition_53 = Grammar();
  const definition_29 =
      '^([ \\t]*)(?:cards|(?:data)?lines);[\\s\\S]+?^[ \\t]*;';
  const definition_97 = '^(?:cards|(?:data)?lines)';
  const definition_73 = ';';
  const definition_32 =
      '(^proc\\s+(?:fed)?sql(?:\\s+[\\w|=]+)?;)[\\s\\S]+?(?=^(?:proc\\s+\\w+|data|quit|run);|(?![\\s\\S]))';
  const definition_98 =
      '^[ \\t]*(?:select|alter\\s+table|(?:create|describe|drop)\\s+(?:index|table(?:\\s+constraints)?|view)|create\\s+unique\\s+index|insert\\s+into|update)(?:(?:"(?:""|[^"])*"(?!")|\'(?:\'\'|[^\'])*\'(?!\'))|[^;"\'])+;';
  const definition_101 =
      '((?:^|\\s)=?)(?:catname|checkpoint execute_always|dm|endsas|filename|footnote|%include|libname|%list|lock|missing|options|page|resetline|%run|sasfile|skip|sysecho|title\\d?)\\b';
  const definition_102 =
      '(^|\\s)(?:disconnect\\s+from|begin|commit|exec(?:ute)?|reset|rollback|validate)\\b';
  const definition_26 =
      '\\b(?:\\d[\\da-f]*x|\\d+(?:\\.\\d+)?(?:e[+-]?\\d+)?)\\b';
  const definition_64 = '(?:"(?:""|[^"])*"(?!")|\'(?:\'\'|[^\'])*\'(?!\'))[bx]';
  const definition_28 = '[\$%@.(){}\\[\\];,\\\\]';
  const definition_67 = '(?:"(?:""|[^"])*"(?!")|\'(?:\'\'|[^\'])*\'(?!\'))';
  const definition_34 =
      '(^proc\\s+groovy(?:\\s+[\\w|=]+)?;)[\\s\\S]+?(?=^(?:proc\\s+\\w+|data|quit|run);|(?![\\s\\S]))';
  const definition_57 = '\\/\\*[\\s\\S]*?\\*\\/';
  const definition_92 = '(^[ \\t]*|;\\s*)\\*[^;]*;';
  const definition_103 =
      '(^[ \\t]*submit(?:\\s+(?:load|norun|parseonly))?)(?:(?:"(?:""|[^"])*"(?!")|\'(?:\'\'|[^\'])*\'(?!\'))|[^"\'])+?(?=endsubmit;)';
  const definition_69 =
      '((?:^|\\s)=?)(?:after|analysis|and|array|barchart|barwidth|begingraph|by|call|cas|cbarline|cfill|class(?:lev)?|close|column|computed?|contains|continue|data(?==)|define|delete|describe|document|do\\s+over|do|dol|drop|dul|else|end(?:comp|source)?|entryTitle|eval(?:uate)?|exec(?:ute)?|exit|file(?:name)?|fill(?:attrs)?|flist|fnc|function(?:list)?|global|goto|group(?:by)?|headline|headskip|histogram|if|infile|keep|keylabel|keyword|label|layout|leave|legendlabel|length|libname|loadactionset|merge|midpoints|name|noobs|nowd|_?null_|ods|options|or|otherwise|out(?:put)?|over(?:lay)?|plot|print|put|raise|ranexp|rannor|rbreak|retain|return|select|session|sessref|set|source|statgraph|sum|summarize|table|temp|terminate|then\\s+do|then|title\\d?|to|var|when|where|xaxisopts|y2axisopts|yaxisopts)\\b';
  const definition_106 =
      '(^|\\s)(?:submit(?:\\s+(?:load|norun|parseonly))?|endsubmit)\\b';
  const definition_36 =
      '(^proc\\s+lua(?:\\s+[\\w|=]+)?;)[\\s\\S]+?(?=^(?:proc\\s+\\w+|data|quit|run);|(?![\\s\\S]))';
  const definition_38 =
      '(^proc\\s+cas(?:\\s+[\\w|=]+)?;)[\\s\\S]+?(?=^(?:proc\\s+\\w+|quit|data);|(?![\\s\\S]))';
  const definition_109 = '((?:^|\\s)=?)saveresult\\s[^;]+';
  const definition_121 = '^saveresult\\s+\\S+';
  const definition_123 = '^(?:saveresult)';
  const definition_59 = '%?\\b\\w+(?=\\()';
  const definition_112 = '(=\\s*)[A-Z\\.]+';
  const definition_83 = '=';
  const definition_44 = '&[a-z_]\\w*';
  const definition_113 = '[A-Z]+';
  const definition_55 =
      '(^|\\s)(?:action\\s+)?(?:aStore|accessControl|aggregation|audio|autotune|bayesianNetClassifier|bioMedImage|boolRule|builtins|cardinality|cdm|clustering|conditionalRandomFields|configuration|copula|countreg|dataDiscovery|dataPreprocess|dataSciencePilot|dataStep|decisionTree|deduplication|deepLearn|deepNeural|deepRnn|ds2|ecm|entityRes|espCluster|explainModel|factmac|fastKnn|fcmpact|fedSql|freqTab|gVarCluster|gam|gleam|graphSemiSupLearn|hiddenMarkovModel|hyperGroup|ica|image|iml|kernalPca|langModel|ldaTopic|loadStreams|mbc|mixed|mlTools|modelPublishing|network|neuralNet|nmf|nonParametricBayes|nonlinear|optNetwork|optimization|panel|pca|percentile|phreg|pls|qkb|qlim|quantreg|recommend|regression|reinforcementLearn|robustPca|ruleMining|sampling|sandwich|sccasl|search(?:Analytics)?|sentimentAnalysis|sequence|session(?:Prop)?|severity|simSystem|simple|smartData|sparkEmbeddedProcess|sparseML|spatialreg|spc|stabilityMonitoring|svDataDescription|svm|table|text(?:Filters|Frequency|Mining|Parse|Rule(?:Develop|Score)|Topic|Util)|timeData|transpose|tsInfo|tsReconcile|uniTimeSeries|varReduce)\\.[a-z]+\\b[^;]+';
  const definition_90 =
      '(?:aStore|accessControl|aggregation|audio|autotune|bayesianNetClassifier|bioMedImage|boolRule|builtins|cardinality|cdm|clustering|conditionalRandomFields|configuration|copula|countreg|dataDiscovery|dataPreprocess|dataSciencePilot|dataStep|decisionTree|deduplication|deepLearn|deepNeural|deepRnn|ds2|ecm|entityRes|espCluster|explainModel|factmac|fastKnn|fcmpact|fedSql|freqTab|gVarCluster|gam|gleam|graphSemiSupLearn|hiddenMarkovModel|hyperGroup|ica|image|iml|kernalPca|langModel|ldaTopic|loadStreams|mbc|mixed|mlTools|modelPublishing|network|neuralNet|nmf|nonParametricBayes|nonlinear|optNetwork|optimization|panel|pca|percentile|phreg|pls|qkb|qlim|quantreg|recommend|regression|reinforcementLearn|robustPca|ruleMining|sampling|sandwich|sccasl|search(?:Analytics)?|sentimentAnalysis|sequence|session(?:Prop)?|severity|simSystem|simple|smartData|sparkEmbeddedProcess|sparseML|spatialreg|spc|stabilityMonitoring|svDataDescription|svm|table|text(?:Filters|Frequency|Mining|Parse|Rule(?:Develop|Score)|Topic|Util)|timeData|transpose|tsInfo|tsReconcile|uniTimeSeries|varReduce)\\.[a-z]+\\b';
  const definition_117 = '(?:action)';
  const definition_111 =
      '((?:^|\\s)=?)(?:default|(?:un)?set|on|output|upload)[^;]+';
  const definition_68 = '(^|\\s)(?:proc\\s+\\w+|data(?!=)|quit|run)\\b';
  const definition_60 = '\\b(?:format|put)\\b=?[\\w\'\$.]+';
  const definition_93 = '^(?:format|put)(?==)';
  const definition_118 = '(?:\\w|\\\$\\d)+\\.\\d?';
  const definition_62 = '\\b(?:format|put)\\s+[\\w\']+(?:\\s+[\$.\\w]+)+(?=;)';
  const definition_95 = '^(?:format|put)';
  const definition_119 = '[\\w\$]+\\.\\d?';
  const definition_40 =
      '(^proc\\s+\\w+\\s+)(?!\\s)(?:[^;"\']|(?:"(?:""|[^"])*"(?!")|\'(?:\'\'|[^\'])*\'(?!\')))+;';
  const definition_42 =
      '((?:^|\\s|=|\\())%(?:ABORT|BY|CMS|COPY|DISPLAY|DO|ELSE|END|EVAL|GLOBAL|GO|GOTO|IF|INC|INCLUDE|INDEX|INPUT|KTRIM|LENGTH|LET|LIST|LOCAL|PUT|QKTRIM|QSCAN|QSUBSTR|QSYSFUNC|QUPCASE|RETURN|RUN|SCAN|SUBSTR|SUPERQ|SYMDEL|SYMEXIST|SYMGLOBL|SYMLOCAL|SYSCALL|SYSEVALF|SYSEXEC|SYSFUNC|SYSGET|SYSRPUT|THEN|TO|TSO|UNQUOTE|UNTIL|UPCASE|WHILE|WINDOW)\\b';
  const definition_45 =
      '((?:^|\\s|=))%(?:BQUOTE|NRBQUOTE|NRQUOTE|NRSTR|QUOTE|STR)\\(.*?(?:[^%]\\))';
  const definition_114 = '%(?:BQUOTE|NRBQUOTE|NRQUOTE|NRSTR|QUOTE|STR)';
  const definition_115 = '%[\'"()<>=¬^~;,#]';
  const definition_47 = '^%macro[^;]+(?=;)';
  const definition_87 = '%macro';
  const definition_49 = '^%mend[^;]+(?=;)';
  const definition_88 = '%mend';
  const definition_51 = '%_\\w+(?=\\()';
  const definition_52 = '\\binput\\s[-\\w\\s/*.\$&]+;';
  const definition_116 = '^input';
  const definition_54 = '(^options)[-\'"|/\\\\<>*+=:()\\w\\s]*(?=;)';
  const definition_66 =
      '(?:"(?:""|[^"])*"(?!")|\'(?:\'\'|[^\'])*\'(?!\'))(?:dt?|t)';
  const definition_70 = '\\b(?:eq|ge|gt|in|le|lt|ne|not)\\b';
  const definition_27 =
      '\\*\\*?|\\|\\|?|!!?|¦¦?|<[>=]?|>[<=]?|[-+\\/=&]|[~¬^]=?';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['string'],
    inside: definition_31,
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_97, caseSensitive: false),
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_32, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_33,
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_98, caseSensitive: false, multiLine: true),
    aliases: ['language-sql'],
    inside: 'sql',
  );
  final definition_75 = GrammarToken(
    pattern: RegExp(definition_101, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_102, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_64),
    aliases: ['number'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_67),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_34, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_35,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_92, multiLine: true),
    lookbehind: true,
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_103, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['language-groovy'],
    inside: 'groovy',
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_69, caseSensitive: false),
    lookbehind: true,
  );
  final definition_78 = GrammarToken(
    pattern: RegExp(definition_106, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_36, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_37,
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_103, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['language-lua'],
    inside: 'lua',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_38, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_39,
  );
  final definition_80 = GrammarToken(
    pattern: RegExp(definition_109, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_110,
  );
  final definition_120 = GrammarToken(
    pattern: RegExp(definition_121, caseSensitive: false),
    inside: definition_122,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_59),
    aliases: ['keyword'],
  );
  final definition_82 = GrammarToken(
    pattern: RegExp(definition_112, caseSensitive: false),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_44, caseSensitive: false),
  );
  final definition_84 = GrammarToken(
    pattern: RegExp(definition_113, caseSensitive: false),
    aliases: ['keyword'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_55, caseSensitive: false),
    lookbehind: true,
    inside: definition_56,
  );
  final definition_91 = GrammarToken(
    pattern: RegExp(definition_117, caseSensitive: false),
    aliases: ['keyword'],
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_111, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_41,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_68, caseSensitive: false),
    aliases: ['keyword'],
    lookbehind: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_60, caseSensitive: false),
    inside: definition_61,
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_118),
    aliases: ['number'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_62, caseSensitive: false),
    inside: definition_63,
  );
  final definition_96 = GrammarToken(
    pattern: RegExp(definition_119),
    aliases: ['number'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_40, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_41,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_42, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_45, caseSensitive: false),
    lookbehind: true,
    inside: definition_46,
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_114, caseSensitive: false),
    aliases: ['keyword'],
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_115),
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_47, caseSensitive: false, multiLine: true),
    inside: definition_48,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_49, caseSensitive: false, multiLine: true),
    inside: definition_50,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_51),
    aliases: ['keyword'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_52, caseSensitive: false),
    inside: definition_53,
  );
  final definition_89 = GrammarToken(
    aliases: ['keyword'],
    pattern: RegExp(definition_116, caseSensitive: false),
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_54, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_41,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_66),
    aliases: ['number'],
  );
  final definition_25 = GrammarToken(
    pattern: RegExp(definition_70, caseSensitive: false),
    aliases: ['operator'],
  );
  definition_110.rest = definition_41;
  definition_31.addAllTokens({
    'keyword': [definition_72],
    'punctuation': [GrammarToken(pattern: RegExp(definition_73))],
  });
  definition_33.addAllTokens({
    'sql': [definition_74],
    'global-statements': [definition_75],
    'sql-statements': [definition_76],
    'number': [
      GrammarToken(pattern: RegExp(definition_26, caseSensitive: false))
    ],
    'numeric-constant': [definition_20],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'string': [definition_22],
  });
  definition_35.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_57)),
      definition_58,
    ],
    'groovy': [definition_77],
    'keyword': [definition_24],
    'submit-statement': [definition_78],
    'global-statements': [definition_75],
    'number': [
      GrammarToken(pattern: RegExp(definition_26, caseSensitive: false))
    ],
    'numeric-constant': [definition_20],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'string': [definition_22],
  });
  definition_37.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_57)),
      definition_58,
    ],
    'lua': [definition_79],
    'keyword': [definition_24],
    'submit-statement': [definition_78],
    'global-statements': [definition_75],
    'number': [
      GrammarToken(pattern: RegExp(definition_26, caseSensitive: false))
    ],
    'numeric-constant': [definition_20],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'string': [definition_22],
  });
  definition_122.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_123, caseSensitive: false))
    ],
  });
  definition_41.addAllTokens({
    'function': [definition_17],
    'arg-value': [definition_82],
    'operator': [GrammarToken(pattern: RegExp(definition_83))],
    'macro-variable': [definition_8],
    'arg': [definition_84],
    'number': [
      GrammarToken(pattern: RegExp(definition_26, caseSensitive: false))
    ],
    'numeric-constant': [definition_20],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'string': [definition_22],
  });
  definition_110.addAllTokens({
    'statement': [definition_120],
  });
  definition_56.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_90, caseSensitive: false))
    ],
    'action': [definition_91],
    'comment': [
      GrammarToken(pattern: RegExp(definition_57)),
      definition_58,
    ],
    'function': [definition_17],
    'arg-value': [definition_82],
    'operator': [GrammarToken(pattern: RegExp(definition_83))],
    'argument': [definition_84],
    'number': [
      GrammarToken(pattern: RegExp(definition_26, caseSensitive: false))
    ],
    'numeric-constant': [definition_20],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'string': [definition_22],
  });
  definition_61.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_93, caseSensitive: false))
    ],
    'equals': [GrammarToken(pattern: RegExp(definition_83))],
    'format': [definition_94],
  });
  definition_63.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_95, caseSensitive: false))
    ],
    'format': [definition_96],
  });
  definition_39.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_57)),
      definition_58,
    ],
    'statement-var': [definition_80],
    'cas-actions': [definition_15],
    'statement': [definition_81],
    'step': [definition_23],
    'keyword': [definition_24],
    'function': [definition_17],
    'format': [definition_18],
    'altformat': [definition_19],
    'global-statements': [definition_75],
    'number': [
      GrammarToken(pattern: RegExp(definition_26, caseSensitive: false))
    ],
    'numeric-constant': [definition_20],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
    'string': [definition_22],
  });
  definition_46.addAllTokens({
    'function': [definition_85],
    'macro-keyword': [definition_7],
    'macro-variable': [definition_8],
    'escaped-char': [definition_86],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
  });
  definition_48.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_87, caseSensitive: false))
    ],
  });
  definition_50.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_88, caseSensitive: false))
    ],
  });
  definition_53.addAllTokens({
    'input': [definition_89],
    'comment': [
      GrammarToken(pattern: RegExp(definition_57)),
      definition_58,
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_26, caseSensitive: false))
    ],
    'numeric-constant': [definition_20],
  });
  definition_0.addAllTokens({
    'datalines': [definition_1],
    'proc-sql': [definition_2],
    'proc-groovy': [definition_3],
    'proc-lua': [definition_4],
    'proc-cas': [definition_5],
    'proc-args': [definition_6],
    'macro-keyword': [definition_7],
    'macro-variable': [definition_8],
    'macro-string-functions': [definition_9],
    'macro-declaration': [definition_10],
    'macro-end': [definition_11],
    'macro': [definition_12],
    'input': [definition_13],
    'options-args': [definition_14],
    'cas-actions': [definition_15],
    'comment': [
      GrammarToken(pattern: RegExp(definition_57)),
      definition_58,
    ],
    'function': [definition_17],
    'format': [definition_18],
    'altformat': [definition_19],
    'numeric-constant': [definition_20],
    'datetime': [definition_21],
    'string': [definition_22],
    'step': [definition_23],
    'keyword': [definition_24],
    'operator-keyword': [definition_25],
    'number': [
      GrammarToken(pattern: RegExp(definition_26, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_27))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
  });

  return LanguageProto(
    'sas',
    definition_0,
  );
}

final languageSas = _create();
