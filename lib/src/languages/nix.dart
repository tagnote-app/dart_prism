// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_13 = Grammar();
  const definition_11 = '\\/\\*[\\s\\S]*?\\*\\/|#.*';
  const definition_12 =
      '"(?:[^"\\\\]|\\\\[\\s\\S])*"|\'\'(?:(?!\'\')[\\s\\S]|\'\'(?:\'|\\\\|\\\$\\{))*\'\'';
  const definition_20 =
      '(^|(?:^|(?!\'\').)[^\\\\])\\\$\\{(?:[^{}]|\\{[^}]*\\})*\\}';
  const definition_14 = '\\b(?:[a-z]{3,7}:\\/\\/)[\\w\\-+%~\\/.:#=?&]+';
  const definition_19 =
      '([^\\/])(?:[\\w\\-+%~.:#=?&]*(?!\\/\\/)[\\w\\-+%~\\/.:#=?&])?(?!\\/\\/)\\/[\\w\\-+%~\\/.:#=?&]*';
  const definition_16 = '\\\$(?=\\{)';
  const definition_5 = '\\b\\d+\\b';
  const definition_6 =
      '\\b(?:assert|builtins|else|if|in|inherit|let|null|or|then|with)\\b';
  const definition_7 =
      '\\b(?:abort|add|all|any|attrNames|attrValues|baseNameOf|compareVersions|concatLists|currentSystem|deepSeq|derivation|dirOf|div|elem(?:At)?|fetch(?:Tarball|url)|filter(?:Source)?|fromJSON|genList|getAttr|getEnv|hasAttr|hashString|head|import|intersectAttrs|is(?:Attrs|Bool|Function|Int|List|Null|String)|length|lessThan|listToAttrs|map|mul|parseDrvName|pathExists|read(?:Dir|File)|removeAttrs|replaceStrings|seq|sort|stringLength|sub(?:string)?|tail|throw|to(?:File|JSON|Path|String|XML)|trace|typeOf)\\b|\\bfoldl\'\\B';
  const definition_8 = '\\b(?:false|true)\\b';
  const definition_9 = '[=!<>]=?|\\+\\+?|\\|\\||&&|\\/\\/|->?|[?@]';
  const definition_10 = '[{}()[\\].,:;]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    inside: definition_13,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
    inside: 'nix',
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['important'],
  );
  definition_13.addAllTokens({
    'interpolation': [definition_18],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'url': [
      GrammarToken(pattern: RegExp(definition_14)),
      definition_15,
    ],
    'antiquotation': [definition_4],
    'number': [GrammarToken(pattern: RegExp(definition_5))],
    'keyword': [GrammarToken(pattern: RegExp(definition_6))],
    'function': [GrammarToken(pattern: RegExp(definition_7))],
    'boolean': [GrammarToken(pattern: RegExp(definition_8))],
    'operator': [GrammarToken(pattern: RegExp(definition_9))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'nix',
    definition_0,
  );
}

final languageNix = _create();
