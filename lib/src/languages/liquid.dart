// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';
import '../tokenizers/tokenizers.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_6 = Grammar();
  const definition_4 =
      '(\\{%-?\\s*raw\\b[^\\}]*\\})[\\s\\S]*?(?=\\{%-?\\s*endraw\\b[^\\}]*\\})';
  const definition_5 =
      '\\{%\\s*comment\\s*%\\}[\\s\\S]*?\\{%\\s*endcomment\\s*%\\}|\\{(?:%[\\s\\S]*?%|\\{\\{[\\s\\S]*?\\}\\}|\\{[\\s\\S]*?\\})\\}';
  const definition_19 =
      '(^\\{%\\s*comment\\s*%\\})[\\s\\S]+(?=\\{%\\s*endcomment\\s*%\\}\$)';
  const definition_20 = '^\\{(?:\\{\\{|[%\\{])-?|-?(?:\\}\\}|[%\\}])\\}\$';
  const definition_22 = '"[^"]*"|\'[^\']*\'';
  const definition_10 =
      '\\b(?:as|assign|break|(?:end)?(?:capture|case|comment|for|form|if|paginate|raw|style|tablerow|unless)|continue|cycle|decrement|echo|else|elsif|in|include|increment|limit|liquid|offset|range|render|reversed|section|when|with)\\b';
  const definition_11 =
      '\\b(?:address|all_country_option_tags|article|block|blog|cart|checkout|collection|color|country|country_option_tags|currency|current_page|current_tags|customer|customer_address|date|discount_allocation|discount_application|external_video|filter|filter_value|font|forloop|fulfillment|generic_file|gift_card|group|handle|image|line_item|link|linklist|localization|location|measurement|media|metafield|model|model_source|order|page|page_description|page_image|page_title|part|policy|product|product_option|recommendations|request|robots|routes|rule|script|search|selling_plan|selling_plan_allocation|selling_plan_group|shipping_method|shop|shop_locale|sitemap|store_availability|tax_line|template|theme|transaction|unit_price_measurement|user_agent|variant|video|video_source)\\b';
  const definition_29 = '(\\|\\s*)\\w+';
  const definition_31 = '(\\.\\s*)(?:first|last|size)';
  const definition_13 = '\\b(?:false|nil|true)\\b';
  const definition_25 = '\\.\\.';
  const definition_15 = '\\b\\d+(?:\\.\\d+)?\\b';
  const definition_16 =
      '[!=]=|<>|[<>]=?|[|?:=-]|\\b(?:and|contains(?=\\s)|or)\\b';
  const definition_17 = '[.,\\[\\]()]';
  const definition_27 = '\\bempty\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_4),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_5),
    greedy: true,
    inside: definition_6,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_19),
    lookbehind: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_20),
    aliases: ['punctuation'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_22),
    greedy: true,
    global: true,
  );
  final definition_23 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    aliases: ['filter'],
  );
  final definition_24 = GrammarToken(
    pattern: RegExp(definition_31),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_25),
    aliases: ['operator'],
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_27),
    aliases: ['keyword'],
  );
  definition_0.tokenize = embeddedIn('markup');
  definition_6.addAllTokens({
    'comment': [definition_7],
    'delimiter': [definition_8],
    'string': [definition_9],
    'keyword': [GrammarToken(pattern: RegExp(definition_10))],
    'object': [GrammarToken(pattern: RegExp(definition_11))],
    'function': [
      definition_23,
      definition_24,
    ],
    'boolean': [GrammarToken(pattern: RegExp(definition_13))],
    'range': [definition_14],
    'number': [GrammarToken(pattern: RegExp(definition_15))],
    'operator': [GrammarToken(pattern: RegExp(definition_16))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_17))],
    'empty': [definition_18],
  });
  definition_0.addAllTokens({
    'ignore-raw': [definition_1],
    'liquid': [definition_2],
  });

  return LanguageProto(
    'liquid',
    definition_0,
    requiredDependencies: ['markup', 'xml'],
  );
}

final languageLiquid = _create();
