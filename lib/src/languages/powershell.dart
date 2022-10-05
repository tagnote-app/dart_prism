// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_20 = Grammar();
  const definition_17 = '(^|[^`])<#[\\s\\S]*?#>';
  const definition_18 = '(^|[^`])#.*';
  const definition_19 = '"(?:`[\\s\\S]|[^`"])*"';
  const definition_23 =
      '(^|[^`])\\\$\\((?:\\\$\\([^\\r\\n()]*\\)|(?!\\\$\\()[^\\r\\n)])*\\)';
  const definition_4 = '\\\$(?:false|true)\\b';
  const definition_5 = '\\\$\\w+\\b';
  const definition_21 = '\'(?:[^\']|\'\')*\'';
  const definition_3 =
      '\\[[a-z](?:\\[(?:\\[[^\\]]*\\]|[^\\[\\]])*\\]|[^\\[\\]])*\\]';
  const definition_14 =
      '\\b(?:Add|Approve|Assert|Backup|Block|Checkpoint|Clear|Close|Compare|Complete|Compress|Confirm|Connect|Convert|ConvertFrom|ConvertTo|Copy|Debug|Deny|Disable|Disconnect|Dismount|Edit|Enable|Enter|Exit|Expand|Export|Find|ForEach|Format|Get|Grant|Group|Hide|Import|Initialize|Install|Invoke|Join|Limit|Lock|Measure|Merge|Move|New|Open|Optimize|Out|Ping|Pop|Protect|Publish|Push|Read|Receive|Redo|Register|Remove|Rename|Repair|Request|Reset|Resize|Resolve|Restart|Restore|Resume|Revoke|Save|Search|Select|Send|Set|Show|Skip|Sort|Split|Start|Step|Stop|Submit|Suspend|Switch|Sync|Tee|Test|Trace|Unblock|Undo|Uninstall|Unlock|Unprotect|Unpublish|Unregister|Update|Use|Wait|Watch|Where|Write)-[a-z]+\\b';
  const definition_15 =
      '\\b(?:ac|cat|chdir|clc|cli|clp|clv|compare|copy|cp|cpi|cpp|cvpa|dbp|del|diff|dir|ebp|echo|epal|epcsv|epsn|erase|fc|fl|ft|fw|gal|gbp|gc|gci|gcs|gdr|gi|gl|gm|gp|gps|group|gsv|gu|gv|gwmi|iex|ii|ipal|ipcsv|ipsn|irm|iwmi|iwr|kill|lp|ls|measure|mi|mount|move|mp|mv|nal|ndr|ni|nv|ogv|popd|ps|pushd|pwd|rbp|rd|rdr|ren|ri|rm|rmdir|rni|rnp|rp|rv|rvpa|rwmi|sal|saps|sasv|sbp|sc|select|set|shcm|si|sl|sleep|sls|sort|sp|spps|spsv|start|sv|swmi|tee|trcm|type|write)\\b';
  const definition_7 =
      '\\b(?:Begin|Break|Catch|Class|Continue|Data|Define|Do|DynamicParam|Else|ElseIf|End|Exit|Filter|Finally|For|ForEach|From|Function|If|InlineScript|Parallel|Param|Process|Return|Sequence|Switch|Throw|Trap|Try|Until|Using|Var|While|Workflow)\\b';
  const definition_16 =
      '(^|\\W)(?:!|-(?:b?(?:and|x?or)|as|(?:Not)?(?:Contains|In|Like|Match)|eq|ge|gt|is(?:Not)?|Join|le|lt|ne|not|Replace|sh[lr])\\b|-[-=]?|\\+[+=]?|[*\\/%]=?)';
  const definition_9 = '[|{}[\\];(),.]';
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_17),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_18),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_19),
    greedy: true,
    inside: definition_20,
    global: true,
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_23),
    lookbehind: true,
    inside: 'powershell',
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_21),
    greedy: true,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_16, caseSensitive: false),
    lookbehind: true,
  );
  definition_20.addAllTokens({
    'function': [definition_22],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'variable': [GrammarToken(pattern: RegExp(definition_5))],
  });
  definition_0.addAllTokens({
    'comment': [
      definition_10,
      definition_11,
    ],
    'string': [
      definition_12,
      definition_13,
    ],
    'namespace': [
      GrammarToken(pattern: RegExp(definition_3, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_4, caseSensitive: false))
    ],
    'variable': [GrammarToken(pattern: RegExp(definition_5))],
    'function': [
      GrammarToken(pattern: RegExp(definition_14, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_15, caseSensitive: false)),
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'operator': [definition_8],
    'punctuation': [GrammarToken(pattern: RegExp(definition_9))],
  });

  return LanguageProto(
    'powershell',
    definition_0,
  );
}

final languagePowershell = _create();
