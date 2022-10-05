// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_62 = Grammar();
  final definition_117 = Grammar();
  final definition_133 = Grammar();
  final definition_64 = Grammar();
  final definition_118 = Grammar();
  final definition_134 = Grammar();
  final definition_66 = Grammar();
  final definition_119 = Grammar();
  final definition_135 = Grammar();
  final definition_68 = Grammar();
  final definition_120 = Grammar();
  final definition_136 = Grammar();
  final definition_70 = Grammar();
  final definition_121 = Grammar();
  final definition_137 = Grammar();
  final definition_72 = Grammar();
  final definition_122 = Grammar();
  final definition_138 = Grammar();
  final definition_74 = Grammar();
  final definition_124 = Grammar();
  final definition_37 = Grammar();
  final definition_39 = Grammar();
  final definition_79 = Grammar();
  final definition_43 = Grammar();
  const definition_21 = '\\/\\*\\*(?!\\/)[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_58 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_59 = '(^|[^\\\\:])\\/\\/.*';
  const definition_25 = '^#!.*';
  const definition_60 =
      '((?:\\b(?:styled(?:\\([^)]*\\))?(?:\\s*\\.\\s*\\w+(?:\\([^)]*\\))*)*|css(?:\\s*\\.\\s*(?:global|resolve))?|createGlobalStyle|keyframes))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_115 = '^`|`\$';
  const definition_108 = '[\\s\\S]+';
  const definition_123 =
      '((?:^|[^\\\\])(?:\\\\{2})*)\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}';
  const definition_139 = '^\\\$\\{|\\}\$';
  const definition_63 =
      '((?:\\bhtml|\\.\\s*(?:inner|outer)HTML\\s*\\+?=)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_65 =
      '((?:\\bsvg)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_67 =
      '((?:\\b(?:markdown|md))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_69 =
      '((?:\\b(?:gql|graphql(?:\\s*\\.\\s*experimental)?))\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_71 =
      '((?:\\bsql)\\s*)`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_73 =
      '`(?:\\\\[\\s\\S]|\\\$\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}|[^\\\\`\$]|\\\$(?!\\{))*`';
  const definition_34 =
      '((?:^|[,{])[ \\t]*)(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\2)[^\\\\\\r\\n])*\\2(?=\\s*:)';
  const definition_36 =
      '(?:(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)(?=\\s*:)';
  const definition_75 =
      '^([\'"])?(?:\\\$eq|\\\$gt|\\\$gte|\\\$in|\\\$lt|\\\$lte|\\\$ne|\\\$nin|\\\$and|\\\$not|\\\$nor|\\\$or|\\\$exists|\\\$type|\\\$expr|\\\$jsonSchema|\\\$mod|\\\$regex|\\\$text|\\\$where|\\\$geoIntersects|\\\$geoWithin|\\\$near|\\\$nearSphere|\\\$all|\\\$elemMatch|\\\$size|\\\$bitsAllClear|\\\$bitsAllSet|\\\$bitsAnyClear|\\\$bitsAnySet|\\\$comment|\\\$elemMatch|\\\$meta|\\\$slice|\\\$currentDate|\\\$inc|\\\$min|\\\$max|\\\$mul|\\\$rename|\\\$set|\\\$setOnInsert|\\\$unset|\\\$addToSet|\\\$pop|\\\$pull|\\\$push|\\\$pullAll|\\\$each|\\\$position|\\\$slice|\\\$sort|\\\$bit|\\\$addFields|\\\$bucket|\\\$bucketAuto|\\\$collStats|\\\$count|\\\$currentOp|\\\$facet|\\\$geoNear|\\\$graphLookup|\\\$group|\\\$indexStats|\\\$limit|\\\$listLocalSessions|\\\$listSessions|\\\$lookup|\\\$match|\\\$merge|\\\$out|\\\$planCacheStats|\\\$project|\\\$redact|\\\$replaceRoot|\\\$replaceWith|\\\$sample|\\\$set|\\\$skip|\\\$sort|\\\$sortByCount|\\\$unionWith|\\\$unset|\\\$unwind|\\\$setWindowFields|\\\$abs|\\\$accumulator|\\\$acos|\\\$acosh|\\\$add|\\\$addToSet|\\\$allElementsTrue|\\\$and|\\\$anyElementTrue|\\\$arrayElemAt|\\\$arrayToObject|\\\$asin|\\\$asinh|\\\$atan|\\\$atan2|\\\$atanh|\\\$avg|\\\$binarySize|\\\$bsonSize|\\\$ceil|\\\$cmp|\\\$concat|\\\$concatArrays|\\\$cond|\\\$convert|\\\$cos|\\\$dateFromParts|\\\$dateToParts|\\\$dateFromString|\\\$dateToString|\\\$dayOfMonth|\\\$dayOfWeek|\\\$dayOfYear|\\\$degreesToRadians|\\\$divide|\\\$eq|\\\$exp|\\\$filter|\\\$first|\\\$floor|\\\$function|\\\$gt|\\\$gte|\\\$hour|\\\$ifNull|\\\$in|\\\$indexOfArray|\\\$indexOfBytes|\\\$indexOfCP|\\\$isArray|\\\$isNumber|\\\$isoDayOfWeek|\\\$isoWeek|\\\$isoWeekYear|\\\$last|\\\$last|\\\$let|\\\$literal|\\\$ln|\\\$log|\\\$log10|\\\$lt|\\\$lte|\\\$ltrim|\\\$map|\\\$max|\\\$mergeObjects|\\\$meta|\\\$min|\\\$millisecond|\\\$minute|\\\$mod|\\\$month|\\\$multiply|\\\$ne|\\\$not|\\\$objectToArray|\\\$or|\\\$pow|\\\$push|\\\$radiansToDegrees|\\\$range|\\\$reduce|\\\$regexFind|\\\$regexFindAll|\\\$regexMatch|\\\$replaceOne|\\\$replaceAll|\\\$reverseArray|\\\$round|\\\$rtrim|\\\$second|\\\$setDifference|\\\$setEquals|\\\$setIntersection|\\\$setIsSubset|\\\$setUnion|\\\$size|\\\$sin|\\\$slice|\\\$split|\\\$sqrt|\\\$stdDevPop|\\\$stdDevSamp|\\\$strcasecmp|\\\$strLenBytes|\\\$strLenCP|\\\$substr|\\\$substrBytes|\\\$substrCP|\\\$subtract|\\\$sum|\\\$switch|\\\$tan|\\\$toBool|\\\$toDate|\\\$toDecimal|\\\$toDouble|\\\$toInt|\\\$toLong|\\\$toObjectId|\\\$toString|\\\$toLower|\\\$toUpper|\\\$trim|\\\$trunc|\\\$type|\\\$week|\\\$year|\\\$zip|\\\$count|\\\$dateAdd|\\\$dateDiff|\\\$dateSubtract|\\\$dateTrunc|\\\$getField|\\\$rand|\\\$sampleRate|\\\$setField|\\\$unsetField|\\\$comment|\\\$explain|\\\$hint|\\\$max|\\\$maxTimeMS|\\\$min|\\\$orderby|\\\$query|\\\$returnKey|\\\$showDiskLoc|\\\$natural)\\b(?:\\1)?\$';
  const definition_38 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_109 =
      'https?:\\/\\/[-\\w@:%.+~#=]{1,256}\\.[a-z0-9()]{1,6}\\b[-\\w()@:%+.~#?&/=]*';
  const definition_110 =
      '\\b(?:(?:[01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}(?:[01]?\\d\\d?|2[0-4]\\d|25[0-5])\\b';
  const definition_78 =
      '(\\b(?:class|extends|implements|instanceof|interface|new)\\s+)[\\w.\\\\]+';
  const definition_111 = '[.\\\\]';
  const definition_80 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$A-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\.(?:constructor|prototype))';
  const definition_42 =
      '((?:^|[^\$\\w\\xA0-\\uFFFF."\'\\])\\s]|\\b(?:return|yield))\\s*)\\/(?:(?:\\[(?:[^\\]\\\\\\r\\n]|\\\\.)*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}|(?:\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.)*\\])*\\])*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}v[dgimyus]{0,7})(?=(?:\\s|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*(?:\$|[\\r\\n,.;:})\\]]|\\/\\/))';
  const definition_112 = '^(\\/)[\\s\\S]+(?=\\/[a-z]*\$)';
  const definition_82 = '^\\/|\\/\$';
  const definition_83 = '^[a-z]+\$';
  const definition_44 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*[=:]\\s*(?:async\\s*)?(?:\\bfunction\\b|(?:\\((?:[^()]|\\([^()]*\\))*\\)|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)\\s*=>))';
  const definition_84 =
      '(function(?:\\s+(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)?\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\))';
  const definition_85 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$a-z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*=>)';
  const definition_86 =
      '(\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*=>)';
  const definition_87 =
      '((?:\\b|\\s|^)(?!(?:as|async|await|break|case|catch|class|const|continue|debugger|default|delete|do|else|enum|export|extends|finally|for|from|function|get|if|implements|import|in|instanceof|interface|let|new|null|of|package|private|protected|public|return|set|static|super|switch|this|throw|try|typeof|undefined|var|void|while|with|yield)(?![\$\\w\\xA0-\\uFFFF]))(?:(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*\\s*)\\(\\s*|\\]\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*\\{)';
  const definition_50 =
      '\\b(?:ObjectId|Code|BinData|DBRef|Timestamp|NumberLong|NumberDecimal|MaxKey|MinKey|RegExp|ISODate|UUID)\\b';
  const definition_13 = '\\b[A-Z](?:[A-Z_]|\\dx?)*\\b';
  const definition_88 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:as|assert(?=\\s*\\{)|export|from(?=\\s*(?:[\'"]|\$))|import)\\b';
  const definition_90 = '((?:^|\\})\\s*)catch\\b';
  const definition_92 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:await|break|case|continue|default|do|else|finally(?=\\s*(?:\\{|\$))|for|if|return|switch|throw|try|while|yield)\\b';
  const definition_93 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:async(?=\\s*(?:function\\b|\\(|[\$\\w\\xA0-\\uFFFF]|\$))|class|const|debugger|delete|enum|extends|function|(?:get|set)(?=\\s*(?:[#\\[\$\\w\\xA0-\\uFFFF]|\$))|implements|in|instanceof|interface|let|new|null|of|package|private|protected|public|static|super|this|typeof|undefined|var|void|with)\\b';
  const definition_15 = '\\b(?:false|true)\\b';
  const definition_16 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*(?:\\.\\s*(?:apply|bind|call)\\s*)?\\()';
  const definition_56 =
      '(^|[^\\w\$])(?:NaN|Infinity|0[bB][01]+(?:_[01]+)*n?|0[oO][0-7]+(?:_[0-7]+)*n?|0[xX][\\dA-Fa-f]+(?:_[\\dA-Fa-f]+)*n?|\\d+(?:_\\d+)*n|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[Ee][+-]?\\d+(?:_\\d+)*)?)(?![\\w\$])';
  const definition_57 =
      '((?:^|[,{])[ \\t]*)(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*:)';
  const definition_19 =
      '--|\\+\\+|\\*\\*=?|=>|&&=?|\\|\\|=?|[!=]==|<<=?|>>>?=?|[-+*/%&|^!=<>]=?|\\.{3}|\\?\\?=?|\\?\\.?|[~:]';
  const definition_20 = '[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_21),
    greedy: true,
    inside: 'jsdoc',
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_58),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_59),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_60),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_62,
    global: true,
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_115),
    aliases: ['string'],
  );
  final definition_95 = GrammarToken(
    pattern: RegExp(definition_108),
    inside: definition_117,
  );
  final definition_125 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    inside: definition_133,
  );
  final definition_141 = GrammarToken(
    pattern: RegExp(definition_139),
    aliases: ['punctuation'],
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_64,
    global: true,
  );
  final definition_96 = GrammarToken(
    pattern: RegExp(definition_115),
    aliases: ['string'],
  );
  final definition_97 = GrammarToken(
    pattern: RegExp(definition_108),
    inside: definition_118,
  );
  final definition_127 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    inside: definition_134,
  );
  final definition_142 = GrammarToken(
    pattern: RegExp(definition_139),
    aliases: ['punctuation'],
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_65),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_66,
    global: true,
  );
  final definition_98 = GrammarToken(
    pattern: RegExp(definition_115),
    aliases: ['string'],
  );
  final definition_99 = GrammarToken(
    pattern: RegExp(definition_108),
    inside: definition_119,
  );
  final definition_128 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    inside: definition_135,
  );
  final definition_143 = GrammarToken(
    pattern: RegExp(definition_139),
    aliases: ['punctuation'],
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_67),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_68,
    global: true,
  );
  final definition_100 = GrammarToken(
    pattern: RegExp(definition_115),
    aliases: ['string'],
  );
  final definition_101 = GrammarToken(
    pattern: RegExp(definition_108),
    inside: definition_120,
  );
  final definition_129 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    inside: definition_136,
  );
  final definition_144 = GrammarToken(
    pattern: RegExp(definition_139),
    aliases: ['punctuation'],
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_70,
    global: true,
  );
  final definition_102 = GrammarToken(
    pattern: RegExp(definition_115),
    aliases: ['string'],
  );
  final definition_103 = GrammarToken(
    pattern: RegExp(definition_108),
    inside: definition_121,
  );
  final definition_130 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    inside: definition_137,
  );
  final definition_145 = GrammarToken(
    pattern: RegExp(definition_139),
    aliases: ['punctuation'],
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_71),
    lookbehind: true,
    greedy: true,
    aliases: ['template-string'],
    inside: definition_72,
    global: true,
  );
  final definition_104 = GrammarToken(
    pattern: RegExp(definition_115),
    aliases: ['string'],
  );
  final definition_105 = GrammarToken(
    pattern: RegExp(definition_108),
    inside: definition_122,
  );
  final definition_131 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    inside: definition_138,
  );
  final definition_146 = GrammarToken(
    pattern: RegExp(definition_139),
    aliases: ['punctuation'],
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_73),
    greedy: true,
    inside: definition_74,
    global: true,
  );
  final definition_106 = GrammarToken(
    pattern: RegExp(definition_115),
    aliases: ['string'],
  );
  final definition_107 = GrammarToken(
    pattern: RegExp(definition_123),
    lookbehind: true,
    inside: definition_124,
  );
  final definition_132 = GrammarToken(
    pattern: RegExp(definition_139),
    aliases: ['punctuation'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_34, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_36),
    greedy: true,
    inside: definition_37,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_38),
    greedy: true,
    inside: definition_39,
    global: true,
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_109, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_110),
    greedy: true,
    global: true,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_78),
    lookbehind: true,
    inside: definition_79,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_80),
    lookbehind: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
    greedy: true,
    inside: definition_43,
    global: true,
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_44),
    aliases: ['function'],
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_84),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_85, caseSensitive: false),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_86),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_87),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_50),
    aliases: ['keyword'],
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_88),
    lookbehind: true,
    aliases: ['module'],
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_90),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_92),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_93),
    lookbehind: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_56),
    lookbehind: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_57, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
  );
  definition_133.rest = definition_0;
  definition_134.rest = definition_0;
  definition_135.rest = definition_0;
  definition_136.rest = definition_0;
  definition_137.rest = definition_0;
  definition_138.rest = definition_0;
  definition_124.rest = definition_0;
  definition_117.tokenize = embeddedIn('css');
  definition_118.tokenize = embeddedIn('html');
  definition_119.tokenize = embeddedIn('svg');
  definition_120.tokenize = embeddedIn('markdown');
  definition_121.tokenize = embeddedIn('graphql');
  definition_122.tokenize = embeddedIn('sql');
  definition_133.addAllTokens({
    'interpolation-punctuation': [definition_141],
  });
  definition_117.addAllTokens({
    'interpolation': [definition_125],
  });
  definition_62.addAllTokens({
    'template-punctuation': [definition_94],
    'css': [definition_95],
  });
  definition_134.addAllTokens({
    'interpolation-punctuation': [definition_142],
  });
  definition_118.addAllTokens({
    'interpolation': [definition_127],
  });
  definition_64.addAllTokens({
    'template-punctuation': [definition_96],
    'html': [definition_97],
  });
  definition_135.addAllTokens({
    'interpolation-punctuation': [definition_143],
  });
  definition_119.addAllTokens({
    'interpolation': [definition_128],
  });
  definition_66.addAllTokens({
    'template-punctuation': [definition_98],
    'svg': [definition_99],
  });
  definition_136.addAllTokens({
    'interpolation-punctuation': [definition_144],
  });
  definition_120.addAllTokens({
    'interpolation': [definition_129],
  });
  definition_68.addAllTokens({
    'template-punctuation': [definition_100],
    'markdown': [definition_101],
  });
  definition_137.addAllTokens({
    'interpolation-punctuation': [definition_145],
  });
  definition_121.addAllTokens({
    'interpolation': [definition_130],
  });
  definition_70.addAllTokens({
    'template-punctuation': [definition_102],
    'graphql': [definition_103],
  });
  definition_138.addAllTokens({
    'interpolation-punctuation': [definition_146],
  });
  definition_122.addAllTokens({
    'interpolation': [definition_131],
  });
  definition_72.addAllTokens({
    'template-punctuation': [definition_104],
    'sql': [definition_105],
  });
  definition_124.addAllTokens({
    'interpolation-punctuation': [definition_132],
  });
  definition_74.addAllTokens({
    'template-punctuation': [definition_106],
    'interpolation': [definition_107],
    'string': [GrammarToken(pattern: RegExp(definition_108))],
  });
  definition_37.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_75))],
  });
  definition_39.addAllTokens({
    'url': [definition_76],
    'entity': [definition_77],
  });
  definition_79.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_111))],
  });
  definition_43.addAllTokens({
    'regex-source': [definition_81],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_82))],
    'regex-flags': [GrammarToken(pattern: RegExp(definition_83))],
  });
  definition_0.addAllTokens({
    'doc-comment': [definition_1],
    'comment': [
      definition_23,
      definition_24,
    ],
    'hashbang': [definition_3],
    'template-string': [
      definition_27,
      definition_28,
      definition_29,
      definition_30,
      definition_31,
      definition_32,
      definition_33,
    ],
    'string-property': [definition_5],
    'property': [definition_6],
    'string': [definition_7],
    'class-name': [
      definition_40,
      definition_41,
    ],
    'regex': [definition_9],
    'function-variable': [definition_10],
    'parameter': [
      definition_46,
      definition_47,
      definition_48,
      definition_49,
    ],
    'builtin': [definition_12],
    'constant': [GrammarToken(pattern: RegExp(definition_13))],
    'keyword': [
      definition_52,
      definition_53,
      definition_54,
      definition_55,
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_15))],
    'function': [GrammarToken(pattern: RegExp(definition_16))],
    'number': [definition_17],
    'literal-property': [definition_18],
    'operator': [GrammarToken(pattern: RegExp(definition_19))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
  });

  return LanguageProto(
    'mongodb',
    definition_0,
    requiredDependencies: ['javascript', 'clike'],
  );
}

final languageMongodb = _create();
