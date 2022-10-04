import 'models/node.dart';

extension ListExtensions on List<Node> {
  /// Outputs a [Node] list as an HTML string.
  String toHtml() => _parseNodes(this);
}

/// Converts a node to HTML string.
String _parseNode(Node node) {
  if (node is Text) {
    return _escape(node.text);
  }

  String content;
  if (node is Token) {
    content = _escape(node.text);
  } else if (node is Container) {
    content = _parseNodes(node.children);
  } else {
    throw ArgumentError('Unknown node type');
  }

  final classes = [
    'token',
    if (node.type != null) node.type,
    ...node.aliases,
  ];

  return '<span class="${classes.join(' ')}">$content</span>';
}

/// Converts a node list to an HTML string.
String _parseNodes(List<Node> nodes) {
  var s = '';
  for (final node in nodes) {
    s += _parseNode(node);
  }
  return s;
}

/// Escapes some special characters.
String _escape(String text) {
  return text
      .replaceAll('&', '&amp;')
      .replaceAll('<', '&lt;')
      .replaceAll(RegExp('\u00a0', unicode: true), ' ');
}
