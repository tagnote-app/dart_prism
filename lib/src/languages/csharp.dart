// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_25 = Grammar();
  final definition_91 = Grammar();
  final definition_115 = Grammar();
  final definition_129 = Grammar();
  final definition_148 = Grammar();
  final definition_131 = Grammar();
  final definition_149 = Grammar();
  final definition_119 = Grammar();
  final definition_121 = Grammar();
  final definition_65 = Grammar();
  final definition_111 = Grammar();
  final definition_135 = Grammar();
  final definition_67 = Grammar();
  final definition_113 = Grammar();
  final definition_138 = Grammar();
  final definition_34 = Grammar();
  final definition_37 = Grammar();
  final definition_41 = Grammar();
  final definition_43 = Grammar();
  final definition_46 = Grammar();
  final definition_48 = Grammar();
  final definition_104 = Grammar();
  const definition_23 = '\\/\\/\\/.*';
  const definition_90 =
      '<\\/?(?!\\d)[^\\s>\\/=\$<%]+(?:\\s(?:\\s*[^\\s>\\/=]+(?:\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))|(?=[\\s/>])))+)?\\s*\\/?>';
  const definition_114 = '^(<\\/?)[^\\s>\\/]+';
  const definition_127 = '^[^\\s>\\/:]+:';
  const definition_128 =
      '(^|["\'\\s])(?:style)\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_139 = '^[^\\s=]+';
  const definition_147 = '=[\\s\\S]+';
  const definition_159 = '(^=\\s*(["\']|(?!["\'])))\\S[\\s\\S]*(?=\\2\$)';
  const definition_150 = '^=';
  const definition_163 = '"|\'';
  const definition_130 =
      '(^|["\'\\s])(?:on(?:abort|blur|change|click|composition(?:end|start|update)|dblclick|error|focus(?:in|out)?|key(?:down|up)|load|mouse(?:down|enter|leave|move|out|over|up)|reset|resize|scroll|select|slotchange|submit|unload|wheel))\\s*=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+(?=[\\s>]))';
  const definition_118 = '=\\s*(?:"[^"]*"|\'[^\']*\'|[^\\s\'">=]+)';
  const definition_152 = '^(\\s*)["\']|["\']\$';
  const definition_153 = '&[\\da-z]{1,8};';
  const definition_145 = '&#x?[\\da-f]{1,8};';
  const definition_108 = '^<\\/?|\\/?>\$';
  const definition_120 = '[^\\s>\\/]+';
  const definition_62 = '(^|[^\\\\])\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_63 = '(^|[^\\\\:])\\/\\/.*';
  const definition_64 =
      '(^|[^\\\\])(?:\\\$@|@\\\$)"(?:""|\\\\[\\s\\S]|\\{\\{|(?:\\{(?!\\{)(?:(?![}:])(?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\([^\\s\\S]*\\))*\\))*\\))*\\)))*(?::[^}\\r\\n]+)?\\})|[^\\\\{"])*"';
  const definition_110 =
      '((?:^|[^{])(?:\\{\\{)*)(?:\\{(?!\\{)(?:(?![}:])(?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\([^\\s\\S]*\\))*\\))*\\))*\\)))*(?::[^}\\r\\n]+)?\\})';
  const definition_134 =
      '(^\\{(?:(?![}:])(?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\([^\\s\\S]*\\))*\\))*\\))*\\)))*)(?::[^}\\r\\n]+)(?=\\}\$)';
  const definition_146 = '^:';
  const definition_123 = '^\\{|\\}\$';
  const definition_93 = '[\\s\\S]+';
  const definition_66 =
      '(^|[^@\\\\])\\\$"(?:\\\\.|\\{\\{|(?:\\{(?!\\{)(?:(?![}:])(?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\((?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\((?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\((?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\([^\\s\\S]*\\))*\\))*\\))*\\)))*(?::[^}\\r\\n]+)?\\})|[^\\\\"{])*"';
  const definition_112 =
      '((?:^|[^{])(?:\\{\\{)*)(?:\\{(?!\\{)(?:(?![}:])(?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\((?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\((?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\((?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\([^\\s\\S]*\\))*\\))*\\))*\\)))*(?::[^}\\r\\n]+)?\\})';
  const definition_137 =
      '(^\\{(?:(?![}:])(?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\((?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\((?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\((?:[^"\'/()]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\')|\\([^\\s\\S]*\\))*\\))*\\))*\\)))*)(?::[^}\\r\\n]+)(?=\\}\$)';
  const definition_30 =
      '\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'';
  const definition_68 =
      '(^|[^\$\\\\])(?:@"(?:""|\\\\[\\s\\S]|[^\\\\"])*"(?!"))';
  const definition_69 = '(^|[^@\$\\\\])(?:"(?:\\\\.|[^\\\\"\\r\\n])*")';
  const definition_33 =
      '(\\b(?:namespace|using)\\s+)(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*\\.\\s*(?:@?\\b[A-Za-z_]\\w*\\b))*(?=\\s*[;{])';
  const definition_70 = '\\.';
  const definition_35 =
      '(\\b(?:default|sizeof|typeof)\\s*\\(\\s*(?!\\s))(?:[^()\\s]|\\s(?!\\s)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\)))*(?=\\s*\\))';
  const definition_15 =
      '\\b(?:bool|byte|char|decimal|double|dynamic|float|int|long|object|sbyte|short|string|uint|ulong|ushort|var|void|class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b';
  const definition_71 = '[<>()?,.:[\\]]';
  const definition_38 =
      '(?:(?:(?:\\((?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+(?:,(?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+)+\\))|(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*))(?:\\s*(?:\\?\\s*)?(?:\\[\\s*(?:,\\s*)*\\]))*(?:\\s*\\?)?)(?=\\s+(?:(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*)\\s*(?:=>|[({]|\\.\\s*this\\s*\\[)|this\\s*\\[))';
  const definition_39 =
      '(\\bnew\\s+)(?:(?:(?:\\((?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+(?:,(?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+)+\\))|(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*))(?:\\s*(?:\\?\\s*)?(?:\\[\\s*(?:,\\s*)*\\]))*(?:\\s*\\?)?)(?=\\s*[[({])';
  const definition_40 =
      '(?:@?\\b[A-Za-z_]\\w*\\b)\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)(?=\\s*\\()';
  const definition_72 = '^(?:@?\\b[A-Za-z_]\\w*\\b)';
  const definition_95 =
      '<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>';
  const definition_42 =
      '\\b((?:(?:\\b(?:class|enum|interface|record|struct)\\b)\\s+(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)|record\\s+(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)\\s*(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|where\\s+(?:@?\\b[A-Za-z_]\\w*\\b))\\s*:\\s*)(?:(?:(?:(?:\\((?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+(?:,(?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+)+\\))|(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*))(?:\\s*(?:\\?\\s*)?(?:\\[\\s*(?:,\\s*)*\\]))*(?:\\s*\\?)?)|(?:\\b(?:bool|byte|char|decimal|double|dynamic|float|int|long|object|sbyte|short|string|uint|ulong|ushort|var|void|class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b)|(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)\\s*(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\bnew\\s*\\(\\s*\\)))(?:\\s*,\\s*(?:(?:(?:(?:\\((?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+(?:,(?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+)+\\))|(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*))(?:\\s*(?:\\?\\s*)?(?:\\[\\s*(?:,\\s*)*\\]))*(?:\\s*\\?)?)|(?:\\b(?:bool|byte|char|decimal|double|dynamic|float|int|long|object|sbyte|short|string|uint|ulong|ushort|var|void|class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b)|(?:\\bnew\\s*\\(\\s*\\))))*(?=\\s*(?:where|[{;]|=>|\$))';
  const definition_96 =
      '(^(?!new\\s*\\()(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)\\s*)(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))';
  const definition_98 =
      '(?:(?:\\((?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+(?:,(?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+)+\\))|(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*))(?:\\s*(?:\\?\\s*)?(?:\\[\\s*(?:,\\s*)*\\]))*(?:\\s*\\?)?';
  const definition_76 = '[,()]';
  const definition_44 = '(^[\\t ]*)#.*';
  const definition_99 =
      '(#)\\b(?:define|elif|else|endif|endregion|error|if|line|nullable|pragma|region|undef|warning)\\b';
  const definition_47 =
      '((?:^|[^\\s\\w>)?])\\s*\\[\\s*)(?:(?:\\b(?:assembly|event|field|method|module|param|property|return|type)\\b)\\s*:\\s*)?(?:(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*)(?:\\s*\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\([^\\s\\S]*\\))*\\))*\\))*\\))*\\))?)(?:\\s*,\\s*(?:(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*)(?:\\s*\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\([^\\s\\S]*\\))*\\))*\\))*\\))*\\))?))*(?=\\s*\\])';
  const definition_101 =
      '^(?:\\b(?:assembly|event|field|method|module|param|property|return|type)\\b)(?=\\s*:)';
  const definition_102 =
      '\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\((?:[^"\'/()]|(?:\\/(?![*/])|\\/\\/[^\\r\\n]*[\\r\\n]|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|(?:"(?:\\\\.|[^\\\\"\\r\\n])*"|\'(?:[^\\r\\n\'\\\\]|\\\\.|\\\\[Uux][\\da-fA-F]{1,8})\'))|\\([^\\s\\S]*\\))*\\))*\\))*\\))*\\)';
  const definition_103 =
      '(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*';
  const definition_81 = '[:,]';
  const definition_82 =
      '(\\busing\\s+static\\s+)(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*)(?=\\s*;)';
  const definition_83 =
      '(\\busing\\s+(?:@?\\b[A-Za-z_]\\w*\\b)\\s*=\\s*)(?:(?:(?:\\((?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+(?:,(?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+)+\\))|(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*))(?:\\s*(?:\\?\\s*)?(?:\\[\\s*(?:,\\s*)*\\]))*(?:\\s*\\?)?)(?=\\s*;)';
  const definition_84 = '(\\busing\\s+)(?:@?\\b[A-Za-z_]\\w*\\b)(?=\\s*=)';
  const definition_85 =
      '(\\b(?:\\b(?:class|enum|interface|record|struct)\\b)\\s+)(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)';
  const definition_86 =
      '(\\bcatch\\s*\\(\\s*)(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*)';
  const definition_87 = '(\\bwhere\\s+)(?:@?\\b[A-Za-z_]\\w*\\b)';
  const definition_88 =
      '(\\b(?:is(?:\\s+not)?|as)\\s+)(?:(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*)(?:\\s*(?:\\?\\s*)?(?:\\[\\s*(?:,\\s*)*\\]))*(?:\\s*\\?)?)';
  const definition_89 =
      '\\b(?:(?:(?:\\((?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+(?:,(?:[^,()<>[\\];=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>)|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|(?:\\((?:[^()]|[^\\s\\S])*\\)))*\\)))*\\)))*\\))|(?:\\[\\s*(?:,\\s*)*\\]))+)+\\))|(?:(?!(?:\\b(?:class|enum|interface|record|struct|add|alias|and|ascending|async|await|by|descending|from(?=\\s*(?:\\w|\$))|get|global|group|into|init(?=\\s*;)|join|let|nameof|not|notnull|on|or|orderby|partial|remove|select|set|unmanaged|value|when|where|with(?=\\s*{)|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b))(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?)(?:\\s*\\.\\s*(?:(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|(?:<(?:[^<>;=+\\-*/%&|^]|[^\\s\\S])*>))*>))*>))*>))?))*))(?:\\s*(?:\\?\\s*)?(?:\\[\\s*(?:,\\s*)*\\]))*(?:\\s*\\?)?)(?=\\s+(?!(?:\\b(?:bool|byte|char|decimal|double|dynamic|float|int|long|object|sbyte|short|string|uint|ulong|ushort|var|void|class|enum|interface|record|struct|abstract|as|base|break|case|catch|checked|const|continue|default|delegate|do|else|event|explicit|extern|finally|fixed|for|foreach|goto|if|implicit|in|internal|is|lock|namespace|new|null|operator|out|override|params|private|protected|public|readonly|ref|return|sealed|sizeof|stackalloc|static|switch|this|throw|try|typeof|unchecked|unsafe|using|virtual|volatile|while|yield)\\b)|with\\s*\\{)(?:@?\\b[A-Za-z_]\\w*\\b)(?:\\s*[=,;:{)\\]]|\\s+(?:in|when)\\b))';
  const definition_16 = '\\b(?:false|true)\\b';
  const definition_17 = '\\b\\w+(?=\\()';
  const definition_57 = '\\.\\.';
  const definition_19 =
      '(?:\\b0(?:x[\\da-f_]*[\\da-f]|b[01_]*[01])|(?:\\B\\.\\d+(?:_+\\d+)*|\\b\\d+(?:_+\\d+)*(?:\\.\\d+(?:_+\\d+)*)?)(?:e[-+]?\\d+(?:_+\\d+)*)?)(?:[dflmu]|lu|ul)?\\b';
  const definition_20 =
      '>>=?|<<=?|[-=]>|([-+&|])\\1|~|\\?\\?=?|[-+*/%&|^!=<>]=?';
  const definition_59 = '([(,]\\s*)(?:@?\\b[A-Za-z_]\\w*\\b)(?=\\s*:)';
  const definition_22 = '\\?\\.?|::|[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    aliases: ['comment'],
    inside: definition_25,
    global: true,
  );
  final definition_61 = GrammarToken(
    pattern: RegExp(definition_90),
    greedy: true,
    inside: definition_91,
    global: true,
  );
  final definition_105 = GrammarToken(
    pattern: RegExp(definition_114),
    lookbehind: true,
    inside: definition_115,
  );
  final definition_116 = GrammarToken(
    pattern: RegExp(definition_128, caseSensitive: false),
    lookbehind: true,
    inside: definition_129,
  );
  final definition_140 = GrammarToken(
    pattern: RegExp(definition_147),
    inside: definition_148,
  );
  final definition_155 = GrammarToken(
    pattern: RegExp(definition_159),
    lookbehind: true,
    aliases: ['css', 'language-css'],
    inside: 'css',
  );
  final definition_162 = GrammarToken(
    pattern: RegExp(definition_150),
    aliases: ['attr-equals'],
  );
  final definition_117 = GrammarToken(
    pattern: RegExp(definition_130, caseSensitive: false),
    lookbehind: true,
    inside: definition_131,
  );
  final definition_141 = GrammarToken(
    pattern: RegExp(definition_147),
    inside: definition_149,
  );
  final definition_157 = GrammarToken(
    pattern: RegExp(definition_159),
    lookbehind: true,
    aliases: ['javascript', 'language-javascript'],
    inside: 'javascript',
  );
  final definition_166 = GrammarToken(
    pattern: RegExp(definition_150),
    aliases: ['attr-equals'],
  );
  final definition_107 = GrammarToken(
    pattern: RegExp(definition_118),
    inside: definition_119,
  );
  final definition_142 = GrammarToken(
    pattern: RegExp(definition_150),
    aliases: ['attr-equals'],
  );
  final definition_143 = GrammarToken(
    pattern: RegExp(definition_152),
    lookbehind: true,
  );
  final definition_144 = GrammarToken(
    pattern: RegExp(definition_153, caseSensitive: false),
    aliases: ['named-entity'],
  );
  final definition_109 = GrammarToken(
    pattern: RegExp(definition_120),
    inside: definition_121,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_62),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_63),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_64),
    lookbehind: true,
    greedy: true,
    inside: definition_65,
    global: true,
  );
  final definition_92 = GrammarToken(
    pattern: RegExp(definition_110),
    lookbehind: true,
    inside: definition_111,
  );
  final definition_122 = GrammarToken(
    pattern: RegExp(definition_134),
    lookbehind: true,
    inside: definition_135,
  );
  final definition_124 = GrammarToken(
    pattern: RegExp(definition_93),
    aliases: ['language-csharp'],
    inside: 'csharp',
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_66),
    lookbehind: true,
    greedy: true,
    inside: definition_67,
    global: true,
  );
  final definition_94 = GrammarToken(
    pattern: RegExp(definition_112),
    lookbehind: true,
    inside: definition_113,
  );
  final definition_125 = GrammarToken(
    pattern: RegExp(definition_137),
    lookbehind: true,
    inside: definition_138,
  );
  final definition_126 = GrammarToken(
    pattern: RegExp(definition_93),
    aliases: ['language-csharp'],
    inside: 'csharp',
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_30),
    greedy: true,
    global: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_68),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_69),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_33),
    lookbehind: true,
    inside: definition_34,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_35),
    lookbehind: true,
    aliases: ['class-name'],
    inside: definition_37,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_38),
    inside: definition_37,
    aliases: ['class-name'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
    inside: definition_37,
    aliases: ['class-name'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_40),
    inside: definition_41,
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_95),
    aliases: ['class-name'],
    inside: definition_37,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_42),
    lookbehind: true,
    inside: definition_43,
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_96),
    lookbehind: true,
    greedy: true,
    inside: 'csharp',
    global: true,
  );
  final definition_75 = GrammarToken(
    pattern: RegExp(definition_98),
    greedy: true,
    inside: definition_37,
    global: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_44, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
    inside: definition_46,
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_99),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_47),
    lookbehind: true,
    greedy: true,
    inside: definition_48,
    global: true,
  );
  final definition_78 = GrammarToken(
    pattern: RegExp(definition_101),
    aliases: ['keyword'],
  );
  final definition_79 = GrammarToken(
    pattern: RegExp(definition_102),
    inside: 'csharp',
  );
  final definition_80 = GrammarToken(
    pattern: RegExp(definition_103),
    inside: definition_104,
  );
  final definition_49 = GrammarToken(
    pattern: RegExp(definition_82),
    lookbehind: true,
    inside: definition_37,
  );
  final definition_50 = GrammarToken(
    pattern: RegExp(definition_83),
    lookbehind: true,
    inside: definition_37,
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_84),
    lookbehind: true,
  );
  final definition_52 = GrammarToken(
    pattern: RegExp(definition_85),
    lookbehind: true,
    inside: definition_37,
  );
  final definition_53 = GrammarToken(
    pattern: RegExp(definition_86),
    lookbehind: true,
    inside: definition_37,
  );
  final definition_54 = GrammarToken(
    pattern: RegExp(definition_87),
    lookbehind: true,
  );
  final definition_55 = GrammarToken(
    pattern: RegExp(definition_88),
    lookbehind: true,
    inside: definition_37,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_89),
    inside: definition_37,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_57),
    aliases: ['operator'],
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_59),
    lookbehind: true,
    aliases: ['punctuation'],
  );
  definition_115.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_127))],
  });
  definition_148.addAllTokens({
    'value': [definition_155],
    'punctuation': [
      definition_162,
      GrammarToken(pattern: RegExp(definition_163)),
    ],
  });
  definition_129.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_139))],
    'attr-value': [definition_140],
  });
  definition_149.addAllTokens({
    'value': [definition_157],
    'punctuation': [
      definition_166,
      GrammarToken(pattern: RegExp(definition_163)),
    ],
  });
  definition_131.addAllTokens({
    'attr-name': [GrammarToken(pattern: RegExp(definition_139))],
    'attr-value': [definition_141],
  });
  definition_119.addAllTokens({
    'punctuation': [
      definition_142,
      definition_143,
    ],
    'entity': [
      definition_144,
      GrammarToken(pattern: RegExp(definition_145, caseSensitive: false)),
    ],
  });
  definition_121.addAllTokens({
    'namespace': [GrammarToken(pattern: RegExp(definition_127))],
  });
  definition_91.addAllTokens({
    'tag': [definition_105],
    'special-attr': [
      definition_116,
      definition_117,
    ],
    'attr-value': [definition_107],
    'punctuation': [GrammarToken(pattern: RegExp(definition_108))],
    'attr-name': [definition_109],
  });
  definition_25.addAllTokens({
    'tag': [definition_61],
  });
  definition_135.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_146))],
  });
  definition_111.addAllTokens({
    'format-string': [definition_122],
    'punctuation': [GrammarToken(pattern: RegExp(definition_123))],
    'expression': [definition_124],
  });
  definition_65.addAllTokens({
    'interpolation': [definition_92],
    'string': [GrammarToken(pattern: RegExp(definition_93))],
  });
  definition_138.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_146))],
  });
  definition_113.addAllTokens({
    'format-string': [definition_125],
    'punctuation': [GrammarToken(pattern: RegExp(definition_123))],
    'expression': [definition_126],
  });
  definition_67.addAllTokens({
    'interpolation': [definition_94],
    'string': [GrammarToken(pattern: RegExp(definition_93))],
  });
  definition_34.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_70))],
  });
  definition_37.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_15))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_71))],
  });
  definition_41.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_72))],
    'generic': [definition_73],
  });
  definition_43.addAllTokens({
    'record-arguments': [definition_74],
    'keyword': [GrammarToken(pattern: RegExp(definition_15))],
    'class-name': [definition_75],
    'punctuation': [GrammarToken(pattern: RegExp(definition_76))],
  });
  definition_46.addAllTokens({
    'directive': [definition_77],
  });
  definition_104.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_70))],
  });
  definition_48.addAllTokens({
    'target': [definition_78],
    'attribute-arguments': [definition_79],
    'class-name': [definition_80],
    'punctuation': [GrammarToken(pattern: RegExp(definition_81))],
  });
  definition_0.addAllTokens({
    'doc-comment': [definition_1],
    'comment': [
      definition_26,
      definition_27,
    ],
    'interpolation-string': [
      definition_28,
      definition_29,
    ],
    'char': [definition_4],
    'string': [
      definition_31,
      definition_32,
    ],
    'namespace': [definition_6],
    'type-expression': [definition_7],
    'return-type': [definition_8],
    'constructor-invocation': [definition_9],
    'generic-method': [definition_10],
    'type-list': [definition_11],
    'preprocessor': [definition_12],
    'attribute': [definition_13],
    'class-name': [
      definition_49,
      definition_50,
      definition_51,
      definition_52,
      definition_53,
      definition_54,
      definition_55,
      definition_56,
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_15))],
    'boolean': [GrammarToken(pattern: RegExp(definition_16))],
    'function': [GrammarToken(pattern: RegExp(definition_17))],
    'range': [definition_18],
    'number': [
      GrammarToken(pattern: RegExp(definition_19, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_20))],
    'named-parameter': [definition_21],
    'punctuation': [GrammarToken(pattern: RegExp(definition_22))],
  });

  return LanguageProto(
    'csharp',
    definition_0,
    aliases: ['cs', 'dotnet'],
    requiredDependencies: ['clike'],
    optionalDependencies: ['xml-doc'],
  );
}

final languageCsharp = _create();
