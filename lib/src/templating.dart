import 'models/models.dart';
import 'prism.dart';

final _placeholderPattern = RegExp(r'___PH\d+___');

class _NodeStackItem {
  const _NodeStackItem(this.id, this.node);
  final int id;
  final Node node;
}

class _Placeholder {
  const _Placeholder(this.hostCode, this.nodeStack);
  final String hostCode;
  final List<_NodeStackItem> nodeStack;
}

String _getPlaceholder(int id) => '___PH${id}___';

_Placeholder _buildPlaceholders(String code, Grammar? grammar, Prism prism) {
  if (grammar == null) {
    return _Placeholder(code, []);
  }

  final templateNodes = prism.tokenize(code, grammar);

  var hostCode = '';
  var id = 0;
  final nodeStack = <_NodeStackItem>[];
  for (final node in templateNodes) {
    if (node is Text) {
      hostCode += node.text;
    } else if (node.type != null && node.type!.startsWith('ignore')) {
      hostCode += node.textContent;
    } else {
      if (_placeholderPattern.hasMatch(code)) {
        while (code.contains(_getPlaceholder(id))) {
          id++;
        }
      }

      nodeStack.add(_NodeStackItem(id, node));
      hostCode += _getPlaceholder(id);
      id++;
    }
  }
  return _Placeholder(hostCode, nodeStack);
}

void _insertIntoHostToken(
  List<Node> hostNodes,
  List<_NodeStackItem> nodeStack,
) {
  var j = 0;

  List<Node> walkNodes(List<Node> nodes) {
    for (var i = 0; i < nodes.length; i++) {
      // all placeholders are replaced already
      if (j >= nodeStack.length) {
        break;
      }

      final node = nodes[i];
      if (node is Text || node is Token) {
        final stackItem = nodeStack[j];
        final textContent = node.textContent;
        final placeholder = _getPlaceholder(stackItem.id);
        final index = textContent.indexOf(placeholder);

        if (index > -1) {
          ++j;

          final before = textContent.substring(0, index);
          final middle = stackItem.node;
          final after = textContent.substring(index + placeholder.length);

          final replacement = <Node>[];
          if (before.isNotEmpty) {
            replacement.add(Text(before));
          }
          replacement.add(middle);
          if (after.isNotEmpty) {
            replacement.addAll(walkNodes([Text(after)]));
          }

          if (node is Text) {
            nodes.replaceRange(i, i + 1, replacement);
          } else if (node is Container) {
            node.children.replaceRange(0, node.children.length, replacement);
          }
        }
      } else if (node is Container) {
        walkNodes(node.children);
      }
    }

    return nodes;
  }

  walkNodes(hostNodes);
}

List<Node> templating(
  String code,
  Prism prism, {
  Grammar? hostGrammar,
  Grammar? templateGrammar,
}) {
  final placeHolder = _buildPlaceholders(code, templateGrammar, prism);
  final hostCode = placeHolder.hostCode;
  final nodeStack = placeHolder.nodeStack;

  final nodes = hostGrammar != null
      ? prism.tokenize(hostCode, hostGrammar)
      : List<Node>.from([Text(hostCode)]);

  _insertIntoHostToken(nodes, nodeStack);

  return nodes;
}
