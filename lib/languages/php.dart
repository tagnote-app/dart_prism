// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';
import '../src/tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_4 = Grammar();
  final definition_82 = Grammar();
  final definition_150 = Grammar();
  final definition_85 = Grammar();
  final definition_152 = Grammar();
  final definition_92 = Grammar();
  final definition_37 = Grammar();
  final definition_145 = Grammar();
  final definition_163 = Grammar();
  final definition_41 = Grammar();
  final definition_43 = Grammar();
  final definition_116 = Grammar();
  final definition_118 = Grammar();
  final definition_120 = Grammar();
  final definition_124 = Grammar();
  final definition_128 = Grammar();
  final definition_132 = Grammar();
  final definition_136 = Grammar();
  final definition_78 = Grammar();
  const definition_3 =
      '<\\?(?:[^"\'/#]|\\/(?![*/])|("|\')(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])*\\1|(?:\\/\\/|#(?!\\[))(?:[^?\\n\\r]|\\?(?!>))*(?=\$|\\?>|[\\r\\n])|#\\[|\\/\\*(?:[^*]|\\*(?!\\/))*(?:\\*\\/|\$))*?(?:\\?>|\$)';
  const definition_26 = '\\?>\$|^<\\?(?:php(?=\\s)|=)?';
  const definition_28 = '\\/\\*\\*(?!\\/)[\\s\\S]*?\\*\\/';
  const definition_7 = '\\/\\*[\\s\\S]*?\\*\\/|\\/\\/.*|#(?!\\[).*';
  const definition_80 = '<<<\'([^\']+)\'[\\r\\n](?:.*[\\r\\n])*?\\1;';
  const definition_148 = '^<<<\'[^\']+\'|[a-z_]\\w*;\$';
  const definition_156 = '^<<<\'?|[\';]\$';
  const definition_83 =
      '<<<(?:"([^"]+)"[\\r\\n](?:.*[\\r\\n])*?\\1;|([a-z_]\\w*)[\\r\\n](?:.*[\\r\\n])*?\\2;)';
  const definition_151 = '^<<<(?:"[^"]+"|[a-z_]\\w*)|[a-z_]\\w*;\$';
  const definition_157 = '^<<<"?|[";]\$';
  const definition_153 =
      '\\{\\\$(?:\\{(?:\\{[^{}]+\\}|[^{}]+)\\}|[^{}])+\\}|(^|[^\\\\{])\\\$+(?:\\w+(?:\\[[^\\r\\n\\[\\]]+\\]|->\\w+)?)';
  const definition_86 = '`(?:\\\\[\\s\\S]|[^\\\\`])*`';
  const definition_88 = '\'(?:\\\\[\\s\\S]|[^\\\\\'])*\'';
  const definition_90 = '"(?:\\\\[\\s\\S]|[^\\\\"])*"';
  const definition_36 =
      '#\\[(?:[^"\'\\/#]|\\/(?![*/])|\\/\\/.*\$|#(?!\\[).*\$|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|"(?:\\\\[\\s\\S]|[^\\\\"])*"|\'(?:\\\\[\\s\\S]|[^\\\\\'])*\')+\\](?=\\s*[a-z\$#])';
  const definition_144 = '^(#\\[)[\\s\\S]+(?=\\]\$)';
  const definition_160 = '([^:]|^)\\b[a-z_]\\w*(?!\\\\)\\b';
  const definition_161 = '([^:]|^)(?:\\\\?\\b[a-z_]\\w*)+';
  const definition_97 = '\\\\';
  const definition_137 = '\\b(?:false|true)\\b';
  const definition_139 = '(::\\s*)\\b[a-z_]\\w*\\b(?!\\s*\\()';
  const definition_140 = '(\\b(?:case|const)\\s+)\\b[a-z_]\\w*(?=\\s*[;=])';
  const definition_75 = '\\b(?:null)\\b';
  const definition_76 = '\\b[A-Z_][A-Z0-9_]*\\b(?!\\s*\\()';
  const definition_23 =
      '\\b0b[01]+(?:_[01]+)*\\b|\\b0o[0-7]+(?:_[0-7]+)*\\b|\\b0x[\\da-f]+(?:_[\\da-f]+)*\\b|(?:\\b\\d+(?:_\\d+)*\\.?(?:\\d+(?:_\\d+)*)?|\\B\\.\\d+)(?:e[+-]?\\d+)?';
  const definition_24 =
      '<?=>|\\?\\?=?|\\.{3}|\\??->|[!=]=?=?|::|\\*\\*=?|--|\\+\\+|&&|\\|\\||<<|>>|[?~]|[/^|%*&<>.+-]=?';
  const definition_25 = '[{}\\[\\](),:;]';
  const definition_146 = '^#\\[|\\]\$';
  const definition_38 = '\\\$this\\b';
  const definition_11 =
      '\\\$(?:GLOBALS|HTTP_RAW_POST_DATA|_(?:COOKIE|ENV|FILES|GET|POST|REQUEST|SERVER|SESSION)|argc|argv|http_response_header|php_errormsg)\\b';
  const definition_40 = '\\b[\\w\\\\]+::';
  const definition_95 = '\\b(?:parent|self|static)\\b';
  const definition_96 = '::|\\\\';
  const definition_13 = '\\\$+(?:\\w+\\b|(?=\\{))';
  const definition_42 =
      '(namespace\\s+|use\\s+(?:function\\s+)?)(?:\\\\?\\b[a-z_]\\w*)+\\b(?!\\\\)';
  const definition_44 =
      '(\\b(?:class|enum|interface|trait)\\s+)\\b[a-z_]\\w*(?!\\\\)\\b';
  const definition_46 = '(\\bfunction\\s+)[a-z_]\\w*(?=\\s*\\()';
  const definition_98 =
      '(\\(\\s*)\\b(?:array|bool|boolean|float|int|integer|object|string)\\b(?=\\s*\\))';
  const definition_100 =
      '([(,?]\\s*)\\b(?:array(?!\\s*\\()|bool|callable|(?:false|null)(?=\\s*\\|)|float|int|iterable|mixed|object|self|static|string)\\b(?=\\s*\\\$)';
  const definition_102 =
      '(\\)\\s*:\\s*(?:\\?\\s*)?)\\b(?:array(?!\\s*\\()|bool|callable|(?:false|null)(?=\\s*\\|)|float|int|iterable|mixed|never|object|self|static|string|void)\\b';
  const definition_104 =
      '\\b(?:array(?!\\s*\\()|bool|float|int|iterable|mixed|object|string|void)\\b';
  const definition_106 =
      '(\\|\\s*)(?:false|null)\\b|\\b(?:false|null)(?=\\s*\\|)';
  const definition_107 = '\\b(?:parent|self|static)(?=\\s*::)';
  const definition_109 = '(\\byield\\s+)from\\b';
  const definition_55 = '\\bclass\\b';
  const definition_110 =
      '((?:^|[^\\s>:]|(?:^|[^-])>|(?:^|[^:]):)\\s*)\\b(?:abstract|and|array|as|break|callable|case|catch|clone|const|continue|declare|default|die|do|echo|else|elseif|empty|enddeclare|endfor|endforeach|endif|endswitch|endwhile|enum|eval|exit|extends|final|finally|fn|for|foreach|function|global|goto|if|implements|include|include_once|instanceof|insteadof|interface|isset|list|match|namespace|never|new|or|parent|print|private|protected|public|readonly|require|require_once|return|self|static|switch|throw|trait|try|unset|use|var|while|xor|yield|__halt_compiler)\\b';
  const definition_57 = '([(,]\\s*)\\b[a-z_]\\w*(?=\\s*:(?!:))';
  const definition_111 =
      '(\\b(?:extends|implements|instanceof|new(?!\\s+self|\\s+static))\\s+|\\bcatch\\s*\\()\\b[a-z_]\\w*(?!\\\\)\\b';
  const definition_112 = '(\\|\\s*)\\b[a-z_]\\w*(?!\\\\)\\b';
  const definition_113 = '\\b[a-z_]\\w*(?!\\\\)\\b(?=\\s*\\|)';
  const definition_114 = '(\\|\\s*)(?:\\\\?\\b[a-z_]\\w*)+\\b';
  const definition_117 = '(?:\\\\?\\b[a-z_]\\w*)+\\b(?=\\s*\\|)';
  const definition_119 =
      '(\\b(?:extends|implements|instanceof|new(?!\\s+self\\b|\\s+static\\b))\\s+|\\bcatch\\s*\\()(?:\\\\?\\b[a-z_]\\w*)+\\b(?!\\\\)';
  const definition_121 = '\\b[a-z_]\\w*(?=\\s*\\\$)';
  const definition_122 = '(?:\\\\?\\b[a-z_]\\w*)+(?=\\s*\\\$)';
  const definition_125 = '\\b[a-z_]\\w*(?=\\s*::)';
  const definition_126 = '(?:\\\\?\\b[a-z_]\\w*)+(?=\\s*::)';
  const definition_129 = '([(,?]\\s*)[a-z_]\\w*(?=\\s*\\\$)';
  const definition_130 = '([(,?]\\s*)(?:\\\\?\\b[a-z_]\\w*)+(?=\\s*\\\$)';
  const definition_133 = '(\\)\\s*:\\s*(?:\\?\\s*)?)\\b[a-z_]\\w*(?!\\\\)\\b';
  const definition_134 =
      '(\\)\\s*:\\s*(?:\\?\\s*)?)(?:\\\\?\\b[a-z_]\\w*)+\\b(?!\\\\)';
  const definition_77 =
      '(^|[^\\\\\\w])\\\\?[a-z_](?:[\\w\\\\]*\\w)?(?=\\s*\\()';
  const definition_79 = '(->\\s*)\\w+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_3),
    inside: definition_4,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false),
    aliases: ['important'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_28),
    greedy: true,
    aliases: ['comment'],
    inside: 'phpdoc',
    global: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['nowdoc-string'],
    greedy: true,
    inside: definition_82,
    global: true,
  );
  final definition_141 = GrammarToken(
    pattern: RegExp(definition_148, caseSensitive: false),
    aliases: ['symbol'],
    inside: definition_150,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_83, caseSensitive: false),
    aliases: ['heredoc-string'],
    greedy: true,
    inside: definition_85,
    global: true,
  );
  final definition_142 = GrammarToken(
    pattern: RegExp(definition_151, caseSensitive: false),
    aliases: ['symbol'],
    inside: definition_152,
  );
  final definition_143 = GrammarToken(
    pattern: RegExp(definition_153),
    lookbehind: true,
    inside: 'php',
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_86),
    aliases: ['backtick-quoted-string'],
    greedy: true,
    global: true,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_88),
    aliases: ['single-quoted-string'],
    greedy: true,
    global: true,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_90),
    aliases: ['double-quoted-string'],
    greedy: true,
    inside: definition_92,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_36, caseSensitive: false, multiLine: true),
    greedy: true,
    inside: definition_37,
    global: true,
  );
  final definition_93 = GrammarToken(
    pattern: RegExp(definition_144),
    lookbehind: true,
    inside: definition_145,
  );
  final definition_158 = GrammarToken(
    pattern: RegExp(definition_160, caseSensitive: false),
    aliases: ['class-name'],
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_159 = GrammarToken(
    pattern: RegExp(definition_161, caseSensitive: false),
    aliases: ['class-name', 'class-name-fully-qualified'],
    greedy: true,
    lookbehind: true,
    inside: definition_163,
    global: true,
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_137, caseSensitive: false),
    aliases: ['boolean'],
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_139, caseSensitive: false),
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_140, caseSensitive: false),
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_146),
    aliases: ['punctuation'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_38),
    aliases: ['keyword'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_40),
    inside: definition_41,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_42, caseSensitive: false),
    lookbehind: true,
    inside: definition_43,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_44, caseSensitive: false),
    lookbehind: true,
    aliases: ['class-name'],
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_46, caseSensitive: false),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_98, caseSensitive: false),
    aliases: ['type-casting'],
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_100, caseSensitive: false),
    aliases: ['type-hint'],
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_102, caseSensitive: false),
    aliases: ['return-type'],
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_104, caseSensitive: false),
    aliases: ['type-declaration'],
    greedy: true,
    global: true,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_106, caseSensitive: false),
    aliases: ['type-declaration'],
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_107, caseSensitive: false),
    aliases: ['static-context'],
    greedy: true,
    global: true,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_109, caseSensitive: false),
    lookbehind: true,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_110, caseSensitive: false),
    lookbehind: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_57, caseSensitive: false),
    lookbehind: true,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_111, caseSensitive: false),
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_59 = GrammarToken(
    pattern: RegExp(definition_112, caseSensitive: false),
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_60 = GrammarToken(
    pattern: RegExp(definition_113, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_114, caseSensitive: false),
    aliases: ['class-name-fully-qualified'],
    greedy: true,
    lookbehind: true,
    inside: definition_116,
    global: true,
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_117, caseSensitive: false),
    aliases: ['class-name-fully-qualified'],
    greedy: true,
    inside: definition_118,
    global: true,
  );
  final definition_63 = GrammarToken(
    pattern: RegExp(definition_119, caseSensitive: false),
    aliases: ['class-name-fully-qualified'],
    greedy: true,
    lookbehind: true,
    inside: definition_120,
    global: true,
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_121, caseSensitive: false),
    aliases: ['type-declaration'],
    greedy: true,
    global: true,
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_122, caseSensitive: false),
    aliases: ['class-name-fully-qualified', 'type-declaration'],
    greedy: true,
    inside: definition_124,
    global: true,
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_125, caseSensitive: false),
    aliases: ['static-context'],
    greedy: true,
    global: true,
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_126, caseSensitive: false),
    aliases: ['class-name-fully-qualified', 'static-context'],
    greedy: true,
    inside: definition_128,
    global: true,
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_129, caseSensitive: false),
    aliases: ['type-hint'],
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_130, caseSensitive: false),
    aliases: ['class-name-fully-qualified', 'type-hint'],
    greedy: true,
    lookbehind: true,
    inside: definition_132,
    global: true,
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_133, caseSensitive: false),
    aliases: ['return-type'],
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_134, caseSensitive: false),
    aliases: ['class-name-fully-qualified', 'return-type'],
    greedy: true,
    lookbehind: true,
    inside: definition_136,
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_77, caseSensitive: false),
    lookbehind: true,
    inside: definition_78,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_79),
    lookbehind: true,
  );
  definition_0.tokenize = customTokenizer_4;
  definition_150.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_156))],
  });
  definition_82.addAllTokens({
    'delimiter': [definition_141],
  });
  definition_152.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_157))],
  });
  definition_85.addAllTokens({
    'delimiter': [definition_142],
    'interpolation': [definition_143],
  });
  definition_92.addAllTokens({
    'interpolation': [definition_143],
  });
  definition_163.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_145.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_7))],
    'string': [
      definition_31,
      definition_32,
      definition_33,
      definition_34,
      definition_35,
    ],
    'attribute-class-name': [
      definition_158,
      definition_159,
    ],
    'constant': [
      definition_72,
      definition_73,
      definition_74,
      GrammarToken(pattern: RegExp(definition_75, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_76)),
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_23, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_24))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_25))],
  });
  definition_37.addAllTokens({
    'attribute-content': [definition_93],
    'delimiter': [definition_94],
  });
  definition_41.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_95))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_96))],
  });
  definition_43.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_116.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_118.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_120.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_124.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_128.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_132.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_136.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_78.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_97))],
  });
  definition_4.addAllTokens({
    'delimiter': [definition_5],
    'doc-comment': [definition_6],
    'comment': [GrammarToken(pattern: RegExp(definition_7))],
    'string': [
      definition_31,
      definition_32,
      definition_33,
      definition_34,
      definition_35,
    ],
    'attribute': [definition_9],
    'this': [definition_10],
    'global': [GrammarToken(pattern: RegExp(definition_11))],
    'scope': [definition_12],
    'variable': [GrammarToken(pattern: RegExp(definition_13))],
    'package': [definition_14],
    'class-name-definition': [definition_15],
    'function-definition': [definition_16],
    'keyword': [
      definition_48,
      definition_49,
      definition_50,
      definition_51,
      definition_52,
      definition_53,
      definition_54,
      GrammarToken(pattern: RegExp(definition_55, caseSensitive: false)),
      definition_56,
    ],
    'argument-name': [definition_18],
    'class-name': [
      definition_58,
      definition_59,
      definition_60,
      definition_61,
      definition_62,
      definition_63,
      definition_64,
      definition_65,
      definition_66,
      definition_67,
      definition_68,
      definition_69,
      definition_70,
      definition_71,
    ],
    'constant': [
      definition_72,
      definition_73,
      definition_74,
      GrammarToken(pattern: RegExp(definition_75, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_76)),
    ],
    'function': [definition_21],
    'property': [definition_22],
    'number': [
      GrammarToken(pattern: RegExp(definition_23, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_24))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_25))],
  });
  definition_0.addAllTokens({
    'php': [definition_1],
  });

  return LanguageProto(
    'php',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
    optionalDependencies: ['php-extras'],
  );
}

final languagePhp = _create();
