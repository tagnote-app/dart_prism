// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  const definition_14 = '#.*';
  const definition_15 = '"(?:\\\\.|[^\\\\"])*"';
  const definition_22 = '\\\\[ntrbA-Z"\\\\]';
  const definition_17 = '<<<([a-zA-Z_]\\w*)[\\r\\n](?:.*[\\r\\n])*?\\1\\b';
  const definition_4 =
      '\\b(?:__multi|__single|case|default|do|else|elsif|exit|export|for|foreach|function|if|last|line|local|next|requires|return|switch|until|while|word)\\b';
  const definition_5 =
      '\\b(?:ALARM|CHART_ADD_GRAPH|CHART_DELETE_GRAPH|CHART_DESTROY|CHART_LOAD|CHART_PRINT|EOF|OFFLINE|OK|PSL_PROF_LOG|R_CHECK_HORIZ|R_CHECK_VERT|R_CLICKER|R_COLUMN|R_FRAME|R_ICON|R_LABEL|R_LABEL_CENTER|R_LIST_MULTIPLE|R_LIST_MULTIPLE_ND|R_LIST_SINGLE|R_LIST_SINGLE_ND|R_MENU|R_POPUP|R_POPUP_SCROLLED|R_RADIO_HORIZ|R_RADIO_VERT|R_ROW|R_SCALE_HORIZ|R_SCALE_VERT|R_SEP_HORIZ|R_SEP_VERT|R_SPINNER|R_TEXT_FIELD|R_TEXT_FIELD_LABEL|R_TOGGLE|TRIM_LEADING|TRIM_LEADING_AND_TRAILING|TRIM_REDUNDANT|TRIM_TRAILING|VOID|WARN)\\b';
  const definition_6 =
      '\\b(?:FALSE|False|NO|No|TRUE|True|YES|Yes|false|no|true|yes)\\b';
  const definition_7 = '\\b(?:PslDebug|errno|exit_status)\\b';
  const definition_19 =
      '\\b(?:PslExecute|PslFunctionCall|PslFunctionExists|PslSetOptions|_snmp_debug|acos|add_diary|annotate|annotate_get|ascii_to_ebcdic|asctime|asin|atan|atexit|batch_set|blackout|cat|ceil|chan_exists|change_state|close|code_cvt|cond_signal|cond_wait|console_type|convert_base|convert_date|convert_locale_date|cos|cosh|create|date|dcget_text|destroy|destroy_lock|dget_text|difference|dump_hist|ebcdic_to_ascii|encrypt|event_archive|event_catalog_get|event_check|event_query|event_range_manage|event_range_query|event_report|event_schedule|event_trigger|event_trigger2|execute|exists|exp|fabs|file|floor|fmod|fopen|fseek|ftell|full_discovery|get|get_chan_info|get_ranges|get_text|get_vars|getenv|gethostinfo|getpid|getpname|grep|history|history_get_retention|in_transition|index|int|internal|intersection|is_var|isnumber|join|kill|length|lines|lock|lock_info|log|log10|loge|matchline|msg_check|msg_get_format|msg_get_severity|msg_printf|msg_sprintf|ntharg|nthargf|nthline|nthlinef|num_bytes|num_consoles|pconfig|popen|poplines|pow|print|printf|proc_exists|process|random|read|readln|refresh_parameters|remote_check|remote_close|remote_event_query|remote_event_trigger|remote_file_send|remote_open|remove|replace|rindex|sec_check_priv|sec_store_get|sec_store_set|set|set_alarm_ranges|set_locale|share|sin|sinh|sleep|snmp_agent_config|snmp_agent_start|snmp_agent_stop|snmp_close|snmp_config|snmp_get|snmp_get_next|snmp_h_get|snmp_h_get_next|snmp_h_set|snmp_open|snmp_set|snmp_trap_ignore|snmp_trap_listen|snmp_trap_raise_std_trap|snmp_trap_receive|snmp_trap_register_im|snmp_trap_send|snmp_walk|sopen|sort|splitline|sprintf|sqrt|srandom|str_repeat|strcasecmp|subset|substr|system|tail|tan|tanh|text_domain|time|tmpnam|tolower|toupper|trace_psl_process|trim|union|unique|unlock|unset|va_arg|va_start|write)\\b';
  const definition_21 =
      '(\\bforeach\\s+(?:(?:\\w+\\b|"(?:\\\\.|[^\\\\"])*")\\s+){0,2})[_a-zA-Z]\\w*(?=\\s*\\()';
  const definition_10 = '\\b[_a-z]\\w*\\b(?=\\s*\\()';
  const definition_11 = '\\b(?:0x[0-9a-f]+|\\d+(?:\\.\\d+)?)\\b';
  const definition_12 =
      '--|\\+\\+|&&=?|\\|\\|=?|<<=?|>>=?|[=!]~|[-+*/%&|^!=<>]=?|\\.|[:?]';
  const definition_13 = '[(){}\\[\\];,]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    inside: definition_16,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['string'],
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['builtin-function'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_21),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  definition_16.addAllTokens({
    'symbol': [GrammarToken(pattern: RegExp(definition_22))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'heredoc-string': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'constant': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'variable': [GrammarToken(pattern: RegExp(definition_7))],
    'builtin': [definition_8],
    'foreach-variable': [definition_9],
    'function': [
      GrammarToken(pattern: RegExp(definition_10, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_11, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_12))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_13))],
  });

  return LanguageProto(
    'psl',
    definition_0,
  );
}

final languagePsl = _create();
