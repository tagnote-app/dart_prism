// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_27 = Grammar();
  final definition_32 = Grammar();
  final definition_57 = Grammar();
  final definition_60 = Grammar();
  final definition_62 = Grammar();
  final definition_40 = Grammar();
  const definition_23 = '###[\\s\\S]+?###';
  const definition_25 = '\\/{3}[\\s\\S]*?\\/{3}';
  const definition_3 = '#(?!\\{).+';
  const definition_71 = '#\\{[^}]+\\}';
  const definition_28 = '^#!.*';
  const definition_29 =
      '((?:^|[,{])[ \\t]*)(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\2)[^\\\\\\r\\n])*\\2(?=\\s*:)';
  const definition_31 = '`(?:\\\\[\\s\\S]|[^\\\\`])*`';
  const definition_72 = '^`|`\$';
  const definition_74 = '[\\s\\S]+';
  const definition_54 = '\'\'\'[\\s\\S]*?\'\'\'';
  const definition_56 = '"""[\\s\\S]*?"""';
  const definition_58 = '\'(?:\\\\[\\s\\S]|[^\\\\\'])*\'';
  const definition_59 = '"(?:\\\\[\\s\\S]|[^\\\\"])*"';
  const definition_61 =
      '(\\b(?:class|extends|implements|instanceof|interface|new)\\s+)[\\w.\\\\]+';
  const definition_77 = '[.\\\\]';
  const definition_63 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$A-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\.(?:constructor|prototype))';
  const definition_39 =
      '((?:^|[^\$\\w\\xA0-\\uFFFF."\'\\])\\s]|\\b(?:return|yield))\\s*)\\/(?:(?:\\[(?:[^\\]\\\\\\r\\n]|\\\\.)*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}|(?:\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.|\\[(?:[^[\\]\\\\\\r\\n]|\\\\.)*\\])*\\])*\\]|\\\\.|[^/\\\\\\[\\r\\n])+\\/[dgimyus]{0,7}v[dgimyus]{0,7})(?=(?:\\s|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/)*(?:\$|[\\r\\n,.;:})\\]]|\\/\\/))';
  const definition_78 = '^(\\/)[\\s\\S]+(?=\\/[a-z]*\$)';
  const definition_65 = '^\\/|\\/\$';
  const definition_66 = '^[a-z]+\$';
  const definition_41 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*[=:]\\s*(?:async\\s*)?(?:\\bfunction\\b|(?:\\((?:[^()]|\\([^()]*\\))*\\)|(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)\\s*=>))';
  const definition_67 =
      '(function(?:\\s+(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*)?\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\))';
  const definition_68 =
      '(^|[^\$\\w\\xA0-\\uFFFF])(?!\\s)[_\$a-z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*=>)';
  const definition_69 =
      '(\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*=>)';
  const definition_70 =
      '((?:\\b|\\s|^)(?!(?:as|async|await|break|case|catch|class|const|continue|debugger|default|delete|do|else|enum|export|extends|finally|for|from|function|get|if|implements|import|in|instanceof|interface|let|new|null|of|package|private|protected|public|return|set|static|super|switch|this|throw|try|typeof|undefined|var|void|while|with|yield)(?![\$\\w\\xA0-\\uFFFF]))(?:(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*\\s*)\\(\\s*|\\]\\s*\\(\\s*)(?!\\s)(?:[^()\\s]|\\s+(?![\\s)])|\\([^()]*\\))+(?=\\s*\\)\\s*\\{)';
  const definition_13 = '\\b[A-Z](?:[A-Z_]|\\dx?)*\\b';
  const definition_14 = '(?!\\d)\\w+(?=\\s*:(?!:))';
  const definition_15 =
      '\\b(?:and|break|by|catch|class|continue|debugger|delete|do|each|else|extend|extends|false|finally|for|if|in|instanceof|is|isnt|let|loop|namespace|new|no|not|null|of|off|on|or|own|return|super|switch|then|this|throw|true|try|typeof|undefined|unless|until|when|while|window|with|yes|yield)\\b';
  const definition_16 = '\\b(?:false|true)\\b';
  const definition_17 =
      '#?(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*(?:\\.\\s*(?:apply|bind|call)\\s*)?\\()';
  const definition_47 =
      '(^|[^\\w\$])(?:NaN|Infinity|0[bB][01]+(?:_[01]+)*n?|0[oO][0-7]+(?:_[0-7]+)*n?|0[xX][\\dA-Fa-f]+(?:_[\\dA-Fa-f]+)*n?|\\d+(?:_\\d+)*n|(?:\\d+(?:_\\d+)*(?:\\.(?:\\d+(?:_\\d+)*)?)?|\\.\\d+(?:_\\d+)*)(?:[Ee][+-]?\\d+(?:_\\d+)*)?)(?![\\w\$])';
  const definition_48 =
      '((?:^|[,{])[ \\t]*)(?!\\s)[_\$a-zA-Z\\xA0-\\uFFFF](?:(?!\\s)[\$\\w\\xA0-\\uFFFF])*(?=\\s*:)';
  const definition_20 =
      '--|\\+\\+|\\*\\*=?|=>|&&=?|\\|\\|=?|[!=]==|<<=?|>>>?=?|[-+*/%&|^!=<>]=?|\\.{3}|\\?\\?=?|\\?\\.?|[~:]';
  const definition_21 = '[{}[\\];(),.:]';
  const definition_49 = '@(?!\\d)\\w+';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['comment'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_25),
    aliases: ['regex'],
    inside: definition_27,
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_71),
    aliases: ['variable'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_28),
    greedy: true,
    aliases: ['comment'],
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_29, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_31),
    inside: definition_32,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_72),
    aliases: ['punctuation'],
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_74),
    aliases: ['language-javascript'],
    inside: 'javascript',
  );
  final definition_33 = GrammarToken(
    pattern: RegExp(definition_54),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_34 = GrammarToken(
    pattern: RegExp(definition_56),
    greedy: true,
    aliases: ['string'],
    inside: definition_57,
    global: true,
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_58),
    greedy: true,
    global: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_59),
    greedy: true,
    inside: definition_60,
    global: true,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_61),
    lookbehind: true,
    inside: definition_62,
  );
  final definition_38 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
    greedy: true,
    inside: definition_40,
    global: true,
  );
  final definition_64 = GrammarToken(
    pattern: RegExp(definition_78),
    lookbehind: true,
    aliases: ['language-regex'],
    inside: 'regex',
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_41),
    aliases: ['function'],
  );
  final definition_43 = GrammarToken(
    pattern: RegExp(definition_67),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_44 = GrammarToken(
    pattern: RegExp(definition_68, caseSensitive: false),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_45 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_46 = GrammarToken(
    pattern: RegExp(definition_70),
    lookbehind: true,
    inside: definition_0,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_47),
    lookbehind: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_48, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_49),
    aliases: ['variable'],
  );
  definition_27.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_3))],
    'interpolation': [definition_51],
  });
  definition_32.addAllTokens({
    'delimiter': [definition_52],
    'script': [definition_53],
  });
  definition_57.addAllTokens({
    'interpolation': [definition_51],
  });
  definition_60.addAllTokens({
    'interpolation': [definition_51],
  });
  definition_62.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_77))],
  });
  definition_40.addAllTokens({
    'regex-source': [definition_64],
    'regex-delimiter': [GrammarToken(pattern: RegExp(definition_65))],
    'regex-flags': [GrammarToken(pattern: RegExp(definition_66))],
  });
  definition_0.addAllTokens({
    'multiline-comment': [definition_1],
    'block-regex': [definition_2],
    'comment': [GrammarToken(pattern: RegExp(definition_3))],
    'hashbang': [definition_4],
    'string-property': [definition_5],
    'inline-javascript': [definition_6],
    'multiline-string': [
      definition_33,
      definition_34,
    ],
    'string': [
      definition_35,
      definition_36,
    ],
    'class-name': [
      definition_37,
      definition_38,
    ],
    'regex': [definition_10],
    'function-variable': [definition_11],
    'parameter': [
      definition_43,
      definition_44,
      definition_45,
      definition_46,
    ],
    'constant': [GrammarToken(pattern: RegExp(definition_13))],
    'property': [GrammarToken(pattern: RegExp(definition_14))],
    'keyword': [GrammarToken(pattern: RegExp(definition_15))],
    'boolean': [GrammarToken(pattern: RegExp(definition_16))],
    'function': [GrammarToken(pattern: RegExp(definition_17))],
    'number': [definition_18],
    'literal-property': [definition_19],
    'operator': [GrammarToken(pattern: RegExp(definition_20))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_21))],
    'class-member': [definition_22],
  });

  return LanguageProto(
    'coffeescript',
    definition_0,
    aliases: ['coffee'],
    requiredDependencies: ['javascript', 'clike'],
  );
}

final languageCoffeescript = _create();
