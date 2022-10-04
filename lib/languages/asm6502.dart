// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = ';.*';
  const definition_10 = '\\.\\w+(?= )';
  const definition_3 = '(["\'`])(?:\\\\.|(?!\\1)[^\\\\\\r\\n])*\\1';
  const definition_12 =
      '\\b(?:ADC|AND|ASL|BCC|BCS|BEQ|BIT|BMI|BNE|BPL|BRK|BVC|BVS|CLC|CLD|CLI|CLV|CMP|CPX|CPY|DEC|DEX|DEY|EOR|INC|INX|INY|JMP|JSR|LDA|LDX|LDY|LSR|NOP|ORA|PHA|PHP|PLA|PLP|ROL|ROR|RTI|RTS|SBC|SEC|SED|SEI|STA|STX|STY|TAX|TAY|TSX|TXA|TXS|TYA|adc|and|asl|bcc|bcs|beq|bit|bmi|bne|bpl|brk|bvc|bvs|clc|cld|cli|clv|cmp|cpx|cpy|dec|dex|dey|eor|inc|inx|iny|jmp|jsr|lda|ldx|ldy|lsr|nop|ora|pha|php|pla|plp|rol|ror|rti|rts|sbc|sec|sed|sei|sta|stx|sty|tax|tay|tsx|txa|txs|tya)\\b';
  const definition_14 = '#?\\\$[\\da-f]{1,4}\\b';
  const definition_16 = '#?%[01]+\\b';
  const definition_17 = '#?\\b\\d+\\b';
  const definition_18 = '\\b[xya]\\b';
  const definition_9 = '[(),:]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_10),
    aliases: ['property'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['keyword'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_14, caseSensitive: false),
    aliases: ['number'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_16),
    aliases: ['number'],
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['number'],
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_18, caseSensitive: false),
    aliases: ['variable'],
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'directive': [definition_2],
    'string': [GrammarToken(pattern: RegExp(definition_3))],
    'op-code': [definition_4],
    'hex-number': [definition_5],
    'binary-number': [definition_6],
    'decimal-number': [definition_7],
    'register': [definition_8],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'asm6502',
    definition_0,
  );
}

final languageAsm6502 = _create();
