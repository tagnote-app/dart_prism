// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '--.+';
  const definition_12 = '\\b[oxb]"[\\da-f_]+"|"[01uxzwlh-]+"';
  const definition_14 = '"\\S+?"(?=\\()';
  const definition_4 = '"(?:[^\\\\"\\r\\n]|\\\\(?:\\r\\n|[\\s\\S]))*"';
  const definition_16 = '\\b\'\\w+';
  const definition_6 =
      '\\b(?:access|after|alias|all|architecture|array|assert|attribute|begin|block|body|buffer|bus|case|component|configuration|constant|disconnect|downto|else|elsif|end|entity|exit|file|for|function|generate|generic|group|guarded|if|impure|in|inertial|inout|is|label|library|linkage|literal|loop|map|new|next|null|of|on|open|others|out|package|port|postponed|private|procedure|process|pure|range|record|register|reject|report|return|select|severity|shared|signal|subtype|then|to|transport|type|unaffected|units|until|use|variable|view|wait|when|while|with)\\b';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_8 = '\\w+(?=\\()';
  const definition_9 =
      '\'[01uxzwlh-]\'|\\b(?:\\d+#[\\da-f_.]+#|\\d[\\d_.]*)(?:e[-+]?\\d+)?';
  const definition_10 =
      '[<>]=?|:=|[-+*/&=]|\\b(?:abs|and|mod|nand|nor|not|or|rem|rol|ror|sla|sll|sra|srl|xnor|xor)\\b';
  const definition_11 = '[{}[\\];(),.:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false),
    aliases: ['number'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['function'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['attr-name'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'vhdl-vectors': [definition_2],
    'quoted-function': [definition_3],
    'string': [GrammarToken(pattern: RegExp(definition_4))],
    'attribute': [definition_5],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'function': [GrammarToken(pattern: RegExp(definition_8))],
    'number': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'vhdl',
    definition_0,
  );
}

final languageVhdl = _create();
