// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_13 = ';.*';
  const definition_14 = '(["\'`])(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_3 =
      '\\b(?:PORT[A-Z]|DDR[A-Z]|(?:DD|P)[A-Z](?:\\d|[0-2]\\d|3[01]))\\b';
  const definition_15 = '\\.\\w+(?= )';
  const definition_17 = '\\br(?:\\d|[12]\\d|3[01])\\b';
  const definition_19 =
      '\\b(?:ADC|ADD|ADIW|AND|ANDI|ASR|BCLR|BLD|BRBC|BRBS|BRCC|BRCS|BREAK|BREQ|BRGE|BRHC|BRHS|BRID|BRIE|BRLO|BRLT|BRMI|BRNE|BRPL|BRSH|BRTC|BRTS|BRVC|BRVS|BSET|BST|CALL|CBI|CBR|CLC|CLH|CLI|CLN|CLR|CLS|CLT|CLV|CLZ|COM|CP|CPC|CPI|CPSE|DEC|DES|EICALL|EIJMP|ELPM|EOR|FMUL|FMULS|FMULSU|ICALL|IJMP|IN|INC|JMP|LAC|LAS|LAT|LD|LD[A-Za-z0-9]|LPM|LSL|LSR|MOV|MOVW|MUL|MULS|MULSU|NEG|NOP|OR|ORI|OUT|POP|PUSH|RCALL|RET|RETI|RJMP|ROL|ROR|SBC|SBCI|SBI|SBIC|SBIS|SBIW|SBR|SBRC|SBRS|SEC|SEH|SEI|SEN|SER|SES|SET|SEV|SEZ|SLEEP|SPM|ST|ST[A-Z0-9]|SUB|SUBI|SWAP|TST|WDR|XCH|adc|add|adiw|and|andi|asr|bclr|bld|brbc|brbs|brcc|brcs|break|breq|brge|brhc|brhs|brid|brie|brlo|brlt|brmi|brne|brpl|brsh|brtc|brts|brvc|brvs|bset|bst|call|cbi|cbr|clc|clh|cli|cln|clr|cls|clt|clv|clz|com|cp|cpc|cpi|cpse|dec|des|eicall|eijmp|elpm|eor|fmul|fmuls|fmulsu|icall|ijmp|in|inc|jmp|lac|las|lat|ld|ld[a-z0-9]|lpm|lsl|lsr|mov|movw|mul|muls|mulsu|neg|nop|or|ori|out|pop|push|rcall|ret|reti|rjmp|rol|ror|sbc|sbci|sbi|sbic|sbis|sbiw|sbr|sbrc|sbrs|sec|seh|sei|sen|ser|ses|set|sev|sez|sleep|spm|st|st[a-zA-Z0-9]|sub|subi|swap|tst|wdr|xch)\\b';
  const definition_21 = '#?\\\$[\\da-f]{2,4}\\b';
  const definition_23 = '#?%[01]+\\b';
  const definition_24 = '#?\\b\\d+\\b';
  const definition_25 = '\\b[acznvshtixy]\\b';
  const definition_11 = '>>=?|<<=?|&[&=]?|\\|[\\|=]?|[-+*/%^!=<>?]=?';
  const definition_12 = '[(),:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    aliases: ['property'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['variable'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_19),
    aliases: ['keyword'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_21, caseSensitive: false),
    aliases: ['number'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['number'],
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_24),
    aliases: ['number'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_25, caseSensitive: false),
    aliases: ['variable'],
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'string': [definition_2],
    'constant': [GrammarToken(pattern: RegExp(definition_3))],
    'directive': [definition_4],
    'r-register': [definition_5],
    'op-code': [definition_6],
    'hex-number': [definition_7],
    'binary-number': [definition_8],
    'decimal-number': [definition_9],
    'register': [definition_10],
    'operator': [GrammarToken(pattern: RegExp(definition_11))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_12))],
  });

  return LanguageProto(
    'asmatmel',
    definition_0,
  );
}

final languageAsmatmel = _create();
