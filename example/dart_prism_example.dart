import 'package:dart_prism/dart_prism.dart';

void main() {
  final prism = Prism();

  // Output a series of AST nodes.
  final nodes = prism.parse('const name = "dart"', 'dart');

  // Output an HTML string.
  final html = nodes.toHtml();

  print(html);
}
