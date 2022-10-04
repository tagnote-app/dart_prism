// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  const definition_1 = ';.*';
  const definition_10 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_3 = '#\\w+\\\$?';
  const definition_11 = '(^[\\t ]*)!.*';
  const definition_24 = '(["\'`])(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_25 = '(!\\s*j[a-z]+\\s+)@[fb]';
  const definition_27 = '(!\\s*j[a-z]+\\s+)[A-Z._?\$@][\\w.?\$@~#]*';
  const definition_28 = '\\b(?:extern|global)\\b[^;\\r\\n]*';
  const definition_29 = '\\b(?:CPU|DEFAULT|FLOAT)\\b.*';
  const definition_30 = '^([\\t ]*!\\s*)[\\da-z]+(?=\\s|\$)';
  const definition_31 = '(:\\s*)[\\da-z]+(?=\\s)';
  const definition_33 = '^([\\t ]*!\\s*)[A-Za-z._?\$@][\\w.?\$@~#]*(?=:)';
  const definition_21 =
      '\\b(?:st\\d|[xyz]mm\\d\\d?|[cdt]r\\d|r\\d\\d?[bwd]?|[abcd][hl]|[er]?[abcd]x|[er]?(?:bp|di|si|sp)|[cdefgs]s|mm\\d+)\\b';
  const definition_22 =
      '(?:\\b|-|(?=\\\$))(?:0[hx](?:[\\da-f]*\\.)?[\\da-f]+(?:p[+-]?\\d+)?|\\d[\\da-f]+[hx]|\\\$\\d[\\da-f]*|0[oq][0-7]+|[0-7]+[oq]|0[by][01]+|[01]+[by]|0[dt]\\d+|(?:\\d+(?:\\.\\d+)?|\\.\\d+)(?:\\.?e[+-]?\\d+)?[dt]?)\\b';
  const definition_23 = '[\\[\\]*+\\-/%<>=&|\$!,.:]';
  const definition_5 =
      '\\b(?:align|and|as|break|calldebugger|case|compilercase|compilerdefault|compilerelse|compilerelseif|compilerendif|compilerendselect|compilererror|compilerif|compilerselect|continue|data|datasection|debug|debuglevel|declare|declarec|declarecdll|declaredll|declaremodule|default|define|dim|disableasm|disabledebugger|disableexplicit|else|elseif|enableasm|enabledebugger|enableexplicit|end|enddatasection|enddeclaremodule|endenumeration|endif|endimport|endinterface|endmacro|endmodule|endprocedure|endselect|endstructure|endstructureunion|endwith|enumeration|extends|fakereturn|for|foreach|forever|global|gosub|goto|if|import|importc|includebinary|includefile|includepath|interface|macro|module|newlist|newmap|next|not|or|procedure|procedurec|procedurecdll|proceduredll|procedurereturn|protected|prototype|prototypec|read|redim|repeat|restore|return|runtime|select|shared|static|step|structure|structureunion|swap|threaded|to|until|wend|while|with|xincludefile|xor)\\b';
  const definition_6 = '\\b\\w+(?:\\.\\w+)?\\s*(?=\\()';
  const definition_7 =
      '(?:\\\$[\\da-f]+|\\b-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)(?:e[+-]?\\d+)?)\\b';
  const definition_8 =
      '(?:@\\*?|\\?|\\*)\\w+\\\$?|-[>-]?|\\+\\+?|!=?|<<?=?|>>?=?|==?|&&?|\\|?\\||[~^%?*/@]';
  const definition_9 = '[{}[\\];(),.:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_11, multiLine: true),
    lookbehind: true,
    aliases: ['tag'],
    inside: definition_13,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    lookbehind: true,
    aliases: ['fasm-label'],
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_27, caseSensitive: false),
    lookbehind: true,
    aliases: ['fasm-label'],
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_30, caseSensitive: false, multiLine: true),
    lookbehind: true,
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_31, caseSensitive: false),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_33, multiLine: true),
    lookbehind: true,
    aliases: ['fasm-label'],
  );
  definition_13.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_14],
    'label-reference-anonymous': [definition_15],
    'label-reference-addressed': [definition_16],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_28, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_29)),
    ],
    'function': [definition_18],
    'function-inline': [definition_19],
    'label': [definition_20],
    'register': [
      GrammarToken(pattern: RegExp(definition_21, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_22, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_23))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'tag': [GrammarToken(pattern: RegExp(definition_3))],
    'asm': [definition_4],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'function': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'purebasic',
    definition_0,
    aliases: ['pbfasm'],
    requiredDependencies: ['clike'],
  );
}

final languagePurebasic = _create();
