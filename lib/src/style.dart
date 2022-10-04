class PrismStyle<T> {
  PrismStyle({
    T? root,
    T? token,
    //
    T? atrule,
    T? attrName,
    T? attrValue,
    T? bold,
    T? boolean,
    T? builtin,
    T? cdata,
    T? char,
    T? className,
    T? comment,
    T? constant,
    T? deleted,
    T? doctype,
    T? entity,
    T? function,
    T? important,
    T? inserted,
    T? italic,
    T? keyword,
    T? namespace,
    T? number,
    T? operator,
    T? prolog,
    T? property,
    T? punctuation,
    T? regex,
    T? selector,
    T? string,
    T? symbol,
    T? tag,
    T? url,
  }) {
    if (root != null) _styleMap['root'] = root;
    if (token != null) _styleMap['token'] = token;
    if (atrule != null) _styleMap['atrule'] = atrule;
    if (attrName != null) _styleMap['attr-name'] = attrName;
    if (attrValue != null) _styleMap['attr-value'] = attrValue;
    if (bold != null) _styleMap['bold'] = bold;
    if (boolean != null) _styleMap['boolean'] = boolean;
    if (builtin != null) _styleMap['builtin'] = builtin;
    if (cdata != null) _styleMap['cdata'] = cdata;
    if (char != null) _styleMap['char'] = char;
    if (className != null) _styleMap['class-name'] = className;
    if (comment != null) _styleMap['comment'] = comment;
    if (constant != null) _styleMap['constant'] = constant;
    if (deleted != null) _styleMap['deleted'] = deleted;
    if (doctype != null) _styleMap['doctype'] = doctype;
    if (entity != null) _styleMap['entity'] = entity;
    if (function != null) _styleMap['function'] = function;
    if (important != null) _styleMap['important'] = important;
    if (inserted != null) _styleMap['inserted'] = inserted;
    if (italic != null) _styleMap['italic'] = italic;
    if (keyword != null) _styleMap['keyword'] = keyword;
    if (namespace != null) _styleMap['namespace'] = namespace;
    if (number != null) _styleMap['number'] = number;
    if (operator != null) _styleMap['operator'] = operator;
    if (prolog != null) _styleMap['prolog'] = prolog;
    if (property != null) _styleMap['property'] = property;
    if (punctuation != null) _styleMap['punctuation'] = punctuation;
    if (regex != null) _styleMap['regex'] = regex;
    if (selector != null) _styleMap['selector'] = selector;
    if (string != null) _styleMap['string'] = string;
    if (symbol != null) _styleMap['symbol'] = symbol;
    if (tag != null) _styleMap['tag'] = tag;
    if (url != null) _styleMap['url'] = url;
  }

  final _styleMap = <String, T>{};

  /// Adds [styleSheet] to current [PrismStyle] instance.
  void extend(Map<String, T> styleSheet) {
    _styleMap.addAll(styleSheet);
  }

  /// Gets a style by the given [name].
  ///
  /// The [name] should be one of the [standardTokenNames], do not transfer
  /// kebab case to camel case.
  T? get(String? name) => name == null ? null : _styleMap[name];

  /// The standard token names.
  static const standardTokenNames = [
    'atrule',
    'attr-name',
    'attr-value',
    'bold',
    'boolean',
    'builtin',
    'cdata',
    'char',
    'class-name',
    'comment',
    'constant',
    'deleted',
    'doctype',
    'entity',
    'function',
    'important',
    'inserted',
    'italic',
    'keyword',
    'namespace',
    'number',
    'operator',
    'prolog',
    'property',
    'punctuation',
    'regex',
    'selector',
    'string',
    'symbol',
    'tag',
    'url',
  ];
}
