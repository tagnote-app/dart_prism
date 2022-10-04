// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_39 = Grammar();
  final definition_41 = Grammar();
  final definition_25 = Grammar();
  const definition_20 =
      '(^|[^\\\\:])(?:\\/\\/.*|\\/\\*(?:[^/*]|\\/(?!\\*)|\\*(?!\\/)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*\\*\\/)';
  const definition_38 =
      '(^|[^"#])(?:"(?:\\\\(?:\\((?:[^()]|\\([^()]*\\))*\\)|\\r\\n|[^(])|[^\\\\\\r\\n"])*"|"""(?:\\\\(?:\\((?:[^()]|\\([^()]*\\))*\\)|[^(])|[^\\\\"]|"(?!""))*""")(?!["#])';
  const definition_52 = '(\\\\\\()(?:[^()]|\\([^()]*\\))*(?=\\))';
  const definition_54 = '^\\)|\\\\\\(\$';
  const definition_48 = '\\\\(?=[\\r\\n])';
  const definition_49 = '[\\s\\S]+';
  const definition_40 =
      '(^|[^"#])(#+)(?:"(?:\\\\(?:#+\\((?:[^()]|\\([^()]*\\))*\\)|\\r\\n|[^#])|[^\\\\\\r\\n])*?"|"""(?:\\\\(?:#+\\((?:[^()]|\\([^()]*\\))*\\)|[^#])|[^\\\\])*?""")\\2';
  const definition_56 = '(\\\\#+\\()(?:[^()]|\\([^()]*\\))*(?=\\))';
  const definition_57 = '^\\)|\\\\#+\\(\$';
  const definition_23 =
      '#(?:(?:elseif|if)\\b(?:[ 	]*(?:![ \\t]*)?(?:\\b\\w+\\b(?:[ \\t]*\\((?:[^()]|\\([^()]*\\))*\\))?|\\((?:[^()]|\\([^()]*\\))*\\))(?:[ \\t]*(?:&&|\\|\\|))?)+|(?:else|endif)\\b)';
  const definition_42 = '^#\\w+';
  const definition_10 = '\\b(?:false|true)\\b';
  const definition_43 = '\\b\\d+(?:\\.\\d+)*\\b';
  const definition_44 = '!|&&|\\|\\||[<>]=?';
  const definition_45 = '[(),]';
  const definition_26 =
      '#(?:colorLiteral|column|dsohandle|file(?:ID|Literal|Path)?|function|imageLiteral|line)\\b';
  const definition_28 = '#\\w+\\b';
  const definition_29 = '@\\w+';
  const definition_31 = '(\\bfunc\\s+)\\w+';
  const definition_33 =
      '\\b(break|continue)\\s+\\w+|\\b[a-zA-Z_]\\w*(?=\\s*:\\s*(?:for|repeat|while)\\b)';
  const definition_9 =
      '\\b(?:Any|Protocol|Self|Type|actor|as|assignment|associatedtype|associativity|async|await|break|case|catch|class|continue|convenience|default|defer|deinit|didSet|do|dynamic|else|enum|extension|fallthrough|fileprivate|final|for|func|get|guard|higherThan|if|import|in|indirect|infix|init|inout|internal|is|isolated|lazy|left|let|lowerThan|mutating|none|nonisolated|nonmutating|open|operator|optional|override|postfix|precedencegroup|prefix|private|protocol|public|repeat|required|rethrows|return|right|safe|self|set|some|static|struct|subscript|super|switch|throw|throws|try|typealias|unowned|unsafe|var|weak|where|while|willSet)\\b';
  const definition_35 = '\\bnil\\b';
  const definition_12 = '\\\$\\d+\\b';
  const definition_36 = '\\b_\\b';
  const definition_14 =
      '\\b(?:[\\d_]+(?:\\.[\\de_]+)?|0x[a-f0-9_]+(?:\\.[a-f0-9p_]+)?|0b[01_]+|0o[0-7_]+)\\b';
  const definition_15 = '\\b[A-Z](?:[A-Z_\\d]*[a-z]\\w*)?\\b';
  const definition_16 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_17 = '\\b(?:[A-Z_]{2,}|k[A-Z][A-Za-z_]+)\\b';
  const definition_18 = '[-+*/%=!<>&|^~?]+|\\.[.\\-+*/%=!<>&|^~?]+';
  const definition_19 = '[{}[\\]();,.:\\\\]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
    greedy: true,
    inside: definition_39,
    global: true,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
    inside: 'swift',
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_54),
    aliases: ['punctuation'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
    greedy: true,
    inside: definition_41,
    global: true,
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_56),
    lookbehind: true,
    inside: 'swift',
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_57),
    aliases: ['punctuation'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['property'],
    inside: definition_25,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_26),
    aliases: ['constant'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_28),
    aliases: ['property'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_29),
    aliases: ['atrule'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    aliases: ['important'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_35),
    aliases: ['constant'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_36),
    aliases: ['keyword'],
  );
  definition_39.addAllTokens({
    'interpolation': [definition_46],
    'interpolation-punctuation': [definition_47],
    'punctuation': [GrammarToken(pattern: RegExp(definition_48))],
    'string': [GrammarToken(pattern: RegExp(definition_49))],
  });
  definition_41.addAllTokens({
    'interpolation': [definition_50],
    'interpolation-punctuation': [definition_51],
    'string': [GrammarToken(pattern: RegExp(definition_49))],
  });
  definition_25.addAllTokens({
    'directive-name': [GrammarToken(pattern: RegExp(definition_42))],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'number': [GrammarToken(pattern: RegExp(definition_43))],
    'operator': [GrammarToken(pattern: RegExp(definition_44))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_45))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string-literal': [
      definition_21,
      definition_22,
    ],
    'directive': [definition_3],
    'literal': [definition_4],
    'other-directive': [definition_5],
    'attribute': [definition_6],
    'function-definition': [definition_7],
    'label': [definition_8],
    'keyword': [GrammarToken(pattern: RegExp(definition_9))],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'nil': [definition_11],
    'short-argument': [GrammarToken(pattern: RegExp(definition_12))],
    'omit': [definition_13],
    'number': [
      GrammarToken(pattern: RegExp(definition_14, caseSensitive: false))
    ],
    'class-name': [GrammarToken(pattern: RegExp(definition_15))],
    'function': [
      GrammarToken(pattern: RegExp(definition_16, caseSensitive: false))
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_17))],
    'operator': [GrammarToken(pattern: RegExp(definition_18))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });

  return LanguageProto(
    'swift',
    definition_0,
  );
}

final languageSwift = _create();
