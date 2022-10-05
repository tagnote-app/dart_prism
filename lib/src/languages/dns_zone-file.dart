// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = ';.*';
  const definition_8 = '"(?:\\\\.|[^"\\\\\\r\\n])*"';
  const definition_14 = '(^\\\$ORIGIN[ \\t]+)\\S+';
  const definition_15 = '(^|\\s)@(?=\\s|\$)';
  const definition_4 = '^\\\$(?:INCLUDE|ORIGIN|TTL)(?=\\s|\$)';
  const definition_11 = '(^|\\s)(?:CH|CS|HS|IN)(?=\\s|\$)';
  const definition_13 =
      '(^|\\s)(?:A|A6|AAAA|AFSDB|APL|ATMA|CAA|CDNSKEY|CDS|CERT|CNAME|DHCID|DLV|DNAME|DNSKEY|DS|EID|GID|GPOS|HINFO|HIP|IPSECKEY|ISDN|KEY|KX|LOC|MAILA|MAILB|MB|MD|MF|MG|MINFO|MR|MX|NAPTR|NB|NBSTAT|NIMLOC|NINFO|NS|NSAP|NSAP-PTR|NSEC|NSEC3|NSEC3PARAM|NULL|NXT|OPENPGPKEY|PTR|PX|RKEY|RP|RRSIG|RT|SIG|SINK|SMIMEA|SOA|SPF|SRV|SSHFP|TA|TKEY|TLSA|TSIG|TXT|UID|UINFO|UNSPEC|URI|WKS|X25)(?=\\s|\$)';
  const definition_7 = '[()]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    global: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_14, multiLine: true),
    lookbehind: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_15),
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_13),
    lookbehind: true,
    aliases: ['keyword'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'variable': [
      definition_9,
      definition_10,
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_4, multiLine: true))],
    'class': [definition_5],
    'type': [definition_6],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'dns-zone-file',
    definition_0,
    aliases: ['dns-zone'],
  );
}

final languageDnsZoneFile = _create();
