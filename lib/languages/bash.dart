// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_26 = Grammar();
  final definition_53 = Grammar();
  final definition_61 = Grammar();
  final definition_63 = Grammar();
  final definition_55 = Grammar();
  final definition_59 = Grammar();
  final definition_46 = Grammar();
  final definition_65 = Grammar();
  const definition_18 = '^#!\\s*\\/.*';
  const definition_20 = '(^|[^"{\\\\\$])#.*';
  const definition_48 =
      '(\\bfunction\\s+)[\\w-]+(?=(?:\\s*\\(?:\\s*\\))?\\s*\\{)';
  const definition_50 = '\\b[\\w-]+(?=\\s*\\(\\s*\\)\\s*\\{)';
  const definition_23 = '(\\b(?:for|select)\\s+)\\w+(?=\\s+in\\s)';
  const definition_25 = '(^|[\\s;|&]|[<>]\\()\\w+(?:\\.\\w+)*(?=\\+?=)';
  const definition_67 =
      '(^|[\\s;|&]|[<>]\\()\\b(?:BASH|BASHOPTS|BASH_ALIASES|BASH_ARGC|BASH_ARGV|BASH_CMDS|BASH_COMPLETION_COMPAT_DIR|BASH_LINENO|BASH_REMATCH|BASH_SOURCE|BASH_VERSINFO|BASH_VERSION|COLORTERM|COLUMNS|COMP_WORDBREAKS|DBUS_SESSION_BUS_ADDRESS|DEFAULTS_PATH|DESKTOP_SESSION|DIRSTACK|DISPLAY|EUID|GDMSESSION|GDM_LANG|GNOME_KEYRING_CONTROL|GNOME_KEYRING_PID|GPG_AGENT_INFO|GROUPS|HISTCONTROL|HISTFILE|HISTFILESIZE|HISTSIZE|HOME|HOSTNAME|HOSTTYPE|IFS|INSTANCE|JOB|LANG|LANGUAGE|LC_ADDRESS|LC_ALL|LC_IDENTIFICATION|LC_MEASUREMENT|LC_MONETARY|LC_NAME|LC_NUMERIC|LC_PAPER|LC_TELEPHONE|LC_TIME|LESSCLOSE|LESSOPEN|LINES|LOGNAME|LS_COLORS|MACHTYPE|MAILCHECK|MANDATORY_PATH|NO_AT_BRIDGE|OLDPWD|OPTERR|OPTIND|ORBIT_SOCKETDIR|OSTYPE|PAPERSIZE|PATH|PIPESTATUS|PPID|PS1|PS2|PS3|PS4|PWD|RANDOM|REPLY|SECONDS|SELINUX_INIT|SESSION|SESSIONTYPE|SESSION_MANAGER|SHELL|SHELLOPTS|SHLVL|SSH_AUTH_SOCK|TERM|UID|UPSTART_EVENTS|UPSTART_INSTANCE|UPSTART_JOB|UPSTART_SESSION|USER|WINDOWID|XAUTHORITY|XDG_CONFIG_DIRS|XDG_CURRENT_DESKTOP|XDG_DATA_DIRS|XDG_GREETER_DATA_DIR|XDG_MENU_PREFIX|XDG_RUNTIME_DIR|XDG_SEAT|XDG_SEAT_PATH|XDG_SESSION_DESKTOP|XDG_SESSION_ID|XDG_SESSION_PATH|XDG_SESSION_TYPE|XDG_VTNR|XMODIFIERS)\\b';
  const definition_27 =
      '(^|\\s)-{1,2}(?:\\w+:[+-]?)?\\w+(?:\\.\\w+)*(?=[=\\s]|\$)';
  const definition_52 =
      '((?:^|[^<])<<-?\\s*)(\\w+)\\s[\\s\\S]*?(?:\\r?\\n|\\r)\\2';
  const definition_80 = '(^(["\']?)\\w+\\2)[ \\t]+\\S.*';
  const definition_83 =
      '\\\$\\b(?:BASH|BASHOPTS|BASH_ALIASES|BASH_ARGC|BASH_ARGV|BASH_CMDS|BASH_COMPLETION_COMPAT_DIR|BASH_LINENO|BASH_REMATCH|BASH_SOURCE|BASH_VERSINFO|BASH_VERSION|COLORTERM|COLUMNS|COMP_WORDBREAKS|DBUS_SESSION_BUS_ADDRESS|DEFAULTS_PATH|DESKTOP_SESSION|DIRSTACK|DISPLAY|EUID|GDMSESSION|GDM_LANG|GNOME_KEYRING_CONTROL|GNOME_KEYRING_PID|GPG_AGENT_INFO|GROUPS|HISTCONTROL|HISTFILE|HISTFILESIZE|HISTSIZE|HOME|HOSTNAME|HOSTTYPE|IFS|INSTANCE|JOB|LANG|LANGUAGE|LC_ADDRESS|LC_ALL|LC_IDENTIFICATION|LC_MEASUREMENT|LC_MONETARY|LC_NAME|LC_NUMERIC|LC_PAPER|LC_TELEPHONE|LC_TIME|LESSCLOSE|LESSOPEN|LINES|LOGNAME|LS_COLORS|MACHTYPE|MAILCHECK|MANDATORY_PATH|NO_AT_BRIDGE|OLDPWD|OPTERR|OPTIND|ORBIT_SOCKETDIR|OSTYPE|PAPERSIZE|PATH|PIPESTATUS|PPID|PS1|PS2|PS3|PS4|PWD|RANDOM|REPLY|SECONDS|SELINUX_INIT|SESSION|SESSIONTYPE|SESSION_MANAGER|SHELL|SHELLOPTS|SHLVL|SSH_AUTH_SOCK|TERM|UID|UPSTART_EVENTS|UPSTART_INSTANCE|UPSTART_JOB|UPSTART_SESSION|USER|WINDOWID|XAUTHORITY|XDG_CONFIG_DIRS|XDG_CURRENT_DESKTOP|XDG_DATA_DIRS|XDG_GREETER_DATA_DIR|XDG_MENU_PREFIX|XDG_RUNTIME_DIR|XDG_SEAT|XDG_SEAT_PATH|XDG_SESSION_DESKTOP|XDG_SESSION_ID|XDG_SESSION_PATH|XDG_SESSION_TYPE|XDG_VTNR|XMODIFIERS)\\b';
  const definition_60 = '\\\$?\\(\\([\\s\\S]+?\\)\\)';
  const definition_87 = '(^\\\$\\(\\([\\s\\S]+)\\)\\)';
  const definition_85 = '^\\\$\\(\\(';
  const definition_72 =
      '\\b0x[\\dA-Fa-f]+\\b|(?:\\b\\d+(?:\\.\\d*)?|\\B\\.\\d+)(?:[Ee]-?\\d+)?';
  const definition_73 =
      '--|\\+\\+|\\*\\*=?|<<=?|>>=?|&&|\\|\\||[=!+\\-*/%<>^&|]=?|[?~:]';
  const definition_74 = '\\(\\(?|\\)\\)?|,|;';
  const definition_62 = '\\\$\\((?:\\([^)]+\\)|[^()])+\\)|`[^`]+`';
  const definition_75 = '^\\\$\\(|^`|\\)\$|`\$';
  const definition_54 =
      '((?:^|[^<])<<-?\\s*)(["\'])(\\w+)\\2\\s[\\s\\S]*?(?:\\r?\\n|\\r)\\3';
  const definition_56 =
      '(^|[^\\\\](?:\\\\\\\\)*)"(?:\\\\[\\s\\S]|\\\$\\([^)]+\\)|\\\$(?!\\()|`[^`]+`|[^"\\\\`\$])*"';
  const definition_57 = '(^|[^\$\\\\])\'[^\']*\'';
  const definition_58 = '\\\$\'(?:[^\'\\\\]|\\\\[\\s\\S])*\'';
  const definition_70 =
      '\\\\(?:[abceEfnrtv\\\\"]|O?[0-7]{1,3}|U[0-9a-fA-F]{8}|u[0-9a-fA-F]{4}|x[0-9a-fA-F]{1,2})';
  const definition_33 =
      '\\\$?\\b(?:BASH|BASHOPTS|BASH_ALIASES|BASH_ARGC|BASH_ARGV|BASH_CMDS|BASH_COMPLETION_COMPAT_DIR|BASH_LINENO|BASH_REMATCH|BASH_SOURCE|BASH_VERSINFO|BASH_VERSION|COLORTERM|COLUMNS|COMP_WORDBREAKS|DBUS_SESSION_BUS_ADDRESS|DEFAULTS_PATH|DESKTOP_SESSION|DIRSTACK|DISPLAY|EUID|GDMSESSION|GDM_LANG|GNOME_KEYRING_CONTROL|GNOME_KEYRING_PID|GPG_AGENT_INFO|GROUPS|HISTCONTROL|HISTFILE|HISTFILESIZE|HISTSIZE|HOME|HOSTNAME|HOSTTYPE|IFS|INSTANCE|JOB|LANG|LANGUAGE|LC_ADDRESS|LC_ALL|LC_IDENTIFICATION|LC_MEASUREMENT|LC_MONETARY|LC_NAME|LC_NUMERIC|LC_PAPER|LC_TELEPHONE|LC_TIME|LESSCLOSE|LESSOPEN|LINES|LOGNAME|LS_COLORS|MACHTYPE|MAILCHECK|MANDATORY_PATH|NO_AT_BRIDGE|OLDPWD|OPTERR|OPTIND|ORBIT_SOCKETDIR|OSTYPE|PAPERSIZE|PATH|PIPESTATUS|PPID|PS1|PS2|PS3|PS4|PWD|RANDOM|REPLY|SECONDS|SELINUX_INIT|SESSION|SESSIONTYPE|SESSION_MANAGER|SHELL|SHELLOPTS|SHLVL|SSH_AUTH_SOCK|TERM|UID|UPSTART_EVENTS|UPSTART_INSTANCE|UPSTART_JOB|UPSTART_SESSION|USER|WINDOWID|XAUTHORITY|XDG_CONFIG_DIRS|XDG_CURRENT_DESKTOP|XDG_DATA_DIRS|XDG_GREETER_DATA_DIR|XDG_MENU_PREFIX|XDG_RUNTIME_DIR|XDG_SEAT|XDG_SEAT_PATH|XDG_SESSION_DESKTOP|XDG_SESSION_ID|XDG_SESSION_PATH|XDG_SESSION_TYPE|XDG_VTNR|XMODIFIERS)\\b';
  const definition_39 =
      '(^|[\\s;|&]|[<>]\\()(?:add|apropos|apt|apt-cache|apt-get|aptitude|aspell|automysqlbackup|awk|basename|bash|bc|bconsole|bg|bzip2|cal|cargo|cat|cfdisk|chgrp|chkconfig|chmod|chown|chroot|cksum|clear|cmp|column|comm|composer|cp|cron|crontab|csplit|curl|cut|date|dc|dd|ddrescue|debootstrap|df|diff|diff3|dig|dir|dircolors|dirname|dirs|dmesg|docker|docker-compose|du|egrep|eject|env|ethtool|expand|expect|expr|fdformat|fdisk|fg|fgrep|file|find|fmt|fold|format|free|fsck|ftp|fuser|gawk|git|gparted|grep|groupadd|groupdel|groupmod|groups|grub-mkconfig|gzip|halt|head|hg|history|host|hostname|htop|iconv|id|ifconfig|ifdown|ifup|import|install|ip|java|jobs|join|kill|killall|less|link|ln|locate|logname|logrotate|look|lpc|lpr|lprint|lprintd|lprintq|lprm|ls|lsof|lynx|make|man|mc|mdadm|mkconfig|mkdir|mke2fs|mkfifo|mkfs|mkisofs|mknod|mkswap|mmv|more|most|mount|mtools|mtr|mutt|mv|nano|nc|netstat|nice|nl|node|nohup|notify-send|npm|nslookup|op|open|parted|passwd|paste|pathchk|ping|pkill|pnpm|podman|podman-compose|popd|pr|printcap|printenv|ps|pushd|pv|quota|quotacheck|quotactl|ram|rar|rcp|reboot|remsync|rename|renice|rev|rm|rmdir|rpm|rsync|scp|screen|sdiff|sed|sendmail|seq|service|sftp|sh|shellcheck|shuf|shutdown|sleep|slocate|sort|split|ssh|stat|strace|su|sudo|sum|suspend|swapon|sync|sysctl|tac|tail|tar|tee|time|timeout|top|touch|tr|traceroute|tsort|tty|umount|uname|unexpand|uniq|units|unrar|unshar|unzip|update-grub|uptime|useradd|userdel|usermod|users|uudecode|uuencode|v|vcpkg|vdir|vi|vim|virsh|vmstat|wait|watch|wc|wget|whereis|which|who|whoami|write|xargs|xdg-open|yarn|yes|zenity|zip|zsh|zypper)(?=\$|[)\\s;|&])';
  const definition_40 =
      '(^|[\\s;|&]|[<>]\\()(?:case|do|done|elif|else|esac|fi|for|function|if|in|select|then|until|while)(?=\$|[)\\s;|&])';
  const definition_41 =
      '(^|[\\s;|&]|[<>]\\()(?:\\.|:|alias|bind|break|builtin|caller|cd|command|continue|declare|echo|enable|eval|exec|exit|export|getopts|hash|help|let|local|logout|mapfile|printf|pwd|read|readarray|readonly|return|set|shift|shopt|source|test|times|trap|type|typeset|ulimit|umask|unalias|unset)(?=\$|[)\\s;|&])';
  const definition_43 = '(^|[\\s;|&]|[<>]\\()(?:false|true)(?=\$|[)\\s;|&])';
  const definition_44 = '\\B&\\d\\b';
  const definition_45 =
      '\\d?<>|>\\||\\+=|=[=~]?|!=?|<<[<-]?|[&\\d]?>>|\\d[<>]&?|[<>][&=]?|&[>&]?|\\|[&|]?';
  const definition_79 = '^\\d';
  const definition_16 = '\\\$?\\(\\(?|\\)\\)?|\\.\\.|[{}[\\];\\\\]';
  const definition_47 = '(^|\\s)(?:[1-9]\\d*|0)(?:[.,]\\d+)?\\b';
  const definition_64 = '\\\$\\{[^}]+\\}';
  const definition_76 = ':[-=?+]?|[!\\/]|##?|%%?|\\^\\^?|,,?';
  const definition_77 = '[\\[\\]]';
  const definition_86 =
      '(\\{)\\b(?:BASH|BASHOPTS|BASH_ALIASES|BASH_ARGC|BASH_ARGV|BASH_CMDS|BASH_COMPLETION_COMPAT_DIR|BASH_LINENO|BASH_REMATCH|BASH_SOURCE|BASH_VERSINFO|BASH_VERSION|COLORTERM|COLUMNS|COMP_WORDBREAKS|DBUS_SESSION_BUS_ADDRESS|DEFAULTS_PATH|DESKTOP_SESSION|DIRSTACK|DISPLAY|EUID|GDMSESSION|GDM_LANG|GNOME_KEYRING_CONTROL|GNOME_KEYRING_PID|GPG_AGENT_INFO|GROUPS|HISTCONTROL|HISTFILE|HISTFILESIZE|HISTSIZE|HOME|HOSTNAME|HOSTTYPE|IFS|INSTANCE|JOB|LANG|LANGUAGE|LC_ADDRESS|LC_ALL|LC_IDENTIFICATION|LC_MEASUREMENT|LC_MONETARY|LC_NAME|LC_NUMERIC|LC_PAPER|LC_TELEPHONE|LC_TIME|LESSCLOSE|LESSOPEN|LINES|LOGNAME|LS_COLORS|MACHTYPE|MAILCHECK|MANDATORY_PATH|NO_AT_BRIDGE|OLDPWD|OPTERR|OPTIND|ORBIT_SOCKETDIR|OSTYPE|PAPERSIZE|PATH|PIPESTATUS|PPID|PS1|PS2|PS3|PS4|PWD|RANDOM|REPLY|SECONDS|SELINUX_INIT|SESSION|SESSIONTYPE|SESSION_MANAGER|SHELL|SHELLOPTS|SHLVL|SSH_AUTH_SOCK|TERM|UID|UPSTART_EVENTS|UPSTART_INSTANCE|UPSTART_JOB|UPSTART_SESSION|USER|WINDOWID|XAUTHORITY|XDG_CONFIG_DIRS|XDG_CURRENT_DESKTOP|XDG_DATA_DIRS|XDG_GREETER_DATA_DIR|XDG_MENU_PREFIX|XDG_RUNTIME_DIR|XDG_SEAT|XDG_SEAT_PATH|XDG_SESSION_DESKTOP|XDG_SESSION_ID|XDG_SESSION_PATH|XDG_SESSION_TYPE|XDG_VTNR|XMODIFIERS)\\b';
  const definition_38 = '\\\$(?:\\w+|[#?*!@\$])';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_18),
    aliases: ['important'],
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_20),
    lookbehind: true,
  );
  final definition_21 = GrammarToken(
    pattern: RegExp(definition_48),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_22 = GrammarToken(
    pattern: RegExp(definition_50),
    aliases: ['function'],
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_23),
    aliases: ['variable'],
    lookbehind: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_25),
    inside: definition_26,
    aliases: ['variable'],
    lookbehind: true,
  );
  final definition_51 = GrammarToken(
    pattern: RegExp(definition_67),
    lookbehind: true,
    aliases: ['constant'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_27),
    aliases: ['variable'],
    lookbehind: true,
  );
  final definition_28 = GrammarToken(
    pattern: RegExp(definition_52),
    lookbehind: true,
    greedy: true,
    inside: definition_53,
    global: true,
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_80),
    lookbehind: true,
    aliases: ['punctuation'],
    inside: 'bash',
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_83),
    aliases: ['constant'],
  );
  final definition_35 = GrammarToken(
    pattern: RegExp(definition_60),
    greedy: true,
    inside: definition_61,
    global: true,
  );
  final definition_84 = GrammarToken(
    pattern: RegExp(definition_87),
    lookbehind: true,
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_62),
    greedy: true,
    inside: definition_63,
    global: true,
  );
  final definition_29 = GrammarToken(
    pattern: RegExp(definition_54),
    lookbehind: true,
    greedy: true,
    inside: definition_55,
    global: true,
  );
  final definition_30 = GrammarToken(
    pattern: RegExp(definition_56),
    lookbehind: true,
    greedy: true,
    inside: definition_53,
    global: true,
  );
  final definition_31 = GrammarToken(
    pattern: RegExp(definition_57),
    lookbehind: true,
    greedy: true,
    global: true,
  );
  final definition_32 = GrammarToken(
    pattern: RegExp(definition_58),
    greedy: true,
    inside: definition_59,
    global: true,
  );
  final definition_8 = GrammarToken(
    pattern: RegExp(definition_33),
    aliases: ['constant'],
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_39),
    lookbehind: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_40),
    lookbehind: true,
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_41),
    lookbehind: true,
    aliases: ['class-name'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_43),
    lookbehind: true,
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_44),
    aliases: ['important'],
  );
  final definition_15 = GrammarToken(
    pattern: RegExp(definition_45),
    inside: definition_46,
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_79),
    aliases: ['important'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_47),
    lookbehind: true,
  );
  final definition_37 = GrammarToken(
    pattern: RegExp(definition_64),
    greedy: true,
    inside: definition_65,
    global: true,
  );
  final definition_78 = GrammarToken(
    pattern: RegExp(definition_86),
    lookbehind: true,
    aliases: ['constant'],
  );
  definition_26.addAllTokens({
    'environment': [definition_51],
  });
  definition_61.addAllTokens({
    'variable': [
      definition_84,
      GrammarToken(pattern: RegExp(definition_85)),
    ],
    'number': [GrammarToken(pattern: RegExp(definition_72))],
    'operator': [GrammarToken(pattern: RegExp(definition_73))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_74))],
  });
  definition_55.addAllTokens({
    'bash': [definition_68],
  });
  definition_59.addAllTokens({
    'entity': [GrammarToken(pattern: RegExp(definition_70))],
  });
  definition_46.addAllTokens({
    'file-descriptor': [definition_66],
  });
  definition_63.addAllTokens({
    'variable': [GrammarToken(pattern: RegExp(definition_75))],
    'comment': [definition_2],
    'function-name': [
      definition_21,
      definition_22,
    ],
    'for-or-select': [definition_4],
    'assign-left': [definition_5],
    'parameter': [definition_6],
    'string': [
      definition_28,
      definition_29,
      definition_30,
      definition_31,
      definition_32,
    ],
    'environment': [definition_8],
    'function': [definition_10],
    'keyword': [definition_11],
    'builtin': [definition_12],
    'boolean': [definition_13],
    'file-descriptor': [definition_14],
    'operator': [definition_15],
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
    'number': [definition_17],
  });
  definition_65.addAllTokens({
    'operator': [GrammarToken(pattern: RegExp(definition_76))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_77))],
    'environment': [definition_78],
  });
  definition_53.addAllTokens({
    'bash': [definition_68],
    'environment': [definition_69],
    'variable': [
      definition_35,
      definition_36,
      definition_37,
      GrammarToken(pattern: RegExp(definition_38)),
    ],
    'entity': [GrammarToken(pattern: RegExp(definition_70))],
  });
  definition_0.addAllTokens({
    'shebang': [definition_1],
    'comment': [definition_2],
    'function-name': [
      definition_21,
      definition_22,
    ],
    'for-or-select': [definition_4],
    'assign-left': [definition_5],
    'parameter': [definition_6],
    'string': [
      definition_28,
      definition_29,
      definition_30,
      definition_31,
      definition_32,
    ],
    'environment': [definition_8],
    'variable': [
      definition_35,
      definition_36,
      definition_37,
      GrammarToken(pattern: RegExp(definition_38)),
    ],
    'function': [definition_10],
    'keyword': [definition_11],
    'builtin': [definition_12],
    'boolean': [definition_13],
    'file-descriptor': [definition_14],
    'operator': [definition_15],
    'punctuation': [GrammarToken(pattern: RegExp(definition_16))],
    'number': [definition_17],
  });

  return LanguageProto(
    'bash',
    definition_0,
    aliases: ['sh', 'shell'],
  );
}

final languageBash = _create();
