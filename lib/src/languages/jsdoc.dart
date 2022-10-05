// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_8 = Grammar();
  final definition_10 = Grammar();
  final definition_26 = Grammar();
  final definition_21 = Grammar();
  final definition_23 = Grammar();
  final definition_14 = Grammar();
  const definition_7 =
      '(@(?:arg|argument|param|property)\\s+(?:\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}\\s+)?)(?:(?!\\s)[\$\\w\\xA0-\\uFFFF.])+(?=\\s|\$)';
  const definition_16 = '\\.';
  const definition_9 =
      '(@(?:arg|argument|param|property)\\s+(?:\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}\\s+)?)\\[(?:(?!\\s)[\$\\w\\xA0-\\uFFFF.])+(?:=[^[\\]]+)?\\](?=\\s|\$)';
  const definition_25 = '(^\\[)[\$\\w\\xA0-\\uFFFF\\.]+';
  const definition_27 = '(=)[\\s\\S]*(?=\\]\$)';
  const definition_19 = '[=[\\]]';
  const definition_20 =
      '(@(?:augments|class|extends|interface|memberof!?|template|this|typedef)\\s+(?:\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}\\s+)?)[A-Z]\\w*(?:\\.[A-Z]\\w*)*';
  const definition_22 =
      '(@[a-z]+\\s+)\\{(?:[^{}]|\\{(?:[^{}]|\\{[^{}]*\\})*\\})+\\}';
  const definition_37 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_38 =
      '(^|[^\\w\$])(?:NaN|Infinity|0[bB][01]+(?:_[01]+)*n?|0[oO][0-7]+(?:_[0-7]+)*n?|0[xX][\\dA-Fa-f]+(?:_[\\dA-Fa-f]+)*n?|\\d+(?:_\\d+)*n|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[Ee][+-]?\\d+(?:_\\d+)*)?)(?![\\w\$])';
  const definition_32 = '\\b(?:false|true)\\b';
  const definition_46 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:as|assert(?=\\s*\\{)|export|from(?=\\s*(?:[\'"]|\$))|import)\\b';
  const definition_48 = '((?:^|\\})\\s*)catch\\b';
  const definition_50 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:await|break|case|continue|default|do|else|finally(?=\\s*(?:\\{|\$))|for|if|return|switch|throw|try|while|yield)\\b';
  const definition_51 =
      '(^|[^.]|\\.\\.\\.\\s*)\\b(?:async(?=\\s*(?:function\\b|\\(|[\$\\w\\xA0-\\uFFFF]|\$))|class|const|debugger|delete|enum|extends|function|(?:get|set)(?=\\s*(?:[#\\[\$\\w\\xA0-\\uFFFF]|\$))|implements|in|instanceof|interface|let|new|null|of|package|private|protected|public|static|super|this|typeof|undefined|var|void|with)\\b';
  const definition_43 =
      '\\b(?:abstract|declare|is|keyof|out|readonly|require|satisfies)\\b';
  const definition_44 =
      '\\b(?:asserts|infer|interface|module|namespace|type)\\b(?=\\s*(?:[{_\$a-zA-Z\\xA0-\\uFFFF]|\$))';
  const definition_45 = '\\btype\\b(?=\\s*(?:[\\{*]|\$))';
  const definition_34 = '=>|\\.\\.\\.|[&|?:*]';
  const definition_35 = '[.,;=<>{}()[\\]]';
  const definition_13 =
      '(@example\\s+(?!\\s))(?:[^@\\s]|\\s+(?!\\s))+?(?=\\s*(?:\\*\\s*)?(?:@\\w|\\*\\/))';
  const definition_36 = '^([\\t ]*(?:\\*\\s*)?)\\S.*\$';
  const definition_15 =
      '(^[\\t ]*(?:\\/{3}|\\*|\\/\\*\\*)\\s*|\\{)@[a-z][a-zA-Z-]+\\b';
  const definition_6 = '[{}]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_7),
    lookbehind: true,
    inside: definition_8,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9),
    lookbehind: true,
    inside: definition_10,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_25),
    lookbehind: true,
    inside: definition_26,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    aliases: ['language-javascript'],
    inside: 'javascript',
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    inside: definition_21,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    inside: definition_23,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_37),
    greedy: true,
    global: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_38),
    lookbehind: true,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_46),
    lookbehind: true,
    aliases: ['module'],
  );
  final definition_40 = GrammarToken(
    pattern: RegExp(definition_48),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_50),
    lookbehind: true,
    aliases: ['control-flow'],
  );
  final definition_42 = GrammarToken(
    pattern: RegExp(definition_51),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    inside: definition_14,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_36, multiLine: true),
    lookbehind: true,
    aliases: ['language-javascript'],
    inside: 'javascript',
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_15, multiLine: true),
    lookbehind: true,
  );
  definition_8.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });
  definition_26.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });
  definition_10.addAllTokens({
    'parameter': [definition_17],
    'code': [definition_18],
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });
  definition_21.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
  });
  definition_23.addAllTokens({
    'string': [definition_30],
    'number': [definition_31],
    'boolean': [GrammarToken(pattern: RegExp(definition_32))],
    'keyword': [
      definition_39,
      definition_40,
      definition_41,
      definition_42,
      GrammarToken(pattern: RegExp(definition_43)),
      GrammarToken(pattern: RegExp(definition_44)),
      GrammarToken(pattern: RegExp(definition_45)),
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_34))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_35))],
  });
  definition_14.addAllTokens({
    'code': [definition_24],
  });
  definition_0.addAllTokens({
    'parameter': [definition_1],
    'optional-parameter': [definition_2],
    'class-name': [
      definition_11,
      definition_12,
    ],
    'example': [definition_4],
    'keyword': [definition_5],
    'punctuation': [GrammarToken(pattern: RegExp(definition_6))],
  });

  return LanguageProto(
    'jsdoc',
    definition_0,
    requiredDependencies: ['javascript', 'clike', 'javadoclike', 'typescript'],
  );
}

final languageJsdoc = _create();
