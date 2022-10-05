// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_18 = Grammar();
  const definition_23 = '^\\s*#!.+';
  const definition_24 =
      '(^|[^\\\\])(?:\\/\\+(?:\\/\\+(?:[^+]|\\+(?!\\/))*\\+\\/|(?!\\/\\+)[\\s\\S])*?\\+\\/|\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/)';
  const definition_2 = '\'(?:\\\\(?:\\W|\\w+)|[^\\\\])\'';
  const definition_25 =
      '\\b[rx]"(?:\\\\[\\s\\S]|[^\\\\"])*"[cwd]?|\\bq"(?:\\[[\\s\\S]*?\\]|\\([\\s\\S]*?\\)|<[\\s\\S]*?>|\\{[\\s\\S]*?\\})"|\\bq"((?!\\d)\\w+)\$[\\s\\S]*?^\\1"|\\bq"(.)[\\s\\S]*?\\2"|(["`])(?:\\\\[\\s\\S]|(?!\\3)[^\\\\])*\\3[cwd]?';
  const definition_26 = '\\bq\\{(?:\\{[^{}]*\\}|[^{}])*\\}';
  const definition_17 =
      '(\\b(?:class|extends|implements|instanceof|interface|new|trait)\\s+|\\bcatch\\s+\\()[\\w.\\\\]+';
  const definition_28 = '[.\\\\]';
  const definition_5 = '\\B@\\w*';
  const definition_6 =
      '\\\$|\\b(?:__(?:(?:DATE|EOF|FILE|FUNCTION|LINE|MODULE|PRETTY_FUNCTION|TIME|TIMESTAMP|VENDOR|VERSION)__|gshared|parameters|traits|vector)|abstract|alias|align|asm|assert|auto|body|bool|break|byte|case|cast|catch|cdouble|cent|cfloat|char|class|const|continue|creal|dchar|debug|default|delegate|delete|deprecated|do|double|dstring|else|enum|export|extern|false|final|finally|float|for|foreach|foreach_reverse|function|goto|idouble|if|ifloat|immutable|import|inout|int|interface|invariant|ireal|lazy|long|macro|mixin|module|new|nothrow|null|out|override|package|pragma|private|protected|ptrdiff_t|public|pure|real|ref|return|scope|shared|short|size_t|static|string|struct|super|switch|synchronized|template|this|throw|true|try|typedef|typeid|typeof|ubyte|ucent|uint|ulong|union|unittest|ushort|version|void|volatile|wchar|while|with|wstring)\\b';
  const definition_7 = '\\b(?:false|true)\\b';
  const definition_19 =
      '\\b(?:[ABCD][LHX]|E?(?:BP|DI|SI|SP)|[BS]PL|CR[0234]|[ECSDGF]S|[DS]IL|DR[012367]|E[ABCD]X|X?MM[0-7]|R(?:1[0-5]|[89])[BWD]?|R[ABCD]X|R[BS]P|R[DS]I|TR[3-7]|XMM(?:1[0-5]|[89])|YMM(?:1[0-5]|\\d))\\b|\\bST(?:\\([0-7]\\)|\\b)';
  const definition_9 = '\\b\\w+(?=\\()';
  const definition_21 =
      '\\b0x\\.?[a-f\\d_]+(?:(?!\\.\\.)\\.[a-f\\d_]*)?(?:p[+-]?[a-f\\d_]+)?[ulfi]{0,4}';
  const definition_29 =
      '((?:\\.\\.)?)(?:\\b0b\\.?|\\b|\\.)\\d[\\d_]*(?:(?!\\.\\.)\\.[\\d_]*)?(?:e[+-]?\\d[\\d_]*)?[ulfi]{0,4}';
  const definition_11 =
      '\\|[|=]?|&[&=]?|\\+[+=]?|-[-=]?|\\.?\\.\\.|=[>=]?|!(?:i[ns]\\b|<>?=?|>=?|=)?|\\bi[ns]\\b|(?:<[<>]?|>>?>?|\\^\\^|[*\\/%^~])=?';
  const definition_12 = '[{}[\\];(),.:]';
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_23),
    greedy: true,
    global: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_24),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_25, multiLine: true),
    greedy: true,
    global: true,
  );
  final definition_16 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    aliases: ['token-string'],
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    lookbehind: true,
    inside: definition_18,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['variable'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_29, caseSensitive: false),
    lookbehind: true,
  );
  definition_18.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_13,
      definition_14,
    ],
    'char': [GrammarToken(pattern: RegExp(definition_2))],
    'string': [
      definition_15,
      definition_16,
    ],
    'class-name': [definition_4],
    'property': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'boolean': [GrammarToken(pattern: RegExp(definition_7))],
    'register': [definition_8],
    'function': [GrammarToken(pattern: RegExp(definition_9))],
    'number': [
      GrammarToken(pattern: RegExp(definition_21, caseSensitive: false)),
      definition_22,
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'd',
    definition_0,
    requiredDependencies: ['clike'],
  );
}

final languageD = _create();
