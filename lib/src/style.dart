/// Creates a style.
class PrismStyle<T> {
  const PrismStyle({
    this.token,
    this.atrule,
    this.attrName,
    this.attrValue,
    this.bold,
    this.boolean,
    this.builtin,
    this.cdata,
    this.char,
    this.className,
    this.comment,
    this.constant,
    this.deleted,
    this.doctype,
    this.entity,
    this.function,
    this.important,
    this.inserted,
    this.italic,
    this.keyword,
    this.namespace,
    this.number,
    this.operator,
    this.prolog,
    this.property,
    this.punctuation,
    this.regex,
    this.selector,
    this.string,
    this.symbol,
    this.tag,
    this.url,
  }) : _addon = const {};

  const PrismStyle._({
    this.token,
    this.atrule,
    this.attrName,
    this.attrValue,
    this.bold,
    this.boolean,
    this.builtin,
    this.cdata,
    this.char,
    this.className,
    this.comment,
    this.constant,
    this.deleted,
    this.doctype,
    this.entity,
    this.function,
    this.important,
    this.inserted,
    this.italic,
    this.keyword,
    this.namespace,
    this.number,
    this.operator,
    this.prolog,
    this.property,
    this.punctuation,
    this.regex,
    this.selector,
    this.string,
    this.symbol,
    this.tag,
    this.url,
    Map<String, T> extraStyles = const {},
  }) : _addon = extraStyles;

  /// A style for all tokens.
  final T? token;

  /// A style for token atrule.
  final T? atrule;

  /// A style for token attrName.
  final T? attrName;

  /// A style for token attrValue.
  final T? attrValue;

  /// A style for token bold.
  final T? bold;

  /// A style for token boolean.
  final T? boolean;

  /// A style for token builtin.
  final T? builtin;

  /// A style for token cdata.
  final T? cdata;

  /// A style for token char.
  final T? char;

  /// A style for token className.
  final T? className;

  /// A style for token comment.
  final T? comment;

  /// A style for token constant.
  final T? constant;

  /// A style for toen deleted.
  final T? deleted;

  /// A style for token doctype.
  final T? doctype;

  /// A style for token entity.
  final T? entity;

  /// A style for token function.
  final T? function;

  /// A style for token important.
  final T? important;

  /// A style for token inserted.
  final T? inserted;

  /// A style for token italic.
  final T? italic;

  /// A style for token keyword.
  final T? keyword;

  /// A style for token namespace.
  final T? namespace;

  /// A style for token number.
  final T? number;

  /// A style for token operator.
  final T? operator;

  /// A style for token prolog.
  final T? prolog;

  /// A style for token property.
  final T? property;

  /// A style for token punctuation.
  final T? punctuation;

  /// A style for token regex.
  final T? regex;

  /// A style for token selector.
  final T? selector;

  /// A style for token string.
  final T? string;

  /// A style for token symbol.
  final T? symbol;

  /// A style for token tag.
  final T? tag;

  /// A style for token url.
  final T? url;

  /// Other styles.
  final Map<String, T> _addon;

  /// Gets a style by the given [name].
  ///
  /// The [name] should be one of the [standardTokenNames], do not transfer
  /// kebab case to camel case.
  T? get(String? name) {
    if (name == null) {
      return null;
    }

    switch (name) {
      case 'atrule':
        return atrule;
      case 'attr-name':
        return attrName;
      case 'attr-value':
        return attrValue;
      case 'bold':
        return bold;
      case 'boolean':
        return boolean;
      case 'builtin':
        return builtin;
      case 'cdata':
        return cdata;
      case 'char':
        return char;
      case 'class-name':
        return className;
      case 'comment':
        return comment;
      case 'constant':
        return constant;
      case 'deleted':
        return deleted;
      case 'doctype':
        return doctype;
      case 'entity':
        return entity;
      case 'function':
        return function;
      case 'important':
        return important;
      case 'inserted':
        return inserted;
      case 'italic':
        return italic;
      case 'keyword':
        return keyword;
      case 'namespace':
        return namespace;
      case 'number':
        return number;
      case 'operator':
        return operator;
      case 'prolog':
        return prolog;
      case 'property':
        return property;
      case 'punctuation':
        return punctuation;
      case 'regex':
        return regex;
      case 'selector':
        return selector;
      case 'string':
        return string;
      case 'symbol':
        return symbol;
      case 'tag':
        return tag;
      case 'url':
        return url;
    }

    return _addon[name];
  }

  /// Creates a [PrismStyle] instance with extra [styleSheet].
  PrismStyle<T> extend(Map<String, T> styleSheet) => PrismStyle._(
        token: token,
        atrule: atrule,
        attrName: attrName,
        attrValue: attrValue,
        bold: bold,
        boolean: boolean,
        builtin: builtin,
        cdata: cdata,
        char: char,
        className: className,
        comment: comment,
        constant: constant,
        deleted: deleted,
        doctype: doctype,
        entity: entity,
        function: function,
        important: important,
        inserted: inserted,
        italic: italic,
        keyword: keyword,
        namespace: namespace,
        number: number,
        operator: operator,
        prolog: prolog,
        property: property,
        punctuation: punctuation,
        regex: regex,
        selector: selector,
        string: string,
        symbol: symbol,
        tag: tag,
        url: url,
        extraStyles: styleSheet,
      );

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
