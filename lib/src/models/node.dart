/// Base class of Node.
abstract class Node {
  /// The type of this node.
  ///
  /// The value is `null` when it is a [Text] node.
  String? get type;

  /// The length of the text content.
  int get length;

  /// The alias names of this node.
  List<String> get aliases;

  /// A map representation of this node.
  Map<String, dynamic> toMap();

  /// Text content of a node.
  String get textContent;
}

/// A [Container] is a [Node] with children attribute.
class Container implements Node {
  final List<Node> children;

  @override
  final int length;

  @override
  final String type;

  @override
  final List<String> aliases;

  @override
  String get textContent => children.map((e) => e.textContent).join();

  const Container(
    this.type, {
    required this.length,
    this.children = const [],
    this.aliases = const [],
  });

  @override
  Map<String, dynamic> toMap() => {
        'type': type,
        if (aliases.isNotEmpty) 'aliases': aliases,
        'children': children.map((e) => e.toMap()).toList(),
        'length': length,
      };
}

/// A [Token] node contains the text matched patterns.
class Token implements Node {
  final String text;

  @override
  int get length => text.length;

  @override
  final String type;

  @override
  final List<String> aliases;

  @override
  String get textContent => text;

  const Token(this.type, this.text, {this.aliases = const []});

  @override
  Map<String, dynamic> toMap() => {
        'type': type,
        if (aliases.isNotEmpty) 'aliases': aliases,
        'text': text,
        'length': length,
      };

  @override
  String toString() => toMap().toString();
}

/// A plain text node,
/// which is a node has not been parsed or does not match any pattern.
class Text implements Node {
  final String text;

  @override
  int get length => text.length;

  @override
  String? get type => null;

  @override
  final List<String> aliases = const [];

  @override
  String get textContent => text;

  const Text(this.text);

  @override
  Map<String, dynamic> toMap() => {
        'text': text,
        'length': length,
      };

  @override
  String toString() => toMap().toString();
}
