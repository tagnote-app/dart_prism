// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_10 =
      '(^|[^\\\\])(?:\\/\\*[\\s\\S]*?(?:\\*\\/|\$)|\\/\\/.*|#.*)';
  const definition_11 = '"""(?:\\\\[\\s\\S]|(?!""")[^\\\\])*"""';
  const definition_13 = '"(?:\\\\.|[^\\\\\\r\\n"])*"';
  const definition_4 =
      '\\b(?:activate|activeCoroCount|asString|block|break|call|catch|clone|collectGarbage|compileString|continue|do|doFile|doMessage|doString|else|elseif|exit|for|foreach|forward|getEnvironmentVariable|getSlot|hasSlot|if|ifFalse|ifNil|ifNilEval|ifTrue|isActive|isNil|isResumable|list|message|method|parent|pass|pause|perform|performWithArgList|print|println|proto|raise|raiseResumable|removeSlot|resend|resume|schedulerSleepSeconds|self|sender|setSchedulerSleepSeconds|setSlot|shallowCopy|slotNames|super|system|then|thisBlock|thisContext|try|type|uniqueId|updateSlot|wait|while|write|yield)\\b';
  const definition_5 =
      '\\b(?:Array|AudioDevice|AudioMixer|BigNum|Block|Box|Buffer|CFunction|CGI|Color|Curses|DBM|DNSResolver|DOConnection|DOProxy|DOServer|Date|Directory|Duration|DynLib|Error|Exception|FFT|File|Fnmatch|Font|Future|GL|GLE|GLScissor|GLU|GLUCylinder|GLUQuadric|GLUSphere|GLUT|Host|Image|Importer|LinkList|List|Lobby|Locals|MD5|MP3Decoder|MP3Encoder|Map|Message|Movie|Notification|Number|Object|OpenGL|Point|Protos|Random|Regex|SGML|SGMLElement|SGMLParser|SQLite|Sequence|Server|ShowMessage|SleepyCat|SleepyCatCursor|Socket|SocketManager|Sound|Soup|Store|String|Tree|UDPSender|UPDReceiver|URL|User|Warning|WeakLink)\\b';
  const definition_6 = '\\b(?:false|nil|true)\\b';
  const definition_7 =
      '\\b0x[\\da-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:e-?\\d+)?';
  const definition_8 =
      '[=!*/%+\\-^&|]=|>>?=?|<<?=?|:?:?=|\\+\\+?|--?|\\*\\*?|\\/\\/?|%|\\|\\|?|&&?|\\b(?:and|not|or|return)\\b|@@?|\\?\\??|\\.\\.';
  const definition_9 = '[{}[\\];(),.:]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_10),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_13),
    greedy: true,
    global: true,
  );
  definition_0.addAllTokens({
    'comment': [definition_1],
    'triple-quoted-string': [definition_2],
    'string': [definition_3],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'builtin': [GrammarToken(pattern: RegExp(definition_5))],
    'boolean': [GrammarToken(pattern: RegExp(definition_6))],
    'number': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [GrammarToken(pattern: RegExp(definition_8))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'io',
    definition_0,
  );
}

final languageIo = _create();
