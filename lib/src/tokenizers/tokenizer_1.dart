import '../models/models.dart';
import '../prism.dart';

List<Node> customTokenizer_1(String code, Grammar grammar, Prism prism) {
  final nodes = prism.tokenize(code, grammar.withoutTokenize());
  _walkNodes(nodes);
  return nodes;
}

class _OpenTag {
  _OpenTag(this.tagName, this.openedBraces);
  String tagName;
  int openedBraces;
}

void _walkNodes(List<Node> nodes) {
  final openedTags = <_OpenTag>[];

  for (var i = 0; i < nodes.length; i++) {
    final node = nodes[i];
    final isToken = node is! Text;
    var notTagNorBrace = false;

    if (isToken) {
      if (node is Container &&
          node.children.length > 1 &&
          node.type == 'tag' &&
          node.children[1].type == 'tag') {
        final nestedTag = node.children[1];
        final firstChild = node.children.first;

        if (firstChild is Token && firstChild.text == '</') {
          // Closing tag
          if (openedTags.isNotEmpty &&
              openedTags[openedTags.length - 1].tagName ==
                  nestedTag.textContent) {
            // Pop matching opening tag
            openedTags.removeLast();
          }
        } else {
          final lastChild = node.children.last;
          if (lastChild is Token && lastChild.text == '/>') {
            // Autoclosed tag, ignore
          } else {
            // Opening tag
            openedTags.add(_OpenTag(nestedTag.textContent, 0));
          }
        }
      }
    } else {
      final next = i < nodes.length - 1 ? nodes[i + 1] : null;
      final prev = i == 0 ? null : nodes[i - 1];
      if (openedTags.isNotEmpty &&
          node.type == 'punctuation' &&
          node.text == '{' &&
          // Ignore `{{`
          (next == null ||
              (next is! Token ||
                  next.type != 'punctuation' ||
                  next.text != '{')) &&
          (prev == null ||
              (prev is! Token ||
                  prev.type != 'plain-text' ||
                  prev.text != '{'))) {
        // Here we might have entered an XQuery expression inside a tag
        openedTags[openedTags.length - 1].openedBraces++;
      } else if (openedTags.isNotEmpty &&
          openedTags[openedTags.length - 1].openedBraces > 0 &&
          node.type == 'punctuation' &&
          node.text == '}') {
        // Here we might have left an XQuery expression inside a tag
        openedTags[openedTags.length - 1].openedBraces--;
      } else if (node.type != 'comment') {
        notTagNorBrace = true;
      }
    }

    if (notTagNorBrace || !isToken) {
      if (openedTags.isNotEmpty &&
          openedTags[openedTags.length - 1].openedBraces == 0) {
        // Here we are inside a tag, and not inside an XQuery expression.
        // That's plain text: drop any nodes matched.
        var plainText = node.textContent;

        // And merge text with adjacent text
        final next = i < nodes.length - 1 ? nodes[i + 1] : null;
        if (next != null && (next is Text || next.type == 'plain-text')) {
          plainText += next.textContent;
          nodes.removeRange(i + 1, i + 2);
        }
        final prev = i == 0 ? null : nodes[i - 1];
        if (prev != null && (prev is Text || prev.type == 'plain-text')) {
          plainText = prev.textContent + plainText;
          nodes.removeRange(i - 1, 1);
          i--;
        }

        if (RegExp(r'^\s+$').hasMatch(plainText)) {
          nodes[i] = Text(plainText);
        } else {
          nodes[i] = Token('plain-text', plainText);
        }
      }
    }

    if (isToken && node is Container) {
      _walkNodes(node.children);
    }
  }
}
