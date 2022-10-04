// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  const definition_11 =
      '(^|[^\\\\])(?:\\/\\*[\\s\\S]*?\\*\\/|(?:--|\\/\\/|#).*)';
  const definition_17 = '@(["\'`])(?:\\\\[\\s\\S]|(?!\\1)[^\\\\])+\\1';
  const definition_13 = '@[\\w.\$]+';
  const definition_14 =
      '(^|[^@\\\\])("|\')(?:\\\\[\\s\\S]|(?!\\2)[^\\\\]|\\2\\2)*\\2';
  const definition_15 = '(^|[^@\\\\])`(?:\\\\[\\s\\S]|[^`\\\\]|``)*`';
  const definition_18 = '^`|`\$';
  const definition_5 =
      '\\b(?:AVG|COUNT|FIRST|FORMAT|LAST|LCASE|LEN|MAX|MID|MIN|MOD|NOW|ROUND|SUM|UCASE)(?=\\s*\\()';
  const definition_6 =
      '\\b(?:ACTION|ADD|AFTER|ALGORITHM|ALL|ALTER|ANALYZE|ANY|APPLY|AS|ASC|AUTHORIZATION|AUTO_INCREMENT|BACKUP|BDB|BEGIN|BERKELEYDB|BIGINT|BINARY|BIT|BLOB|BOOL|BOOLEAN|BREAK|BROWSE|BTREE|BULK|BY|CALL|CASCADED?|CASE|CHAIN|CHAR(?:ACTER|SET)?|CHECK(?:POINT)?|CLOSE|CLUSTERED|COALESCE|COLLATE|COLUMNS?|COMMENT|COMMIT(?:TED)?|COMPUTE|CONNECT|CONSISTENT|CONSTRAINT|CONTAINS(?:TABLE)?|CONTINUE|CONVERT|CREATE|CROSS|CURRENT(?:_DATE|_TIME|_TIMESTAMP|_USER)?|CURSOR|CYCLE|DATA(?:BASES?)?|DATE(?:TIME)?|DAY|DBCC|DEALLOCATE|DEC|DECIMAL|DECLARE|DEFAULT|DEFINER|DELAYED|DELETE|DELIMITERS?|DENY|DESC|DESCRIBE|DETERMINISTIC|DISABLE|DISCARD|DISK|DISTINCT|DISTINCTROW|DISTRIBUTED|DO|DOUBLE|DROP|DUMMY|DUMP(?:FILE)?|DUPLICATE|ELSE(?:IF)?|ENABLE|ENCLOSED|END|ENGINE|ENUM|ERRLVL|ERRORS|ESCAPED?|EXCEPT|EXEC(?:UTE)?|EXISTS|EXIT|EXPLAIN|EXTENDED|FETCH|FIELDS|FILE|FILLFACTOR|FIRST|FIXED|FLOAT|FOLLOWING|FOR(?: EACH ROW)?|FORCE|FOREIGN|FREETEXT(?:TABLE)?|FROM|FULL|FUNCTION|GEOMETRY(?:COLLECTION)?|GLOBAL|GOTO|GRANT|GROUP|HANDLER|HASH|HAVING|HOLDLOCK|HOUR|IDENTITY(?:COL|_INSERT)?|IF|IGNORE|IMPORT|INDEX|INFILE|INNER|INNODB|INOUT|INSERT|INT|INTEGER|INTERSECT|INTERVAL|INTO|INVOKER|ISOLATION|ITERATE|JOIN|KEYS?|KILL|LANGUAGE|LAST|LEAVE|LEFT|LEVEL|LIMIT|LINENO|LINES|LINESTRING|LOAD|LOCAL|LOCK|LONG(?:BLOB|TEXT)|LOOP|MATCH(?:ED)?|MEDIUM(?:BLOB|INT|TEXT)|MERGE|MIDDLEINT|MINUTE|MODE|MODIFIES|MODIFY|MONTH|MULTI(?:LINESTRING|POINT|POLYGON)|NATIONAL|NATURAL|NCHAR|NEXT|NO|NONCLUSTERED|NULLIF|NUMERIC|OFF?|OFFSETS?|ON|OPEN(?:DATASOURCE|QUERY|ROWSET)?|OPTIMIZE|OPTION(?:ALLY)?|ORDER|OUT(?:ER|FILE)?|OVER|PARTIAL|PARTITION|PERCENT|PIVOT|PLAN|POINT|POLYGON|PRECEDING|PRECISION|PREPARE|PREV|PRIMARY|PRINT|PRIVILEGES|PROC(?:EDURE)?|PUBLIC|PURGE|QUICK|RAISERROR|READS?|REAL|RECONFIGURE|REFERENCES|RELEASE|RENAME|REPEAT(?:ABLE)?|REPLACE|REPLICATION|REQUIRE|RESIGNAL|RESTORE|RESTRICT|RETURN(?:ING|S)?|REVOKE|RIGHT|ROLLBACK|ROUTINE|ROW(?:COUNT|GUIDCOL|S)?|RTREE|RULE|SAVE(?:POINT)?|SCHEMA|SECOND|SELECT|SERIAL(?:IZABLE)?|SESSION(?:_USER)?|SET(?:USER)?|SHARE|SHOW|SHUTDOWN|SIMPLE|SMALLINT|SNAPSHOT|SOME|SONAME|SQL|START(?:ING)?|STATISTICS|STATUS|STRIPED|SYSTEM_USER|TABLES?|TABLESPACE|TEMP(?:ORARY|TABLE)?|TERMINATED|TEXT(?:SIZE)?|THEN|TIME(?:STAMP)?|TINY(?:BLOB|INT|TEXT)|TOP?|TRAN(?:SACTIONS?)?|TRIGGER|TRUNCATE|TSEQUAL|TYPES?|UNBOUNDED|UNCOMMITTED|UNDEFINED|UNION|UNIQUE|UNLOCK|UNPIVOT|UNSIGNED|UPDATE(?:TEXT)?|USAGE|USE|USER|USING|VALUES?|VAR(?:BINARY|CHAR|CHARACTER|YING)|VIEW|WAITFOR|WARNINGS|WHEN|WHERE|WHILE|WITH(?: ROLLUP|IN)?|WORK|WRITE(?:TEXT)?|YEAR)\\b';
  const definition_7 = '\\b(?:FALSE|NULL|TRUE)\\b';
  const definition_8 = '\\b0x[\\da-f]+\\b|\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+\\b';
  const definition_9 =
      '[-+*\\/=%^~]|&&?|\\|\\|?|!=?|<(?:=>?|<|>)?|>[>=]?|\\b(?:AND|BETWEEN|DIV|ILIKE|IN|IS|LIKE|NOT|OR|REGEXP|RLIKE|SOUNDS LIKE|XOR)\\b';
  const definition_10 = '[;[\\]()`,.]';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_11),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_17),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    lookbehind: true,
    global: true,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_15),
    greedy: true,
    lookbehind: true,
    inside: definition_16,
    global: true,
  );
  definition_16.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_18))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'variable': [
      definition_12,
      GrammarToken(pattern: RegExp(definition_13)),
    ],
    'string': [definition_3],
    'identifier': [definition_4],
    'function': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'keyword': [
      GrammarToken(pattern: RegExp(definition_6, caseSensitive: false))
    ],
    'boolean': [
      GrammarToken(pattern: RegExp(definition_7, caseSensitive: false))
    ],
    'number': [
      GrammarToken(pattern: RegExp(definition_8, caseSensitive: false))
    ],
    'operator': [
      GrammarToken(pattern: RegExp(definition_9, caseSensitive: false))
    ],
    'punctuation': [GrammarToken(pattern: RegExp(definition_10))],
  });

  return LanguageProto(
    'sql',
    definition_0,
  );
}

final languageSql = _create();
