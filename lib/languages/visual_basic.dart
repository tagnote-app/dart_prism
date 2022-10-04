// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_11 = Grammar();
  const definition_10 = '(?:[\'‘’]|REM\\b)(?:[^\\r\\n_]|_(?:\\r\\n?|\\n)?)*';
  const definition_17 = '^REM';
  const definition_12 =
      '#(?:Const|Else|ElseIf|End|ExternalChecksum|ExternalSource|If|Region)(?:\\b_[ \\t]*(?:\\r\\n?|\\n)|.)+';
  const definition_14 = '\\\$?["“”](?:["“”]{2}|[^"“”])*["“”]C?';
  const definition_15 =
      '#[ \\t]*(?:\\d+([/-])\\d+\\1\\d+(?:[ \\t]+(?:\\d+[ \\t]*(?:AM|PM)|\\d+:\\d+(?::\\d+)?(?:[ \\t]*(?:AM|PM))?))?|\\d+[ \\t]*(?:AM|PM)|\\d+:\\d+(?::\\d+)?(?:[ \\t]*(?:AM|PM))?)[ \\t]*#';
  const definition_5 =
      '(?:(?:\\b\\d+(?:\\.\\d+)?|\\.\\d+)(?:E[+-]?\\d+)?|&[HO][\\dA-F]+)(?:[FRD]|U?[ILS])?';
  const definition_6 = '\\b(?:False|Nothing|True)\\b';
  const definition_7 =
      '\\b(?:AddHandler|AddressOf|Alias|And(?:Also)?|As|Boolean|ByRef|Byte|ByVal|Call|Case|Catch|C(?:Bool|Byte|Char|Date|Dbl|Dec|Int|Lng|Obj|SByte|Short|Sng|Str|Type|UInt|ULng|UShort)|Char|Class|Const|Continue|Currency|Date|Decimal|Declare|Default|Delegate|Dim|DirectCast|Do|Double|Each|Else(?:If)?|End(?:If)?|Enum|Erase|Error|Event|Exit|Finally|For|Friend|Function|Get(?:Type|XMLNamespace)?|Global|GoSub|GoTo|Handles|If|Implements|Imports|In|Inherits|Integer|Interface|Is|IsNot|Let|Lib|Like|Long|Loop|Me|Mod|Module|Must(?:Inherit|Override)|My(?:Base|Class)|Namespace|Narrowing|New|Next|Not(?:Inheritable|Overridable)?|Object|Of|On|Operator|Option(?:al)?|Or(?:Else)?|Out|Overloads|Overridable|Overrides|ParamArray|Partial|Private|Property|Protected|Public|RaiseEvent|ReadOnly|ReDim|RemoveHandler|Resume|Return|SByte|Select|Set|Shadows|Shared|short|Single|Static|Step|Stop|String|Structure|Sub|SyncLock|Then|Throw|To|Try|TryCast|Type|TypeOf|U(?:Integer|Long|Short)|Until|Using|Variant|Wend|When|While|Widening|With(?:Events)?|WriteOnly|Xor)\\b';
  const definition_8 = '[+\\-*/\\\\^<=>&#@\$%!]|\\b_(?=[ \\t]*[\\r\\n])';
  const definition_9 = '[{}().,:?]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10, caseSensitive: false),
    inside: definition_11,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false),
    aliases: ['property'],
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false),
    aliases: ['number'],
  );
  definition_11.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_17, caseSensitive: false))
    ],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'directive': [definition_2],
    'string': [definition_3],
    'date': [definition_4],
    'number': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'visual-basic',
    definition_0,
    aliases: ['vb', 'vba'],
  );
}

final languageVisualBasic = _create();
