import 'package:dart_prism/src/models/grammar.dart';

class LanguageProto {
  const LanguageProto(
    this.id,
    this.grammar, {
    this.aliases = const [],
    this.requiredDependencies = const [],
    this.optionalDependencies = const [],
  });

  /// Standard name.
  final String id;

  /// Other alias names.
  final List<String> aliases;

  /// Required dependencies of the grammar.
  final List<String> requiredDependencies;

  /// Optional dependencies of the grammar.
  final List<String> optionalDependencies;

  /// The grammar of this language.
  final Grammar grammar;
}
