// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_11 = Grammar();
  final definition_42 = Grammar();
  final definition_13 = Grammar();
  final definition_29 = Grammar();
  final definition_31 = Grammar();
  final definition_57 = Grammar();
  final definition_17 = Grammar();
  final definition_46 = Grammar();
  final definition_60 = Grammar();
  final definition_74 = Grammar();
  final definition_62 = Grammar();
  final definition_75 = Grammar();
  final definition_50 = Grammar();
  final definition_52 = Grammar();
  const definition_9 =
      '(^[\\t ]*(?:\\/{3}|\\*|\\/\\*\\*)\\s*@(?:arg|arguments|param)\\s+)\\w+';
  const definition_10 =
      '(@(?:exception|link|linkplain|see|throws|value)\\s+(?:\\*\\s*)?)(?:(?:\\b[a-zA-Z]\\w+\\s*\\.\\s*)*\\b[A-Z]\\w*(?:\\s*#\\s*\\w+(?:\\s*\\([^()]*\\))?)?|#\\s*\\w+(?:\\s*\\([^()]*\\))?)';
  const definition_39 = '(#\\s*)\\w+(?=\\s*\\()';
  const definition_40 = '(#\\s*)\\w+';
  const definition_41 = '\\b(?:[a-z]\\w*\\s*\\.\\s*)+';
  const definition_53 = '\\.';
  const definition_24 = '\\b[A-Z]\\w*';
  const definition_25 =
      '\\b(?:abstract|assert|boolean|break|byte|case|catch|char|class|const|continue|default|do|double|else|enum|exports|extends|final|finally|float|for|goto|if|implements|import|instanceof|int|interface|long|module|native|new|non-sealed|null|open|opens|package|permits|private|protected|provides|public|record(?!\\s*[(){}[\\]<>=%~.:,;?+\\-*/&|^])|requires|return|sealed|short|static|strictfp|super|switch|synchronized|this|throw|throws|to|transient|transitive|try|uses|var|void|volatile|while|with|yield)\\b';
  const definition_26 = '[#()[\\],.]';
  const definition_12 = '(@param\\s+)<[A-Z]\\w*>';
  const definition_27 = '[.<>]';
  const definition_28 =
      '(\\{@code\\s+(?!\\s))(?:[^\\s{}]|\\s+(?![\\s}])|\\{(?:[^{}]|\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})*\\})*\\})+(?=\\s*\\})';
  const definition_54 = '(^(?:[\\t ]*(?:\\*\\s*)*))[^*\\s].*\$';
  const definition_30 =
      '(<(code|pre|tt)>(?!<code>)\\s*)\\S(?:\\S|\\s+\\S)*?(?=\\s*<\\/\\2>)';
  const definition_16 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_45 = '^(<\\/?)[^\\s>\\/]+';
  const definition_58 = '^[^\\s>\\/:]+:';
  const definition_59 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_66 = '^[^\\s=]+';
  const definition_73 = '=[\\s\\S]+';
  const definition_83 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_76 = '^=';
  const definition_87 = '"|\'';
  const definition_61 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_49 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_78 = '^(\\s*)["\']|["\']\$';
  const definition_37 = '&[\\da-z]{1,8};';
  const definition_19 = '&#x?[\\da-f]{1,8};';
  const definition_35 = '^<\\/?|\\/?>\$';
  const definition_51 = '[^\\s>\\/]+';
  const definition_72 = '.+';
  const definition_20 =
      '(^[\\t ]*(?:\\/{3}|\\*|\\/\\*\\*)\\s*|\\{)@[a-z][a-zA-Z-]+\\b';
  const definition_8 = '[{}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_9, multiLine: true),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    lookbehind: true,
    inside: definition_11,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_41),
    inside: definition_42,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12),
    lookbehind: true,
    inside: definition_13,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    inside: definition_29,
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_54, multiLine: true),
    lookbehind: true,
    inside: 'java',
    aliases: ['language-java'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_30),
    lookbehind: true,
    inside: definition_31,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_54, multiLine: true),
    lookbehind: true,
    inside: definition_57,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16),
    greedy: true,
    inside: definition_17,
    global: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_45),
    lookbehind: true,
    inside: definition_46,
  );
  final definition_47 = GrammarToken(
    pattern: RegExp(definition_59, caseSensitive: false),
    lookbehind: true,
    inside: definition_60,
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_73),
    inside: definition_74,
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_83),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_76),
    aliases: ['attr-equals'],
  );
  final definition_48 = GrammarToken(
    pattern: RegExp(definition_61, caseSensitive: false),
    lookbehind: true,
    inside: definition_62,
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_73),
    inside: definition_75,
  );
  final definition_81 = GrammarToken(
    pattern: RegExp(definition_83),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_90 = GrammarToken(
    pattern: RegExp(definition_76),
    aliases: ['attr-equals'],
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_49),
    inside: definition_50,
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_76),
    aliases: ['attr-equals'],
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_78),
    lookbehind: true,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_37, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_51),
    inside: definition_52,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_37, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_65 = GrammarToken(
    pattern: RegExp(definition_72),
    inside: 'java',
    aliases: ['language-java'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_20, multiLine: true),
    lookbehind: true,
  );
  definition_42.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_53))],
  });
  definition_11.addAllTokens({
    'function': [definition_21],
    'field': [definition_22],
    'namespace': [definition_23],
    'class-name': [GrammarToken(pattern: RegExp(definition_24))],
    'keyword': [GrammarToken(pattern: RegExp(definition_25))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_26))],
  });
  definition_13.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_27))],
  });
  definition_29.addAllTokens({
    'code': [definition_43],
  });
  definition_46.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_58))],
  });
  definition_74.addAllTokens({
    'value': [definition_79],
    'punctuation': [
      definition_86,
      GrammarToken(pattern: RegExp(definition_87)),
    ],
  });
  definition_60.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_66))],
    'attr-value': [definition_67],
  });
  definition_75.addAllTokens({
    'value': [definition_81],
    'punctuation': [
      definition_90,
      GrammarToken(pattern: RegExp(definition_87)),
    ],
  });
  definition_62.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_66))],
    'attr-value': [definition_68],
  });
  definition_50.addAllTokens({
    'punctuation': [
      definition_69,
      definition_70,
    ],
    'entity': [
      definition_71,
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false)),
    ],
  });
  definition_52.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_58))],
  });
  definition_17.addAllTokens({
    'tag': [definition_32],
    'special-attr': [
      definition_47,
      definition_48,
    ],
    'attr-value': [definition_34],
    'punctuation': [GrammarToken(pattern: RegExp(definition_35))],
    'attr-name': [definition_36],
  });
  definition_57.addAllTokens({
    'tag': [definition_5],
    'entity': [
      definition_18,
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false)),
    ],
    'code': [definition_65],
  });
  definition_31.addAllTokens({
    'line': [definition_44],
  });
  definition_0.addAllTokens({
    'parameter': [definition_1],
    'reference': [definition_2],
    'class-name': [definition_3],
    'code-section': [
      definition_14,
      definition_15,
    ],
    'tag': [definition_5],
    'entity': [
      definition_18,
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false)),
    ],
    'keyword': [definition_7],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'javadoc',
    definition_0,
    requiredDependencies: ['markup', 'xml', 'java', 'clike', 'javadoclike'],
  );
}

final languageJavadoc = _create();
