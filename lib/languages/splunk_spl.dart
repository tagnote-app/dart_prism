// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '`comment\\("(?:\\\\.|[^\\\\"])*"\\)`';
  const definition_12 = '"(?:\\\\.|[^\\\\"])*"';
  const definition_3 =
      '\\b(?:abstract|accum|addcoltotals|addinfo|addtotals|analyzefields|anomalies|anomalousvalue|anomalydetection|append|appendcols|appendcsv|appendlookup|appendpipe|arules|associate|audit|autoregress|bin|bucket|bucketdir|chart|cluster|cofilter|collect|concurrency|contingency|convert|correlate|datamodel|dbinspect|dedup|delete|delta|diff|erex|eval|eventcount|eventstats|extract|fieldformat|fields|fieldsummary|filldown|fillnull|findtypes|folderize|foreach|format|from|gauge|gentimes|geom|geomfilter|geostats|head|highlight|history|iconify|input|inputcsv|inputlookup|iplocation|join|kmeans|kv|kvform|loadjob|localize|localop|lookup|makecontinuous|makemv|makeresults|map|mcollect|metadata|metasearch|meventcollect|mstats|multikv|multisearch|mvcombine|mvexpand|nomv|outlier|outputcsv|outputlookup|outputtext|overlap|pivot|predict|rangemap|rare|regex|relevancy|reltime|rename|replace|rest|return|reverse|rex|rtorder|run|savedsearch|script|scrub|search|searchtxn|selfjoin|sendemail|set|setfields|sichart|sirare|sistats|sitimechart|sitop|sort|spath|stats|strcat|streamstats|table|tags|tail|timechart|timewrap|top|transaction|transpose|trendline|tscollect|tstats|typeahead|typelearner|typer|union|uniq|untable|where|x11|xmlkv|xmlunescape|xpath|xyseries)\\b';
  const definition_13 = '\\b(?:and|as|by|not|or|xor)\\b';
  const definition_5 = '\\b\\w+(?=\\s*\\()';
  const definition_6 = '\\b\\w+(?=\\s*=(?!=))';
  const definition_15 =
      '\\b\\d{1,2}\\/\\d{1,2}\\/\\d{1,4}(?:(?::\\d{1,2}){3})?\\b';
  const definition_8 = '\\b\\d+(?:\\.\\d+)?\\b';
  const definition_9 = '\\b(?:f|false|t|true)\\b';
  const definition_10 = '[<>=]=?|[-+*/%|]';
  const definition_11 = '[()[\\],]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_12),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13, caseSensitive: false),
    aliases: ['operator'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_15),
    aliases: ['number'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'operator-word': [definition_4],
    'function': [GrammarToken(pattern: RegExp(definition_5))],
    'property': [GrammarToken(pattern: RegExp(definition_6))],
    'date': [definition_7],
    'number': [GrammarToken(pattern: RegExp(definition_8))],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_10))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_11))],
  });

  return LanguageProto(
    'splunk-spl',
    definition_0,
  );
}

final languageSplunkSpl = _create();
