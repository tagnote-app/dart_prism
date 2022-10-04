// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_12 = Grammar();
  final definition_27 = Grammar();
  final definition_29 = Grammar();
  const definition_11 = '"[^"]*"';
  const definition_13 = '\\[[^\\[\\]]+\\]';
  const definition_30 = '\\[|\\]';
  const definition_14 =
      '^[ \\t]*(?:book|chapter|part(?! of)|section|table|volume)\\b.+';
  const definition_16 =
      '(^|[^-])(?:\\b\\d+(?:\\.\\d+)?(?:\\^\\d+)?(?:(?!\\d)\\w+)?|\\b(?:eight|eleven|five|four|nine|one|seven|six|ten|three|twelve|two))\\b(?!-)';
  const definition_17 =
      '(^|[^-])\\b(?:answering|applying to|are|asking|attacking|be(?:ing)?|burning|buying|called|carries|carry(?! out)|carrying|climbing|closing|conceal(?:ing|s)?|consulting|contain(?:ing|s)?|cutting|drinking|dropping|eating|enclos(?:es?|ing)|entering|examining|exiting|getting|giving|going|ha(?:s|ve|ving)|hold(?:ing|s)?|impl(?:ies|y)|incorporat(?:es?|ing)|inserting|is|jumping|kissing|listening|locking|looking|mean(?:ing|s)?|opening|provid(?:es?|ing)|pulling|pushing|putting|relat(?:es?|ing)|removing|searching|see(?:ing|s)?|setting|showing|singing|sleeping|smelling|squeezing|support(?:ing|s)?|swearing|switching|taking|tasting|telling|thinking|throwing|touching|turning|tying|unlock(?:ing|s)?|var(?:ies|y|ying)|waiting|waking|waving|wear(?:ing|s)?)\\b(?!-)';
  const definition_19 =
      '(^|[^-])\\b(?:after|before|carry out|check|continue the action|definition(?= *:)|do nothing|else|end (?:if|the story|unless)|every turn|if|include|instead(?: of)?|let|move|no|now|otherwise|repeat|report|resume the story|rule for|running through|say(?:ing)?|stop the action|test|try(?:ing)?|understand|unless|use|when|while|yes)\\b(?!-)';
  const definition_20 =
      '(^|[^-])\\b(?:adjacent(?! to)|carried|closed|concealed|contained|dark|described|edible|empty|enclosed|enterable|even|female|fixed in place|full|handled|held|improper-named|incorporated|inedible|invisible|lighted|lit|lock(?:able|ed)|male|marked for listing|mentioned|negative|neuter|non-(?:empty|full|recurring)|odd|opaque|open(?:able)?|plural-named|portable|positive|privately-named|proper-named|provided|publically-named|pushable between rooms|recurring|related|rubbing|scenery|seen|singular-named|supported|swinging|switch(?:able|ed(?: off| on)?)|touch(?:able|ed)|transparent|unconcealed|undescribed|unlit|unlocked|unmarked for listing|unmentioned|unopenable|untouchable|unvisited|variable|visible|visited|wearable|worn)\\b(?!-)';
  const definition_22 =
      '(^|[^-])\\b(?:above|adjacent to|back side of|below|between|down|east|everywhere|front side|here|in|inside(?: from)?|north(?:east|west)?|nowhere|on(?: top of)?|other side|outside(?: from)?|parts? of|regionally in|south(?:east|west)?|through|up|west|within)\\b(?!-)';
  const definition_24 =
      '(^|[^-])\\b(?:actions?|activit(?:ies|y)|actors?|animals?|backdrops?|containers?|devices?|directions?|doors?|holders?|kinds?|lists?|m[ae]n|nobody|nothing|nouns?|numbers?|objects?|people|persons?|player(?:\'s holdall)?|regions?|relations?|rooms?|rule(?:book)?s?|scenes?|someone|something|supporters?|tables?|texts?|things?|time|vehicles?|wom[ae]n)\\b(?!-)';
  const definition_10 = '[.,:;(){}]';
  const definition_33 = '\\S(?:\\s*\\S)*';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    inside: definition_12,
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_13),
    inside: definition_27,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_30),
    aliases: ['punctuation'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false, multiLine: true),
    aliases: ['important'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_17, caseSensitive: false),
    lookbehind: true,
    aliases: ['operator'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    lookbehind: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_20, caseSensitive: false),
    lookbehind: true,
    aliases: ['symbol'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_22, caseSensitive: false),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_24, caseSensitive: false),
    lookbehind: true,
    aliases: ['variable'],
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['comment'],
  );
  definition_27.rest = definition_29;
  definition_29.addAllTokens({
    'string': [definition_1],
    'comment': [definition_2],
    'title': [definition_3],
    'number': [definition_4],
    'verb': [definition_5],
    'keyword': [definition_6],
    'property': [definition_7],
    'position': [definition_8],
    'type': [definition_9],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
    'text': [definition_32],
  });
  definition_27.addAllTokens({
    'delimiter': [definition_28],
  });
  definition_12.addAllTokens({
    'substitution': [definition_26],
  });
  definition_0.addAllTokens({
    'string': [definition_1],
    'comment': [definition_2],
    'title': [definition_3],
    'number': [definition_4],
    'verb': [definition_5],
    'keyword': [definition_6],
    'property': [definition_7],
    'position': [definition_8],
    'type': [definition_9],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'inform7',
    definition_0,
  );
}

final languageInform7 = _create();
