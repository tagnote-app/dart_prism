// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\/\\/.*|\\/\\*[\\s\\S]*?\\*\\/';
  const definition_11 =
      '\'(?:\'\'|[^\'\\r\\n])*\'(?!\')|"(?:""|[^"\\r\\n])*"(?!")';
  const definition_12 =
      '(\\b(?:event|procedure|trigger)\\s+|(?:^|[^.])\\.\\s*)[a-z_]\\w*(?=\\s*\\()';
  const definition_13 =
      '\\b(?:array|asserterror|begin|break|case|do|downto|else|end|event|exit|for|foreach|function|if|implements|in|indataset|interface|internal|local|of|procedure|program|protected|repeat|runonclient|securityfiltering|suppressdispose|temporary|then|to|trigger|until|var|while|with|withevents)\\b';
  const definition_14 =
      '\\b(?:action|actions|addafter|addbefore|addfirst|addlast|area|assembly|chartpart|codeunit|column|controladdin|cuegroup|customizes|dataitem|dataset|dotnet|elements|enum|enumextension|extends|field|fieldattribute|fieldelement|fieldgroup|fieldgroups|fields|filter|fixed|grid|group|key|keys|label|labels|layout|modify|moveafter|movebefore|movefirst|movelast|page|pagecustomization|pageextension|part|profile|query|repeater|report|requestpage|schema|separator|systempart|table|tableelement|tableextension|textattribute|textelement|type|usercontrol|value|xmlport)\\b';
  const definition_5 =
      '\\b(?:0x[\\da-f]+|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:e[+-]?\\d+)?)(?:F|LL?|U(?:LL?)?)?\\b';
  const definition_6 = '\\b(?:false|true)\\b';
  const definition_7 =
      '\\b(?:Curr(?:FieldNo|Page|Report)|x?Rec|RequestOptionsPage)\\b';
  const definition_8 =
      '\\b(?:automation|biginteger|bigtext|blob|boolean|byte|char|clienttype|code|completiontriggererrorlevel|connectiontype|database|dataclassification|datascope|date|dateformula|datetime|decimal|defaultlayout|dialog|dictionary|dotnetassembly|dotnettypedeclaration|duration|errorinfo|errortype|executioncontext|executionmode|fieldclass|fieldref|fieldtype|file|filterpagebuilder|guid|httpclient|httpcontent|httpheaders|httprequestmessage|httpresponsemessage|instream|integer|joker|jsonarray|jsonobject|jsontoken|jsonvalue|keyref|list|moduledependencyinfo|moduleinfo|none|notification|notificationscope|objecttype|option|outstream|pageresult|record|recordid|recordref|reportformat|securityfilter|sessionsettings|tableconnectiontype|tablefilter|testaction|testfield|testfilterfield|testpage|testpermissions|testrequestpage|text|textbuilder|textconst|textencoding|time|transactionmodel|transactiontype|variant|verbosity|version|view|views|webserviceactioncontext|webserviceactionresultcode|xmlattribute|xmlattributecollection|xmlcdata|xmlcomment|xmldeclaration|xmldocument|xmldocumenttype|xmlelement|xmlnamespacemanager|xmlnametable|xmlnode|xmlnodelist|xmlprocessinginstruction|xmlreadoptions|xmltext|xmlwriteoptions)\\b';
  const definition_9 =
      '\\.\\.|:[=:]|[-+*/]=?|<>|[<>]=?|=|\\b(?:and|div|mod|not|or|xor)\\b';
  const definition_10 = '[()\\[\\]{}:.;,]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_11),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_12, caseSensitive: false),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'function': [definition_3],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_13, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_14, caseSensitive: false)),
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'variable': [GrammarToken(pattern: RegExp(definition_7))],
    'class-name': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'al',
    definition_0,
  );
}

final languageAl = _create();
