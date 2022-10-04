// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_25 = '\\/\\/[/!].*';
  const definition_15 = '\\/{2}.*';
  const definition_27 = '(^|[^\\\\@])c?"(?:[^"\\\\\\r\\n]|\\\\.)*"';
  const definition_28 =
      '([\\r\\n])([ \\t]+c?\\\\{2}).*(?:(?:\\r\\n?|\\n)\\2.*)*';
  const definition_18 =
      '(^|[^\\\\])\'(?:[^\'\\\\\\r\\n]|[\\uD800-\\uDFFF]{2}|\\\\(?:.|x[a-fA-F\\d]{2}|u\\{[a-fA-F\\d]{1,6}\\}))\'';
  const definition_4 = '\\B@(?!\\d)\\w+(?=\\s*\\()';
  const definition_19 =
      '(\\b(?:break|continue)\\s*:\\s*)\\w+\\b|\\b(?!\\d)\\w+\\b(?=\\s*:\\s*(?:\\{|while\\b))';
  const definition_20 =
      '\\b(?!\\d)\\w+(?=\\s*=\\s*(?:(?:extern|packed)\\s+)?(?:enum|struct|union)\\s*[({])';
  const definition_29 =
      '(:\\s*)(?!\\s)(?:!?\\s*(?:(?:\\?|\\bpromise->|(?:\\[[^[\\]]*\\]|\\*(?!\\*)|\\*\\*)(?:\\s*align\\s*\\((?:[^()]|\\([^()]*\\))*\\)|\\s*const\\b|\\s*volatile\\b|\\s*allowzero\\b)*)\\s*)*(?:\\bpromise\\b|(?:\\berror\\.)?\\b(?!\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b)(?!\\d)\\w+\\b(?:\\.\\b(?!\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b)(?!\\d)\\w+\\b)*(?!\\s+\\b(?!\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b)(?!\\d)\\w+\\b)))+(?=\\s*(?:align\\s*\\((?:[^()]|\\([^()]*\\))*\\)\\s*)?[=;,)])|(?!\\s)(?:!?\\s*(?:(?:\\?|\\bpromise->|(?:\\[[^[\\]]*\\]|\\*(?!\\*)|\\*\\*)(?:\\s*align\\s*\\((?:[^()]|\\([^()]*\\))*\\)|\\s*const\\b|\\s*volatile\\b|\\s*allowzero\\b)*)\\s*)*(?:\\bpromise\\b|(?:\\berror\\.)?\\b(?!\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b)(?!\\d)\\w+\\b(?:\\.\\b(?!\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b)(?!\\d)\\w+\\b)*(?!\\s+\\b(?!\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b)(?!\\d)\\w+\\b)))+(?=\\s*(?:align\\s*\\((?:[^()]|\\([^()]*\\))*\\)\\s*)?\\{)';
  const definition_31 =
      '(\\)\\s*)(?!\\s)(?:!?\\s*(?:(?:\\?|\\bpromise->|(?:\\[[^[\\]]*\\]|\\*(?!\\*)|\\*\\*)(?:\\s*align\\s*\\((?:[^()]|\\([^()]*\\))*\\)|\\s*const\\b|\\s*volatile\\b|\\s*allowzero\\b)*)\\s*)*(?:\\bpromise\\b|(?:\\berror\\.)?\\b(?!\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b)(?!\\d)\\w+\\b(?:\\.\\b(?!\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b)(?!\\d)\\w+\\b)*(?!\\s+\\b(?!\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b)(?!\\d)\\w+\\b)))+(?=\\s*(?:align\\s*\\((?:[^()]|\\([^()]*\\))*\\)\\s*)?;)';
  const definition_23 =
      '\\b(?:anyerror|bool|c_u?(?:int|long|longlong|short)|c_longdouble|c_void|comptime_(?:float|int)|f(?:16|32|64|128)|[iu](?:8|16|32|64|128|size)|noreturn|type|void)\\b';
  const definition_8 =
      '\\b(?:align|allowzero|and|anyframe|anytype|asm|async|await|break|cancel|catch|comptime|const|continue|defer|else|enum|errdefer|error|export|extern|fn|for|if|inline|linksection|nakedcc|noalias|nosuspend|null|or|orelse|packed|promise|pub|resume|return|stdcallcc|struct|suspend|switch|test|threadlocal|try|undefined|union|unreachable|usingnamespace|var|volatile|while)\\b';
  const definition_9 = '\\b(?!\\d)\\w+(?=\\s*\\()';
  const definition_10 =
      '\\b(?:0b[01]+|0o[0-7]+|0x[a-fA-F\\d]+(?:\\.[a-fA-F\\d]*)?(?:[pP][+-]?[a-fA-F\\d]+)?|\\d+(?:\\.\\d*)?(?:[eE][+-]?\\d+)?)\\b';
  const definition_11 = '\\b(?:false|true)\\b';
  const definition_12 =
      '\\.[*?]|\\.{2,3}|[-=]>|\\*\\*|\\+\\+|\\|\\||(?:<<|>>|[-+*]%|[-+*/%^&|<>!=])=?|[?~]';
  const definition_13 = '[.:,;(){}[\\]]';
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_25),
    aliases: ['doc-comment'],
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_27),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_28),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    inside: 'zig',
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
    inside: 'zig',
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['keyword'],
  );
  definition_0.addAllTokens({
    'comment': [
      definition_14,
      GrammarToken(pattern: RegExp(definition_15)),
    ],
    'string': [
      definition_16,
      definition_17,
    ],
    'char': [definition_3],
    'builtin': [GrammarToken(pattern: RegExp(definition_4))],
    'label': [definition_5],
    'class-name': [
      GrammarToken(pattern: RegExp(definition_20)),
      definition_21,
      definition_22,
    ],
    'builtin-type': [definition_7],
    'keyword': [GrammarToken(pattern: RegExp(definition_8))],
    'function': [GrammarToken(pattern: RegExp(definition_9))],
    'number': [GrammarToken(pattern: RegExp(definition_10))],
    'boolean': [GrammarToken(pattern: RegExp(definition_11))],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'zig',
    definition_0,
  );
}

final languageZig = _create();
