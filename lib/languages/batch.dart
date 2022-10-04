// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_17 = Grammar();
  final definition_43 = Grammar();
  final definition_19 = Grammar();
  final definition_21 = Grammar();
  final definition_23 = Grammar();
  final definition_25 = Grammar();
  const definition_6 = '^::.*';
  const definition_15 =
      '((?:^|[&(])[ \\t]*)rem\\b(?:[^^&)\\r\\n]|\\^(?:\\r\\n|[\\s\\S]))*';
  const definition_8 = '^:.*';
  const definition_16 =
      '((?:^|[&(])[ \\t]*)for(?: \\/[a-z?](?:[ :](?:"[^"]*"|[^\\s"/]\\S*))?)* \\S+ in \\([^)]+\\) do';
  const definition_26 = '\\b(?:do|in)\\b|^for\\b';
  const definition_27 = '"(?:[\\\\"]"|[^"])*"(?!")';
  const definition_41 = '\\/[a-z?]+(?=[ :]|\$):?|-[a-z]\\b|--[a-z-]+\\b';
  const definition_46 = ':';
  const definition_29 = '%%?[~:\\w]+%?|!\\S+!';
  const definition_30 = '(?:\\b|-)\\d+\\b';
  const definition_31 = '[()\',]';
  const definition_18 =
      '((?:^|[&(])[ \\t]*)if(?: \\/[a-z?](?:[ :](?:"[^"]*"|[^\\s"/]\\S*))?)* (?:not )?(?:cmdextversion \\d+|defined \\w+|errorlevel \\d+|exist \\S+|(?:"[^"]*"|(?!")(?:(?!==)\\S)+)?(?:==| (?:equ|geq|gtr|leq|lss|neq) )(?:"[^"]*"|[^\\s"]\\S*))';
  const definition_32 =
      '\\b(?:cmdextversion|defined|errorlevel|exist|not)\\b|^if\\b';
  const definition_33 = '\\^|==|\\b(?:equ|geq|gtr|leq|lss|neq)\\b';
  const definition_20 = '((?:^|[&()])[ \\t]*)else\\b';
  const definition_34 = '^else\\b';
  const definition_22 =
      '((?:^|[&(])[ \\t]*)set(?: \\/[a-z](?:[ :](?:"[^"]*"|[^\\s"/]\\S*))?)* (?:[^^&)\\r\\n]|\\^(?:\\r\\n|[\\s\\S]))*';
  const definition_35 = '^set\\b';
  const definition_44 = '\\w+(?=(?:[*\\/%+\\-&^|]|<<|>>)?=)';
  const definition_37 = '[*\\/%+\\-&^|]=?|<<=?|>>=?|[!~_=]';
  const definition_24 =
      '((?:^|[&(])[ \\t]*@?)\\w+\\b(?:"(?:[\\\\"]"|[^"])*"(?!")|[^"^&)\\r\\n]|\\^(?:\\r\\n|[\\s\\S]))*';
  const definition_38 = '^\\w+\\b';
  const definition_45 = '(^\\s*):\\S+';
  const definition_40 = '\\^';
  const definition_4 = '[&@]';
  const definition_5 = '[()\']';
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_15, caseSensitive: false, multiLine: true),
    lookbehind: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8, multiLine: true),
    aliases: ['property'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_17,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_41, caseSensitive: false, multiLine: true),
    aliases: ['attr-name'],
    inside: definition_43,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_19,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_20, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_21,
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false, multiLine: true),
    lookbehind: true,
    inside: definition_23,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_24, multiLine: true),
    lookbehind: true,
    inside: definition_25,
  );
  final definition_39 = GrammarToken(
    pattern: RegExp(definition_45, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
  );
  definition_43.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_46))],
  });
  definition_17.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_26, caseSensitive: false))
    ],
    'string': [GrammarToken(pattern: RegExp(definition_27))],
    'parameter': [definition_28],
    'variable': [GrammarToken(pattern: RegExp(definition_29))],
    'number': [GrammarToken(pattern: RegExp(definition_30))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_31))],
  });
  definition_19.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_32, caseSensitive: false))
    ],
    'string': [GrammarToken(pattern: RegExp(definition_27))],
    'parameter': [definition_28],
    'variable': [GrammarToken(pattern: RegExp(definition_29))],
    'number': [GrammarToken(pattern: RegExp(definition_30))],
    'operator': [
      GrammarToken(pattern: RegExp(definition_33, caseSensitive: false))
    ],
  });
  definition_21.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_34, caseSensitive: false))
    ],
  });
  definition_23.addAllTokens({
    'keyword': [
      GrammarToken(pattern: RegExp(definition_35, caseSensitive: false))
    ],
    'string': [GrammarToken(pattern: RegExp(definition_27))],
    'parameter': [definition_28],
    'variable': [
      GrammarToken(pattern: RegExp(definition_29)),
      GrammarToken(pattern: RegExp(definition_44)),
    ],
    'number': [GrammarToken(pattern: RegExp(definition_30))],
    'operator': [GrammarToken(pattern: RegExp(definition_37))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_31))],
  });
  definition_25.addAllTokens({
    'keyword': [GrammarToken(pattern: RegExp(definition_38))],
    'string': [GrammarToken(pattern: RegExp(definition_27))],
    'parameter': [definition_28],
    'label': [definition_39],
    'variable': [GrammarToken(pattern: RegExp(definition_29))],
    'number': [GrammarToken(pattern: RegExp(definition_30))],
    'operator': [GrammarToken(pattern: RegExp(definition_40))],
  });
  definition_0.addAllTokens({
    'comment': [
      GrammarToken(pattern: RegExp(definition_6, multiLine: true)),
      definition_7,
    ],
    'label': [definition_2],
    'command': [
      definition_10,
      definition_11,
      definition_12,
      definition_13,
      definition_14,
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_4))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_5))],
  });

  return LanguageProto(
    'batch',
    definition_0,
  );
}

final languageBatch = _create();
