import '../helpers/extensions.dart';
import 'grammar.dart';

class GrammarToken {
  const GrammarToken({
    required this.pattern,
    this.lookbehind = false,
    this.greedy = false,
    this.global = false,
    this.aliases = const <String>[],
    this.inside,
  });

  /// The regular expression of the token.
  final RegExp pattern;

  /// If `true`, then the first capturing group of `pattern` will (effectively)
  /// behave as a lookbehind group meaning that the captured text will not be
  /// part of the matched text of the new token.
  final bool lookbehind;

  /// Whether the token is greedy.
  final bool greedy;

  /// Whether to match the pattern against the string repeatedly.\
  /// It will use `allMatches` method of the [pattern] against the string input.
  ///
  /// It equals to the `g` flag in the Javascript `RegExp`.
  // TODO:(Z): Maybe this option is not requried, because of `greedy`?
  final bool global;

  /// A list of aliases.
  final List<String> aliases;

  /// The nested grammar of this token.
  ///
  /// The `inside` grammar will be used to tokenize the text value of each token
  /// of this kind.
  ///
  /// This can be used to make nested and even recursive language definitions.
  ///
  /// The value could be a [String] or a [Grammar].
  final dynamic inside;

  Map<String, dynamic> toMap() => {
        'pattern': pattern.pattern,
        'lookbehind': lookbehind,
        'greedy': greedy,
        'global': global,
        'aliases': aliases,
        if (inside is String) 'inside': inside,
        if (inside is Grammar) 'inside': (inside as Grammar).toMap(),
      };

  @override
  String toString() => toMap().toPrettyString();
}
