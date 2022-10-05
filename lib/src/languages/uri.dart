// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_7 = Grammar();
  final definition_9 = Grammar();
  final definition_11 = Grammar();
  final definition_28 = Grammar();
  final definition_13 = Grammar();
  final definition_30 = Grammar();
  final definition_32 = Grammar();
  final definition_34 = Grammar();
  final definition_45 = Grammar();
  final definition_15 = Grammar();
  const definition_6 = '^[a-z][a-z0-9+.-]*:';
  const definition_16 = ':\$';
  const definition_8 = '#[\\w\\-.~!\$&\'()*+,;=%:@/?]*';
  const definition_17 = '^#';
  const definition_10 = '\\?[\\w\\-.~!\$&\'()*+,;=%:@/?]*';
  const definition_26 = '^\\?';
  const definition_19 = '[&;]';
  const definition_27 = '^[^=][\\s\\S]*';
  const definition_35 = '^[^=]+';
  const definition_43 = '(^=)[\\s\\S]+';
  const definition_12 =
      '^\\/\\/(?:[\\w\\-.~!\$&\'()*+,;=%:]*@)?(?:\\[(?:[0-9a-fA-F:.]{2,48}|v[0-9a-fA-F]+\\.[\\w\\-.~!\$&\'()*+,;=]+)\\]|[\\w\\-.~!\$&\'()*+,;=%]*)(?::\\d*)?';
  const definition_21 = '^\\/\\/';
  const definition_29 = '^[\\w\\-.~!\$&\'()*+,;=%:]*@';
  const definition_37 = '@\$';
  const definition_38 = '^[\\w\\-.~!\$&\'()*+,;=%:]+';
  const definition_31 = ':\\d*\$';
  const definition_39 = '^:';
  const definition_40 = '^\\d+';
  const definition_33 = '[\\s\\S]+';
  const definition_44 = '^\\[[\\s\\S]+\\]\$';
  const definition_46 = '^\\[|\\]\$';
  const definition_47 = '^v[\\s\\S]+';
  const definition_48 = '^[\\s\\S]+';
  const definition_42 =
      '^(?:(?:[03-9]\\d?|[12]\\d{0,2})\\.){3}(?:[03-9]\\d?|[12]\\d{0,2})\$';
  const definition_14 = '^[\\w\\-.~!\$&\'()*+,;=%:@/]+';
  const definition_25 = '\\/';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_6, caseSensitive: false, multiLine: true),
    greedy: true,
    inside: definition_7,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    inside: definition_9,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_10),
    inside: definition_11,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_26),
    greedy: true,
    global: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_27),
    inside: definition_28,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_43),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_12, multiLine: true),
    inside: definition_13,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_29),
    inside: definition_30,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_31),
    inside: definition_32,
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_33),
    inside: definition_34,
  );
  final definition_41 = GrammarToken(
    pattern: RegExp(definition_44),
    inside: definition_45,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_14, multiLine: true),
    inside: definition_15,
  );
  definition_7.addAllTokens({
    'scheme-delimiter': [GrammarToken(pattern: RegExp(definition_16))],
  });
  definition_9.addAllTokens({
    'fragment-delimiter': [GrammarToken(pattern: RegExp(definition_17))],
  });
  definition_28.addAllTokens({
    'key': [GrammarToken(pattern: RegExp(definition_35))],
    'value': [definition_36],
  });
  definition_11.addAllTokens({
    'query-delimiter': [definition_18],
    'pair-delimiter': [GrammarToken(pattern: RegExp(definition_19))],
    'pair': [definition_20],
  });
  definition_30.addAllTokens({
    'user-info-delimiter': [GrammarToken(pattern: RegExp(definition_37))],
    'user-info': [GrammarToken(pattern: RegExp(definition_38))],
  });
  definition_32.addAllTokens({
    'port-delimiter': [GrammarToken(pattern: RegExp(definition_39))],
    'port': [GrammarToken(pattern: RegExp(definition_40))],
  });
  definition_45.addAllTokens({
    'ip-literal-delimiter': [GrammarToken(pattern: RegExp(definition_46))],
    'ipv-future': [GrammarToken(pattern: RegExp(definition_47))],
    'ipv6-address': [GrammarToken(pattern: RegExp(definition_48))],
  });
  definition_34.addAllTokens({
    'ip-literal': [definition_41],
    'ipv4-address': [GrammarToken(pattern: RegExp(definition_42))],
  });
  definition_13.addAllTokens({
    'authority-delimiter': [GrammarToken(pattern: RegExp(definition_21))],
    'user-info-segment': [definition_22],
    'port-segment': [definition_23],
    'host': [definition_24],
  });
  definition_15.addAllTokens({
    'path-separator': [GrammarToken(pattern: RegExp(definition_25))],
  });
  definition_0.addAllTokens({
    'scheme': [definition_1],
    'fragment': [definition_2],
    'query': [definition_3],
    'authority': [definition_4],
    'path': [definition_5],
  });

  return LanguageProto(
    'uri',
    definition_0,
    aliases: ['url'],
  );
}

final languageUri = _create();
