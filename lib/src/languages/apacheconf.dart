// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_11 = Grammar();
  final definition_21 = Grammar();
  final definition_23 = Grammar();
  final definition_28 = Grammar();
  final definition_16 = Grammar();
  const definition_1 = '#.*';
  const definition_8 =
      '(^[\\t ]*)\\b(?:AcceptFilter|AcceptPathInfo|AccessFileName|Action|Add(?:Alt|AltByEncoding|AltByType|Charset|DefaultCharset|Description|Encoding|Handler|Icon|IconByEncoding|IconByType|InputFilter|Language|ModuleInfo|OutputFilter|OutputFilterByType|Type)|Alias|AliasMatch|Allow(?:CONNECT|EncodedSlashes|Methods|Override|OverrideList)?|Anonymous(?:_LogEmail|_MustGiveEmail|_NoUserID|_VerifyEmail)?|AsyncRequestWorkerFactor|Auth(?:BasicAuthoritative|BasicFake|BasicProvider|BasicUseDigestAlgorithm|DBDUserPWQuery|DBDUserRealmQuery|DBMGroupFile|DBMType|DBMUserFile|Digest(?:Algorithm|Domain|NonceLifetime|Provider|Qop|ShmemSize)|Form(?:Authoritative|Body|DisableNoStore|FakeBasicAuth|Location|LoginRequiredLocation|LoginSuccessLocation|LogoutLocation|Method|Mimetype|Password|Provider|SitePassphrase|Size|Username)|GroupFile|LDAP(?:AuthorizePrefix|BindAuthoritative|BindDN|BindPassword|CharsetConfig|CompareAsUser|CompareDNOnServer|DereferenceAliases|GroupAttribute|GroupAttributeIsDN|InitialBindAsUser|InitialBindPattern|MaxSubGroupDepth|RemoteUserAttribute|RemoteUserIsDN|SearchAsUser|SubGroupAttribute|SubGroupClass|Url)|Merging|Name|nCache(?:Context|Enable|ProvideFor|SOCache|Timeout)|nzFcgiCheckAuthnProvider|nzFcgiDefineProvider|Type|UserFile|zDBDLoginToReferer|zDBDQuery|zDBDRedirectQuery|zDBMType|zSendForbiddenOnFailure)|BalancerGrowth|BalancerInherit|BalancerMember|BalancerPersist|BrowserMatch|BrowserMatchNoCase|BufferedLogs|BufferSize|Cache(?:DefaultExpire|DetailHeader|DirLength|DirLevels|Disable|Enable|File|Header|IgnoreCacheControl|IgnoreHeaders|IgnoreNoLastMod|IgnoreQueryString|IgnoreURLSessionIdentifiers|KeyBaseURL|LastModifiedFactor|Lock|LockMaxAge|LockPath|MaxExpire|MaxFileSize|MinExpire|MinFileSize|NegotiatedDocs|QuickHandler|ReadSize|ReadTime|Root|Socache(?:MaxSize|MaxTime|MinTime|ReadSize|ReadTime)?|StaleOnError|StoreExpired|StoreNoStore|StorePrivate)|CGIDScriptTimeout|CGIMapExtension|CharsetDefault|CharsetOptions|CharsetSourceEnc|CheckCaseOnly|CheckSpelling|ChrootDir|ContentDigest|CookieDomain|CookieExpires|CookieName|CookieStyle|CookieTracking|CoreDumpDirectory|CustomLog|Dav|DavDepthInfinity|DavGenericLockDB|DavLockDB|DavMinTimeout|DBDExptime|DBDInitSQL|DBDKeep|DBDMax|DBDMin|DBDParams|DBDPersist|DBDPrepareSQL|DBDriver|DefaultIcon|DefaultLanguage|DefaultRuntimeDir|DefaultType|Define|Deflate(?:BufferSize|CompressionLevel|FilterNote|InflateLimitRequestBody|InflateRatio(?:Burst|Limit)|MemLevel|WindowSize)|Deny|DirectoryCheckHandler|DirectoryIndex|DirectoryIndexRedirect|DirectorySlash|DocumentRoot|DTracePrivileges|DumpIOInput|DumpIOOutput|EnableExceptionHook|EnableMMAP|EnableSendfile|Error|ErrorDocument|ErrorLog|ErrorLogFormat|Example|ExpiresActive|ExpiresByType|ExpiresDefault|ExtendedStatus|ExtFilterDefine|ExtFilterOptions|FallbackResource|FileETag|FilterChain|FilterDeclare|FilterProtocol|FilterProvider|FilterTrace|ForceLanguagePriority|ForceType|ForensicLog|GprofDir|GracefulShutdownTimeout|Group|Header|HeaderName|Heartbeat(?:Address|Listen|MaxServers|Storage)|HostnameLookups|IdentityCheck|IdentityCheckTimeout|ImapBase|ImapDefault|ImapMenu|Include|IncludeOptional|Index(?:HeadInsert|Ignore|IgnoreReset|Options|OrderDefault|StyleSheet)|InputSed|ISAPI(?:AppendLogToErrors|AppendLogToQuery|CacheFile|FakeAsync|LogNotSupported|ReadAheadBuffer)|KeepAlive|KeepAliveTimeout|KeptBodySize|LanguagePriority|LDAP(?:CacheEntries|CacheTTL|ConnectionPoolTTL|ConnectionTimeout|LibraryDebug|OpCacheEntries|OpCacheTTL|ReferralHopLimit|Referrals|Retries|RetryDelay|SharedCacheFile|SharedCacheSize|Timeout|TrustedClientCert|TrustedGlobalCert|TrustedMode|VerifyServerCert)|Limit(?:InternalRecursion|Request(?:Body|Fields|FieldSize|Line)|XMLRequestBody)|Listen|ListenBackLog|LoadFile|LoadModule|LogFormat|LogLevel|LogMessage|LuaAuthzProvider|LuaCodeCache|Lua(?:Hook(?:AccessChecker|AuthChecker|CheckUserID|Fixups|InsertFilter|Log|MapToStorage|TranslateName|TypeChecker)|Inherit|InputFilter|MapHandler|OutputFilter|PackageCPath|PackagePath|QuickHandler|Root|Scope)|Max(?:ConnectionsPerChild|KeepAliveRequests|MemFree|RangeOverlaps|RangeReversals|Ranges|RequestWorkers|SpareServers|SpareThreads|Threads)|MergeTrailers|MetaDir|MetaFiles|MetaSuffix|MimeMagicFile|MinSpareServers|MinSpareThreads|MMapFile|ModemStandard|ModMimeUsePathInfo|MultiviewsMatch|Mutex|NameVirtualHost|NoProxy|NWSSLTrustedCerts|NWSSLUpgradeable|Options|Order|OutputSed|PassEnv|PidFile|PrivilegesMode|Protocol|ProtocolEcho|Proxy(?:AddHeaders|BadHeader|Block|Domain|ErrorOverride|ExpressDBMFile|ExpressDBMType|ExpressEnable|FtpDirCharset|FtpEscapeWildcards|FtpListOnWildcard|HTML(?:BufSize|CharsetOut|DocType|Enable|Events|Extended|Fixups|Interp|Links|Meta|StripComments|URLMap)|IOBufferSize|MaxForwards|Pass(?:Inherit|InterpolateEnv|Match|Reverse|ReverseCookieDomain|ReverseCookiePath)?|PreserveHost|ReceiveBufferSize|Remote|RemoteMatch|Requests|SCGIInternalRedirect|SCGISendfile|Set|SourceAddress|Status|Timeout|Via)|ReadmeName|ReceiveBufferSize|Redirect|RedirectMatch|RedirectPermanent|RedirectTemp|ReflectorHeader|RemoteIP(?:Header|InternalProxy|InternalProxyList|ProxiesHeader|TrustedProxy|TrustedProxyList)|RemoveCharset|RemoveEncoding|RemoveHandler|RemoveInputFilter|RemoveLanguage|RemoveOutputFilter|RemoveType|RequestHeader|RequestReadTimeout|Require|Rewrite(?:Base|Cond|Engine|Map|Options|Rule)|RLimitCPU|RLimitMEM|RLimitNPROC|Satisfy|ScoreBoardFile|Script(?:Alias|AliasMatch|InterpreterSource|Log|LogBuffer|LogLength|Sock)?|SecureListen|SeeRequestTail|SendBufferSize|Server(?:Admin|Alias|Limit|Name|Path|Root|Signature|Tokens)|Session(?:Cookie(?:Name|Name2|Remove)|Crypto(?:Cipher|Driver|Passphrase|PassphraseFile)|DBD(?:CookieName|CookieName2|CookieRemove|DeleteLabel|InsertLabel|PerUser|SelectLabel|UpdateLabel)|Env|Exclude|Header|Include|MaxAge)?|SetEnv|SetEnvIf|SetEnvIfExpr|SetEnvIfNoCase|SetHandler|SetInputFilter|SetOutputFilter|SSIEndTag|SSIErrorMsg|SSIETag|SSILastModified|SSILegacyExprParser|SSIStartTag|SSITimeFormat|SSIUndefinedEcho|SSL(?:CACertificateFile|CACertificatePath|CADNRequestFile|CADNRequestPath|CARevocationCheck|CARevocationFile|CARevocationPath|CertificateChainFile|CertificateFile|CertificateKeyFile|CipherSuite|Compression|CryptoDevice|Engine|FIPS|HonorCipherOrder|InsecureRenegotiation|OCSP(?:DefaultResponder|Enable|OverrideResponder|ResponderTimeout|ResponseMaxAge|ResponseTimeSkew|UseRequestNonce)|OpenSSLConfCmd|Options|PassPhraseDialog|Protocol|Proxy(?:CACertificateFile|CACertificatePath|CARevocation(?:Check|File|Path)|CheckPeer(?:CN|Expire|Name)|CipherSuite|Engine|MachineCertificate(?:ChainFile|File|Path)|Protocol|Verify|VerifyDepth)|RandomSeed|RenegBufferSize|Require|RequireSSL|Session(?:Cache|CacheTimeout|TicketKeyFile|Tickets)|SRPUnknownUserSeed|SRPVerifierFile|Stapling(?:Cache|ErrorCacheTimeout|FakeTryLater|ForceURL|ResponderTimeout|ResponseMaxAge|ResponseTimeSkew|ReturnResponderErrors|StandardCacheTimeout)|StrictSNIVHostCheck|UserName|UseStapling|VerifyClient|VerifyDepth)|StartServers|StartThreads|Substitute|Suexec|SuexecUserGroup|ThreadLimit|ThreadsPerChild|ThreadStackSize|TimeOut|TraceEnable|TransferLog|TypesConfig|UnDefine|UndefMacro|UnsetEnv|Use|UseCanonicalName|UseCanonicalPhysicalPort|User|UserDir|VHostCGIMode|VHostCGIPrivs|VHostGroup|VHostPrivs|VHostSecure|VHostUser|Virtual(?:DocumentRoot|ScriptAlias)(?:IP)?|WatchdogInterval|XBitHack|xml2EncAlias|xml2EncDefault|xml2StartParse)\\b';
  const definition_10 =
      '<\\/?\\b(?:Auth[nz]ProviderAlias|Directory|DirectoryMatch|Else|ElseIf|Files|FilesMatch|If|IfDefine|IfModule|IfVersion|Limit|LimitExcept|Location|LocationMatch|Macro|Proxy|Require(?:All|Any|None)|VirtualHost)\\b.*>';
  const definition_20 = '^<\\/?\\w+';
  const definition_25 = '^<\\/?';
  const definition_22 = '.*[^>]';
  const definition_26 = ':';
  const definition_15 = '("|\').*\\1';
  const definition_6 = '[\$%]\\{?(?:\\w\\.?[-+:]?)+\\}?';
  const definition_19 = '>';
  const definition_13 = '\\[(?:[\\w=],?)+\\]';
  const definition_7 = '\\^?.*\\\$|\\^.*\\\$?';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8, caseSensitive: false, multiLine: true),
    lookbehind: true,
    aliases: ['property'],
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_10, caseSensitive: false),
    inside: definition_11,
    aliases: ['tag'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_20),
    inside: definition_21,
    aliases: ['tag'],
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_22),
    inside: definition_23,
    aliases: ['attr-value'],
  );
  final definition_27 = GrammarToken(
    pattern: RegExp(definition_15),
    inside: definition_28,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_13),
    aliases: ['keyword'],
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_15),
    inside: definition_16,
  );
  definition_21.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_25))],
  });
  definition_28.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_6))],
  });
  definition_23.addAllTokens({
    'punctuation': [GrammarToken(pattern: RegExp(definition_26))],
    'string': [definition_27],
  });
  definition_11.addAllTokens({
    'directive-block': [definition_17],
    'directive-block-parameter': [definition_18],
    'punctuation': [GrammarToken(pattern: RegExp(definition_19))],
  });
  definition_16.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_6))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'directive-inline': [definition_2],
    'directive-block': [definition_3],
    'directive-flags': [definition_4],
    'string': [definition_5],
    'variable': [GrammarToken(pattern: RegExp(definition_6))],
    'regex': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'apacheconf',
    definition_0,
  );
}

final languageApacheconf = _create();
