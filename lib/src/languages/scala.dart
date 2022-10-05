// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_20 = Grammar();
  final definition_55 = Grammar();
  final definition_28 = Grammar();
  final definition_57 = Grammar();
  final definition_67 = Grammar();
  final definition_45 = Grammar();
  final definition_48 = Grammar();
  final definition_32 = Grammar();
  const definition_34 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_35 = '(^|[^\\\\:])\\/\\/.*';
  const definition_19 =
      '\\b[a-z]\\w*(?:"""(?:[^\$]|\\\$(?:[^{]|\\{(?:[^{}]|\\{[^{}]*\\})*\\}))*?"""|"(?:[^\$"\\r\\n]|\\\$(?:[^{]|\\{(?:[^{}]|\\{[^{}]*\\})*\\}))*")';
  const definition_50 = '^\\w+';
  const definition_52 = '\\\\\\\$"|\\\$[\$"]';
  const definition_54 = '\\\$(?:\\w+|\\{(?:[^{}]|\\{[^{}]*\\})*\\})';
  const definition_63 = '^\\\$\\{?|\\}\$';
  const definition_39 = '[\\s\\S]+';
  const definition_21 = '"""[\\s\\S]*?"""';
  const definition_23 = '\'(?:\\\\.|[^\'\\\\\\r\\n]){1,6}\'';
  const definition_24 = '("|\')(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_25 = '(^|[^.])@\\w+(?:\\s*\\.\\s*\\w+)*';
  const definition_27 =
      '<(?:[\\w\\s,.?]|&(?!&)|<(?:[\\w\\s,.?]|&(?!&)|<(?:[\\w\\s,.?]|&(?!&)|<(?:[\\w\\s,.?]|&(?!&))*>)*>)*>)*>';
  const definition_56 =
      '(^|[^\\w.])(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*[A-Z](?:[\\d_A-Z]*[a-z]\\w*)?\\b';
  const definition_66 = '^[a-z]\\w*(?:\\s*\\.\\s*[a-z]\\w*)*(?:\\s*\\.)?';
  const definition_49 = '\\.';
  const definition_41 =
      '\\b(?:abstract|assert|boolean|break|byte|case|catch|char|class|const|continue|default|do|double|else|enum|exports|extends|final|finally|float|for|goto|if|implements|import|instanceof|int|interface|long|module|native|new|non-sealed|null|open|opens|package|permits|private|protected|provides|public|record(?!\\s*[(){}[\\]<>=%~.:,;?+\\-*/&|^])|requires|return|sealed|short|static|strictfp|super|switch|synchronized|this|throw|throws|to|transient|transitive|try|uses|var|void|volatile|while|with|yield)\\b';
  const definition_42 = '[<>(),.:]';
  const definition_43 = '[?&|]';
  const definition_44 =
      '(\\bimport\\s+)(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*|\\*)(?=\\s*;)';
  const definition_59 = '\\*';
  const definition_60 = '\\w+';
  const definition_46 =
      '(\\bimport\\s+static\\s+)(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*(?:\\w+|\\*)(?=\\s*;)';
  const definition_62 = '\\b\\w+\$';
  const definition_31 =
      '(\\b(?:exports|import(?:\\s+static)?|module|open|opens|package|provides|requires|to|transitive|uses|with)\\s+)(?!\\b(?:abstract|assert|boolean|break|byte|case|catch|char|class|const|continue|default|do|double|else|enum|exports|extends|final|finally|float|for|goto|if|implements|import|instanceof|int|interface|long|module|native|new|non-sealed|null|open|opens|package|permits|private|protected|provides|public|record(?!\\s*[(){}[\\]<>=%~.:,;?+\\-*/&|^])|requires|return|sealed|short|static|strictfp|super|switch|synchronized|this|throw|throws|to|transient|transitive|try|uses|var|void|volatile|while|with|yield)\\b)[a-z]\\w*(?:\\.[a-z]\\w*)*\\.?';
  const definition_10 =
      '<-|=>|\\b(?:abstract|case|catch|class|def|derives|do|else|enum|extends|extension|final|finally|for|forSome|given|if|implicit|import|infix|inline|lazy|match|new|null|object|opaque|open|override|package|private|protected|return|sealed|self|super|this|throw|trait|transparent|try|type|using|val|var|while|with|yield)\\b';
  const definition_11 = '\\b(?:false|true)\\b';
  const definition_12 =
      '\\b0x(?:[\\da-f]*\\.)?[\\da-f]+|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e\\d+)?[dfl]?';
  const definition_33 =
      '(^|[^.])(?:<<=?|>>>?=?|->|--|\\+\\+|&&|\\|\\||::|[?:~]|[-+*/%&|^!=<>]=?)';
  const definition_14 = '[{}[\\];(),.:]';
  const definition_15 =
      '\\b(?:Any|AnyRef|AnyVal|Boolean|Byte|Char|Double|Float|Int|Long|Nothing|Short|String|Unit)\\b';
  const definition_16 = '\'[^\\d\\s\\\\]\\w*';
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_50),
    greedy: true,
    aliases: ['function'],
    global: true,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_52),
    greedy: true,
    aliases: ['symbol'],
    global: true,
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_54),
    greedy: true,
    inside: definition_55,
    global: true,
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_39),
    inside: 'scala',
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_21),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_27),
    inside: definition_28,
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_56),
    lookbehind: true,
    inside: definition_57,
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_66),
    inside: definition_67,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_44),
    lookbehind: true,
    inside: definition_45,
  );
  final definition_58 = GrammarToken(
    pattern: RegExp(definition_66),
    inside: definition_67,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_46),
    lookbehind: true,
    aliases: ['static'],
    inside: definition_48,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_66),
    inside: definition_67,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    inside: definition_32,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_33, multiLine: true),
    lookbehind: true,
  );
  definition_55.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_63))],
    'expression': [definition_64],
  });
  definition_20.addAllTokens({
    'id': [definition_36],
    'escape': [definition_37],
    'interpolation': [definition_38],
    'string': [GrammarToken(pattern: RegExp(definition_39))],
  });
  definition_67.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_49))],
  });
  definition_57.addAllTokens({
    'namespace': [definition_65],
    'punctuation': [GrammarToken(pattern: RegExp(definition_49))],
  });
  definition_28.addAllTokens({
    'class-name': [definition_40],
    'keyword': [GrammarToken(pattern: RegExp(definition_41))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_42))],
    'operator': [GrammarToken(pattern: RegExp(definition_43))],
  });
  definition_45.addAllTokens({
    'namespace': [definition_58],
    'punctuation': [GrammarToken(pattern: RegExp(definition_49))],
    'operator': [GrammarToken(pattern: RegExp(definition_59))],
    'class-name': [GrammarToken(pattern: RegExp(definition_60))],
  });
  definition_48.addAllTokens({
    'namespace': [definition_61],
    'static': [GrammarToken(pattern: RegExp(definition_62))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_49))],
    'operator': [GrammarToken(pattern: RegExp(definition_59))],
    'class-name': [GrammarToken(pattern: RegExp(definition_60))],
  });
  definition_32.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_49))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_17,
      definition_18,
    ],
    'string-interpolation': [definition_2],
    'triple-quoted-string': [definition_3],
    'char': [definition_4],
    'string': [definition_5],
    'annotation': [definition_6],
    'generics': [definition_7],
    'import': [
      definition_29,
      definition_30,
    ],
    'namespace': [definition_9],
    'keyword': [GrammarToken(pattern: RegExp(definition_10))],
    'boolean': [GrammarToken(pattern: RegExp(definition_11))],
    'number': [
      GrammarToken(pattern: RegExp(definition_12, caseSensitive: false))
    ],
    'operator': [definition_13],
    'punctuation': [GrammarToken(pattern: RegExp(definition_14))],
    'builtin': [GrammarToken(pattern: RegExp(definition_15))],
    'symbol': [GrammarToken(pattern: RegExp(definition_16))],
  });

  return LanguageProto(
    'scala',
    definition_0,
    requiredDependencies: ['java', 'clike'],
  );
}

final languageScala = _create();
