// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_18 = Grammar();
  const definition_14 = '#.*';
  const definition_16 = '\\/\\/.*';
  const definition_17 = '("|\')(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_28 = '^[\'"]|[\'"]\$';
  const definition_19 =
      '\\b(?:arms|backpack|blue|bracelet|cancel|clear|cloak|criminal|earrings|enemy|facialhair|friend|friendly|gloves|gray|grey|ground|hair|head|innerlegs|innertorso|innocent|lefthand|middletorso|murderer|neck|nonfriendly|onehandedsecondary|outerlegs|outertorso|pants|red|righthand|ring|self|shirt|shoes|talisman|waist)\\b';
  const definition_21 =
      '\\b(?:alliance|attack|cast|clearall|clearignore|clearjournal|clearlist|clearsysmsg|createlist|createtimer|dclick|dclicktype|dclickvar|dress|dressconfig|drop|droprelloc|emote|getlabel|guild|gumpclose|gumpresponse|hotkey|ignore|lasttarget|lift|lifttype|menu|menuresponse|msg|org|organize|organizer|overhead|pause|poplist|potion|promptresponse|pushlist|removelist|removetimer|rename|restock|say|scav|scavenger|script|setability|setlasttarget|setskill|settimer|setvar|sysmsg|target|targetloc|targetrelloc|targettype|undress|unignore|unsetvar|useobject|useonce|useskill|usetype|virtue|wait|waitforgump|waitformenu|waitforprompt|waitforstat|waitforsysmsg|waitfortarget|walk|wfsysmsg|wft|whisper|yell)\\b';
  const definition_22 = '(^\\{%-?\\s*)\\w+';
  const definition_24 = '^\\{[{%]-?|-?[%}]\\}\$';
  const definition_8 =
      '\\b(?:atlist|close|closest|count|counter|counttype|dead|dex|diffhits|diffmana|diffstam|diffweight|find|findbuff|finddebuff|findlayer|findtype|findtypelist|followers|gumpexists|hidden|hits|hp|hue|human|humanoid|ingump|inlist|insysmessage|insysmsg|int|invul|lhandempty|list|listexists|mana|maxhits|maxhp|maxmana|maxstam|maxweight|monster|mounted|name|next|noto|paralyzed|poisoned|position|prev|previous|queued|rand|random|rhandempty|skill|stam|str|targetexists|timer|timerexists|varexist|warmode|weight)\\b';
  const definition_9 =
      '\\b(?:and|as|break|continue|else|elseif|endfor|endif|endwhile|for|if|loop|not|or|replay|stop|while)\\b';
  const definition_10 = '\\b(?:false|null|true)\\b';
  const definition_11 =
      '\\b0x[\\dA-Fa-f]+|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[Ee][-+]?\\d+)?';
  const definition_29 =
      '(\\s)(?:and|b-and|b-or|b-xor|ends with|in|is|matches|not|or|same as|starts with)(?=\\s)';
  const definition_27 = '[=<>]=?|!=|\\*\\*?|\\/\\/?|\\?:?|[-+~%|]';
  const definition_13 = '[()\\[\\]{}:.,]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_14),
    aliases: ['comment'],
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['comment'],
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17),
    inside: definition_18,
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_19, caseSensitive: false),
    aliases: ['function'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_21),
    aliases: ['function'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_22),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['punctuation'],
  );
  final definition_26 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
  );
  definition_18.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_28))],
  });
  definition_0.addAllTokens({
    'comment-hash': [definition_1],
    'comment-slash': [definition_2],
    'string': [definition_3],
    'source-layers': [definition_4],
    'source-commands': [definition_5],
    'tag-name': [definition_6],
    'delimiter': [definition_7],
    'function': [GrammarToken(pattern: RegExp(definition_8))],
    'keyword': [GrammarToken(pattern: RegExp(definition_9))],
    'boolean': [GrammarToken(pattern: RegExp(definition_10))],
    'number': [GrammarToken(pattern: RegExp(definition_11))],
    'operator': [
      definition_26,
      GrammarToken(pattern: RegExp(definition_27)),
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'uorazor',
    definition_0,
  );
}

final languageUorazor = _create();
