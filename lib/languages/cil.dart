// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\/\\/.*';
  const definition_10 =
      '(["\'])(?:\\\\(?:\\r\\n|[\\s\\S])|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_11 = '(^|\\W)\\.[a-z]+(?=\\s)';
  const definition_4 = '\\[[\\w\\.]+\\]';
  const definition_5 =
      '\\b(?:abstract|ansi|assembly|auto|autochar|beforefieldinit|bool|bstr|byvalstr|catch|char|cil|class|currency|date|decimal|default|enum|error|explicit|extends|extern|famandassem|family|famorassem|final(?:ly)?|float32|float64|hidebysig|iant|idispatch|implements|import|initonly|instance|u?int(?:8|16|32|64)?|interface|iunknown|literal|lpstr|lpstruct|lptstr|lpwstr|managed|method|native(?:Type)?|nested|newslot|object(?:ref)?|pinvokeimpl|private|privatescope|public|reqsecobj|rtspecialname|runtime|sealed|sequential|serializable|specialname|static|string|struct|syschar|tbstr|unicode|unmanagedexp|unsigned|value(?:type)?|variant|virtual|void)\\b';
  const definition_6 =
      '\\b(?:(?:constrained|no|readonly|tail|unaligned|volatile)\\.)?(?:conv\\.(?:[iu][1248]?|ovf\\.[iu][1248]?(?:\\.un)?|r\\.un|r4|r8)|ldc\\.(?:i4(?:\\.\\d+|\\.[mM]1|\\.s)?|i8|r4|r8)|ldelem(?:\\.[iu][1248]?|\\.r[48]|\\.ref|a)?|ldind\\.(?:[iu][1248]?|r[48]|ref)|stelem\\.?(?:i[1248]?|r[48]|ref)?|stind\\.(?:i[1248]?|r[48]|ref)?|end(?:fault|filter|finally)|ldarg(?:\\.[0-3s]|a(?:\\.s)?)?|ldloc(?:\\.\\d+|\\.s)?|sub(?:\\.ovf(?:\\.un)?)?|mul(?:\\.ovf(?:\\.un)?)?|add(?:\\.ovf(?:\\.un)?)?|stloc(?:\\.[0-3s])?|refany(?:type|val)|blt(?:\\.un)?(?:\\.s)?|ble(?:\\.un)?(?:\\.s)?|bgt(?:\\.un)?(?:\\.s)?|bge(?:\\.un)?(?:\\.s)?|unbox(?:\\.any)?|init(?:blk|obj)|call(?:i|virt)?|brfalse(?:\\.s)?|bne\\.un(?:\\.s)?|ldloca(?:\\.s)?|brzero(?:\\.s)?|brtrue(?:\\.s)?|brnull(?:\\.s)?|brinst(?:\\.s)?|starg(?:\\.s)?|leave(?:\\.s)?|shr(?:\\.un)?|rem(?:\\.un)?|div(?:\\.un)?|clt(?:\\.un)?|alignment|castclass|ldvirtftn|beq(?:\\.s)?|ckfinite|ldsflda|ldtoken|localloc|mkrefany|rethrow|cgt\\.un|arglist|switch|stsfld|sizeof|newobj|newarr|ldsfld|ldnull|ldflda|isinst|throw|stobj|stfld|ldstr|ldobj|ldlen|ldftn|ldfld|cpobj|cpblk|break|br\\.s|xor|shl|ret|pop|not|nop|neg|jmp|dup|cgt|ceq|box|and|or|br)\\b';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_8 = '\\b-?(?:0x[0-9a-f]+|\\d+)(?:\\.[0-9a-f]+)?\\b';
  const definition_9 = '[{}[\\];(),:=]|IL_[0-9A-Za-z]+';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    aliases: ['class-name'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'directive': [definition_3],
    'variable': [GrammarToken(pattern: RegExp(definition_4))],
    'keyword': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'number': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'cil',
    definition_0,
  );
}

final languageCil = _create();
