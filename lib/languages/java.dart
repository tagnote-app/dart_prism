// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_30 = Grammar();
  final definition_52 = Grammar();
  final definition_61 = Grammar();
  final definition_46 = Grammar();
  final definition_49 = Grammar();
  final definition_34 = Grammar();
  const definition_18 = '\\/\\*\\*(?!\\/)[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_41 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_42 = '(^|[^\\\\:])\\/\\/.*';
  const definition_23 = '"""[ \\t]*[\\r\\n](?:(?:"|"")?(?:\\\\.|[^"\\\\]))*"""';
  const definition_25 = '\'(?:\\\\.|[^\'\\\\\\r\\n]){1,6}\'';
  const definition_26 = '(^|[^\\\\])"(?:\\\\.|[^"\\\\\\r\\n])*"';
  const definition_27 = '(^|[^.])@\\w+(?:\\s*\\.\\s*\\w+)*';
  const definition_29 =
      '<(?:[\\w\\s,.?]|&(?!&)|<(?:[\\w\\s,.?]|&(?!&)|<(?:[\\w\\s,.?]|&(?!&)|<(?:[\\w\\s,.?]|&(?!&))*>)*>)*>)*>';
  const definition_51 =
      '(^|[^\\w.])(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*[A-Z](?:[\\d_A-Z]*[a-z]\\w*)?\\b';
  const definition_60 = '^[a-z]\\w*(?:\\s*\\.\\s*[a-z]\\w*)*(?:\\s*\\.)?';
  const definition_50 = '\\.';
  const definition_11 =
      '\\b(?:abstract|assert|boolean|break|byte|case|catch|char|class|const|continue|default|do|double|else|enum|exports|extends|final|finally|float|for|goto|if|implements|import|instanceof|int|interface|long|module|native|new|non-sealed|null|open|opens|package|permits|private|protected|provides|public|record(?!\\s*[(){}[\\]<>=%~.:,;?+\\-*/&|^])|requires|return|sealed|short|static|strictfp|super|switch|synchronized|this|throw|throws|to|transient|transitive|try|uses|var|void|volatile|while|with|yield)\\b';
  const definition_43 = '[<>(),.:]';
  const definition_44 = '[?&|]';
  const definition_45 =
      '(\\bimport\\s+)(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*|\\*)(?=\\s*;)';
  const definition_57 = '\\*';
  const definition_58 = '\\w+';
  const definition_47 =
      '(\\bimport\\s+static\\s+)(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*(?:\\w+|\\*)(?=\\s*;)';
  const definition_59 = '\\b\\w+\$';
  const definition_33 =
      '(\\b(?:exports|import(?:\\s+static)?|module|open|opens|package|provides|requires|to|transitive|uses|with)\\s+)(?!\\b(?:abstract|assert|boolean|break|byte|case|catch|char|class|const|continue|default|do|double|else|enum|exports|extends|final|finally|float|for|goto|if|implements|import|instanceof|int|interface|long|module|native|new|non-sealed|null|open|opens|package|permits|private|protected|provides|public|record(?!\\s*[(){}[\\]<>=%~.:,;?+\\-*/&|^])|requires|return|sealed|short|static|strictfp|super|switch|synchronized|this|throw|throws|to|transient|transitive|try|uses|var|void|volatile|while|with|yield)\\b)[a-z]\\w*(?:\\.[a-z]\\w*)*\\.?';
  const definition_53 =
      '(^|[^\\w.])(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*[A-Z]\\w*(?=\\s+\\w+\\s*[;,=()]|\\s*(?:\\[[\\s,]*\\]\\s*)?::\\s*new\\b)';
  const definition_54 =
      '(\\b(?:class|enum|extends|implements|instanceof|interface|new|record|throws)\\s+)(?:[a-z]\\w*\\s*\\.\\s*)*(?:[A-Z]\\w*\\s*\\.\\s*)*[A-Z]\\w*\\b';
  const definition_12 = '\\b(?:false|true)\\b';
  const definition_38 = '\\b\\w+(?=\\()';
  const definition_55 = '(::\\s*)[a-z_]\\w*';
  const definition_14 =
      '\\b0b[01][01_]*L?\\b|\\b0x(?:\\.[\\da-f_p+-]+|[\\da-f_]+(?:\\.[\\da-f_p+-]+)?)\\b|(?:\\b\\d[\\d_]*(?:\\.[\\d_]*)?|\\B\\.\\d[\\d_]*)(?:e[+-]?\\d[\\d_]*)?[dfl]?';
  const definition_40 =
      '(^|[^.])(?:<<=?|>>>?=?|->|--|\\+\\+|&&|\\|\\||::|[?:~]|[-+*/%&|^!=<>]=?)';
  const definition_16 = '[{}[\\];(),.:]';
  const definition_17 = '\\b[A-Z][A-Z_\\d]+\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_18),
    greedy: true,
    aliases: ['comment'],
    inside: 'javadoc',
    global: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_26),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_29),
    inside: definition_30,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
    inside: definition_52,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_60),
    inside: definition_61,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
    inside: definition_46,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_47),
    lookbehind: true,
    aliases: ['static'],
    inside: definition_49,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    inside: definition_34,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_53),
    lookbehind: true,
    inside: definition_52,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_54),
    lookbehind: true,
    inside: definition_52,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_55),
    lookbehind: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_40, multiLine: true),
    lookbehind: true,
  );
  definition_61.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_50))],
  });
  definition_52.addAllTokens({
    'namespace': [definition_56],
    'punctuation': [GrammarToken(pattern: RegExp(definition_50))],
  });
  definition_30.addAllTokens({
    'class-name': [definition_35],
    'keyword': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_43))],
    'operator': [GrammarToken(pattern: RegExp(definition_44))],
  });
  definition_46.addAllTokens({
    'namespace': [definition_56],
    'punctuation': [GrammarToken(pattern: RegExp(definition_50))],
    'operator': [GrammarToken(pattern: RegExp(definition_57))],
    'class-name': [GrammarToken(pattern: RegExp(definition_58))],
  });
  definition_49.addAllTokens({
    'namespace': [definition_56],
    'static': [GrammarToken(pattern: RegExp(definition_59))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_50))],
    'operator': [GrammarToken(pattern: RegExp(definition_57))],
    'class-name': [GrammarToken(pattern: RegExp(definition_58))],
  });
  definition_34.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_50))],
  });
  definition_0.addAllTokens({
    'doc-comment': [definition_1],
    'comment': [
      definition_21,
      definition_22,
    ],
    'triple-quoted-string': [definition_3],
    'char': [definition_4],
    'string': [definition_5],
    'annotation': [definition_6],
    'generics': [definition_7],
    'import': [
      definition_31,
      definition_32,
    ],
    'namespace': [definition_9],
    'class-name': [
      definition_35,
      definition_36,
      definition_37,
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_11))],
    'boolean': [GrammarToken(pattern: RegExp(definition_12))],
    'function': [
      GrammarToken(pattern: RegExp(definition_38)),
      definition_39,
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_14, caseSensitive: false))
    ],
    'operator': [definition_15],
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
    'constant': [GrammarToken(pattern: RegExp(definition_17))],
  });

  return LanguageProto(
    'java',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageJava = _create();
