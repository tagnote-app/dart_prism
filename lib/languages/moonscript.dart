// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_21 = Grammar();
  final definition_26 = Grammar();
  final definition_18 = Grammar();
  const definition_1 = '--.*';
  const definition_19 = '\'[^\']*\'|\\[(=*)\\[[\\s\\S]*?\\]\\1\\]';
  const definition_20 = '"[^"]*"';
  const definition_25 = '#\\{[^{}]*\\}';
  const definition_29 = '(^#\\{)[\\s\\S]+(?=\\})';
  const definition_31 = '#\\{|\\}';
  const definition_22 = '(\\b(?:class|extends)[ \\t]+)\\w+';
  const definition_15 = '\\b[A-Z]\\w*';
  const definition_4 =
      '\\b(?:class|continue|do|else|elseif|export|extends|for|from|if|import|in|local|nil|return|self|super|switch|then|unless|using|when|while|with)\\b';
  const definition_5 = '@@?\\w*';
  const definition_16 = '\\b(?!\\d)\\w+(?=:)|(:)(?!\\d)\\w+';
  const definition_17 =
      '\\b(?:_G|_VERSION|assert|collectgarbage|coroutine\\.(?:create|resume|running|status|wrap|yield)|debug\\.(?:debug|getfenv|gethook|getinfo|getlocal|getmetatable|getregistry|getupvalue|setfenv|sethook|setlocal|setmetatable|setupvalue|traceback)|dofile|error|getfenv|getmetatable|io\\.(?:close|flush|input|lines|open|output|popen|read|stderr|stdin|stdout|tmpfile|type|write)|ipairs|load|loadfile|loadstring|math\\.(?:abs|acos|asin|atan|atan2|ceil|cos|cosh|deg|exp|floor|fmod|frexp|ldexp|log|log10|max|min|modf|pi|pow|rad|random|randomseed|sin|sinh|sqrt|tan|tanh)|module|next|os\\.(?:clock|date|difftime|execute|exit|getenv|remove|rename|setlocale|time|tmpname)|package\\.(?:cpath|loaded|loadlib|path|preload|seeall)|pairs|pcall|print|rawequal|rawget|rawset|require|select|setfenv|setmetatable|string\\.(?:byte|char|dump|find|format|gmatch|gsub|len|lower|match|rep|reverse|sub|upper)|table\\.(?:concat|insert|maxn|remove|sort)|tonumber|tostring|type|unpack|xpcall)\\b';
  const definition_23 = '\\.';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_9 =
      '(?:\\B\\.\\d+|\\b\\d+\\.\\d+|\\b\\d+(?=[eE]))(?:[eE][-+]?\\d+)?\\b|\\b(?:0x[a-fA-F\\d]+|\\d+)(?:U?LL)?\\b';
  const definition_10 =
      '\\.{3}|[-=]>|~=|(?:[-+*/%<>!=]|\\.\\.)=?|[:#^]|\\b(?:and|or)\\b=?|\\b(?:not)\\b';
  const definition_11 = '[.,()[\\]{}\\\\]';
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    global: true,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_20),
    greedy: true,
    inside: definition_21,
    global: true,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_25),
    inside: definition_26,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    inside: 'moonscript',
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_31),
    aliases: ['punctuation'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_16),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_17),
    inside: definition_18,
  );
  definition_26.addAllTokens({
    'moonscript': [definition_27],
    'interpolation-punctuation': [definition_28],
  });
  definition_21.addAllTokens({
    'interpolation': [definition_24],
  });
  definition_18.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_23))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [
      definition_12,
      definition_13,
    ],
    'class-name': [
      definition_14,
      GrammarToken(pattern: RegExp(definition_15)),
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'variable': [GrammarToken(pattern: RegExp(definition_5))],
    'property': [definition_6],
    'function': [definition_7],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [GrammarToken(pattern: RegExp(definition_9))],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'moonscript',
    definition_0,
    aliases: ['moon'],
  );
}

final languageMoonscript = _create();
