import 'models/models.dart';

class LinkedList {
  LinkedList()
      : head = LinkedListHeadNode(),
        tail = LinkedListTailNode() {
    tail.prev = head;
    head.next = tail;
  }

  final LinkedListHeadNode head;
  final LinkedListTailNode tail;
  int length = 0;

  /// Adds a new node with the given value to the list.
  ///
  /// [node] should be either [LinkedListHeadNode] or [LinkedListMiddleNode]
  LinkedListMiddleNode addAfter(LinkedListNode node, Node value) {
    assert(
      node is LinkedListHeadNode || node is LinkedListMiddleNode,
      'node must be either [LinkedListHeadNode] or [LinkedListMiddleNode]',
    );

    final next = node.next!;
    final newNode = LinkedListMiddleNode(value: value)
      ..prev = node
      ..next = next;

    node.next = newNode;
    next.prev = newNode;
    length++;

    return newNode;
  }

  /// Removes `count` nodes after the given node. The given node will not be removed.
  ///
  /// [node] must be either [LinkedListHeadNode] or [LinkedListMiddleNode].
  void removeRange(LinkedListNode node, int count) {
    assert(
      node is LinkedListHeadNode || node is LinkedListMiddleNode,
      'node must be either [LinkedListHeadNode] or [LinkedListMiddleNode]',
    );
    var next = node.next!;
    var i = 0;
    for (; i < count && next.next != null; i++) {
      next = next.next!;
    }
    node.next = next;
    next.prev = node;
    length -= i;
  }

  List<Node> toArray() {
    final array = <Node>[];
    var node = head.next;
    while (node.next != null) {
      assert(
        node is LinkedListMiddleNode,
        'The only possible node here should be LinkedListMiddleNode',
      );
      array.add(node.value!);
      node = node.next!;
    }

    return array;
  }
}
