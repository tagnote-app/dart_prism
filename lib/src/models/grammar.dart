import '../helpers/extensions.dart';

import '../types.dart';
import 'grammar_token.dart';

class Grammar {
  final Map<String, List<GrammarToken>> _tokens = {};

  Map<String, List<GrammarToken>> get tokens => _tokens;

  /// Gets tokens of [key].
  List<GrammarToken> getTokens(String key) {
    assert(hasToken(key));
    return _tokens[key]!;
  }

  /// Whether this [Grammar] contains the tokens of given [key]
  bool hasToken(String key) => _tokens.containsKey(key);

  /// Adds all key/tokens pairs of [other] to this [Grammar].
  void addAllTokens(Map<String, List<GrammarToken>> other) =>
      _tokens.addAll(other);

  /// An optional grammar that will be appended to this grammar
  ///
  /// The value could be a [String] or a [Grammar]
  dynamic rest;

  /// A Custom tokenizer.
  CustomTokenizer? tokenize;

  /// Clone this grammar but with [tokenize] null.
  Grammar withoutTokenize() {
    final grammar = Grammar();

    grammar.addAllTokens(_tokens);
    grammar.rest = rest;
    grammar.tokenize = null;

    return grammar;
  }

  /// Create a new grammar instance with [other].
  Grammar copyWith(Grammar other) {
    final grammar = Grammar();

    grammar.addAllTokens({..._tokens, ...other.tokens});
    grammar.rest = other.rest ?? rest;
    grammar.tokenize = other.tokenize ?? tokenize;

    return grammar;
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    for (var element in _tokens.entries) {
      map[element.key] = element.value.map((e) => e.toMap()).toList();
    }
    return map;
  }

  @override
  String toString() => toMap().toPrettyString();
}
