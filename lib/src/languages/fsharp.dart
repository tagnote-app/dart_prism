// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_17 = Grammar();
  final definition_45 = Grammar();
  final definition_56 = Grammar();
  final definition_65 = Grammar();
  final definition_78 = Grammar();
  final definition_67 = Grammar();
  final definition_79 = Grammar();
  final definition_60 = Grammar();
  final definition_62 = Grammar();
  final definition_21 = Grammar();
  final definition_25 = Grammar();
  final definition_28 = Grammar();
  const definition_15 = '\\/\\/\\/.*';
  const definition_44 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_55 = '^(<\\/?)[^\\s>\\/]+';
  const definition_63 = '^[^\\s>\\/:]+:';
  const definition_64 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_70 = '^[^\\s=]+';
  const definition_77 = '=[\\s\\S]+';
  const definition_89 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_80 = '^=';
  const definition_93 = '"|\'';
  const definition_66 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_59 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_82 = '^(\\s*)["\']|["\']\$';
  const definition_83 = '&[\\da-z]{1,8};';
  const definition_76 = '&#x?[\\da-f]{1,8};';
  const definition_53 = '^<\\/?|\\/?>\$';
  const definition_61 = '[^\\s>\\/]+';
  const definition_36 = '(^|[^\\\\])\\(\\*(?!\\))[\\s\\S]*?\\*\\)';
  const definition_37 = '(^|[^\\\\:])\\/\\/.*';
  const definition_20 = '\\[<.+?>\\]';
  const definition_38 = '^\\[<|>\\]\$';
  const definition_46 = '^\\w+\$|(^|;\\s*)[A-Z]\\w*(?=\\()';
  const definition_47 = '[\\s\\S]+';
  const definition_22 =
      '\'(?:[^\\\\\']|\\\\(?:.|\\d{3}|x[a-fA-F\\d]{2}|u[a-fA-F\\d]{4}|U[a-fA-F\\d]{8}))\'B?';
  const definition_23 =
      '(?:"""[\\s\\S]*?"""|@"(?:""|[^"])*"|"(?:\\\\[\\s\\S]|[^\\\\"])*")B?';
  const definition_24 =
      '(\\b(?:exception|inherit|interface|new|of|type)\\s+|\\w\\s*:\\s*|\\s:\\??>\\s*)[.\\w]+\\b(?:\\s*(?:->|\\*)\\s*[.\\w]+\\b)*(?!\\s*[:.])';
  const definition_41 = '->|\\*';
  const definition_42 = '\\.';
  const definition_26 = '(^[\\t ]*)#.*';
  const definition_49 = '(^#)\\b(?:else|endif|if|light|line|nowarn)\\b';
  const definition_8 =
      '\\b(?:let|return|use|yield)(?:!\\B|\\b)|\\b(?:abstract|and|as|asr|assert|atomic|base|begin|break|checked|class|component|const|constraint|constructor|continue|default|delegate|do|done|downcast|downto|eager|elif|else|end|event|exception|extern|external|false|finally|fixed|for|fun|function|functor|global|if|in|include|inherit|inline|interface|internal|land|lazy|lor|lsl|lsr|lxor|match|member|method|mixin|mod|module|mutable|namespace|new|not|null|object|of|open|or|override|parallel|private|process|protected|public|pure|rec|sealed|select|sig|static|struct|tailcall|then|to|trait|true|try|type|upcast|val|virtual|void|volatile|when|while|with)\\b';
  const definition_9 = '\\b(?:false|true)\\b';
  const definition_10 = '\\b\\w+(?=\\()';
  const definition_29 = '\\b0x[\\da-fA-F]+(?:LF|lf|un)?\\b';
  const definition_30 = '\\b0b[01]+(?:uy|y)?\\b';
  const definition_31 =
      '(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[fm]|e[+-]?\\d+)?\\b';
  const definition_32 = '\\b\\d+(?:[IlLsy]|UL|u[lsy]?)?\\b';
  const definition_12 =
      '([<>~&^])\\1\\1|([*.:<>&])\\2|<-|->|[!=:]=|<?\\|{1,3}>?|\\??(?:<=|>=|<>|[-+*/%=<>])\\??|[!?^&]|~[+~-]|:>|:\\?>?';
  const definition_33 = '\\b[_a-z]\\w*(?=\\s*\\{)';
  const definition_14 = '[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    aliases: ['comment'],
    inside: definition_17,
    global: true,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_44),
    greedy: true,
    inside: definition_45,
    global: true,
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_55),
    lookbehind: true,
    inside: definition_56,
  );
  final definition_57 = GrammarToken(
    pattern: RegExp(definition_64, caseSensitive: false),
    lookbehind: true,
    inside: definition_65,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: definition_78,
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_89),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_92 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['attr-equals'],
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_66, caseSensitive: false),
    lookbehind: true,
    inside: definition_67,
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_77),
    inside: definition_79,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_89),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_96 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['attr-equals'],
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_59),
    inside: definition_60,
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_80),
    aliases: ['attr-equals'],
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_82),
    lookbehind: true,
  );
  final definition_75 = GrammarToken(
    pattern: RegExp(definition_83, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_61),
    inside: definition_62,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_36),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_37),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    inside: definition_21,
    global: true,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_46),
    lookbehind: true,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_47),
    inside: 'fsharp',
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    inside: definition_25,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_26, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
    inside: definition_28,
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_49),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_33, caseSensitive: false),
    aliases: ['keyword'],
  );
  definition_56.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_63))],
  });
  definition_78.addAllTokens({
    'value': [definition_85],
    'punctuation': [
      definition_92,
      GrammarToken(pattern: RegExp(definition_93)),
    ],
  });
  definition_65.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_70))],
    'attr-value': [definition_71],
  });
  definition_79.addAllTokens({
    'value': [definition_87],
    'punctuation': [
      definition_96,
      GrammarToken(pattern: RegExp(definition_93)),
    ],
  });
  definition_67.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_70))],
    'attr-value': [definition_72],
  });
  definition_60.addAllTokens({
    'punctuation': [
      definition_73,
      definition_74,
    ],
    'entity': [
      definition_75,
      GrammarToken(pattern: RegExp(definition_76, caseSensitive: false)),
    ],
  });
  definition_62.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_63))],
  });
  definition_45.addAllTokens({
    'tag': [definition_50],
    'special-attr': [
      definition_57,
      definition_58,
    ],
    'attr-value': [definition_52],
    'punctuation': [GrammarToken(pattern: RegExp(definition_53))],
    'attr-name': [definition_54],
  });
  definition_17.addAllTokens({
    'tag': [definition_35],
  });
  definition_21.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_38))],
    'class-name': [definition_39],
    'annotation-content': [definition_40],
  });
  definition_25.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_41))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_42))],
  });
  definition_28.addAllTokens({
    'directive': [definition_43],
  });
  definition_0.addAllTokens({
    'doc-comment': [definition_1],
    'comment': [
      definition_18,
      definition_19,
    ],
    'annotation': [definition_3],
    'char': [definition_4],
    'string': [definition_5],
    'class-name': [definition_6],
    'preprocessor': [definition_7],
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'boolean': [GrammarToken(pattern: RegExp(definition_9))],
    'function': [GrammarToken(pattern: RegExp(definition_10))],
    'number': [
      GrammarToken(pattern: RegExp(definition_29)),
      GrammarToken(pattern: RegExp(definition_30)),
      GrammarToken(pattern: RegExp(definition_31, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_32)),
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'computation-expression': [definition_13],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
  });

  return LanguageProto(
    'fsharp',
    definition_0,
    requiredDependencies: ['clike'],
    optionalDependencies: ['xml-doc'],
  );
}

final languageFsharp = _create();
