import 'models.dart';

abstract class LinkedListNode {
  Node? get value => null;

  LinkedListNode? _next;
  LinkedListNode? _prev;

  LinkedListNode? get next {
    if (this is LinkedListHeadNode || this is LinkedListMiddleNode) {
      assert(_next is LinkedListMiddleNode || _next is LinkedListTailNode);
    } else if (this is LinkedListTailNode) {
      assert(_next == null);
    }

    return _next;
  }

  set next(LinkedListNode? node) {
    if (this is LinkedListHeadNode || this is LinkedListMiddleNode) {
      assert(
        node is LinkedListMiddleNode || node is LinkedListTailNode,
        '`node` must be a `LinkedListMiddleNode` or a '
        '`LinkedListTailNode` when it is a `LinkedListHeadNode` or a '
        '`LinkedListMiddleNode`',
      );
    } else if (this is LinkedListTailNode) {
      assert(
        node == null,
        '`node` must be `null` when it is a `LinkedListTailNode`',
      );
    }

    _next = node;
  }

  LinkedListNode? get prev {
    if (this is LinkedListTailNode || this is LinkedListMiddleNode) {
      assert(_prev is LinkedListMiddleNode || _prev is LinkedListHeadNode);
    } else if (this is LinkedListHeadNode) {
      assert(_prev == null);
    }

    return _prev;
  }

  set prev(LinkedListNode? node) {
    if (this is LinkedListTailNode || this is LinkedListMiddleNode) {
      assert(
        node is LinkedListMiddleNode || node is LinkedListHeadNode,
        '`node` must be a `LinkedListMiddleNode` or a '
        '`LinkedListHeadNode` when it is a `LinkedListTailNode` or a '
        '`LinkedListMiddleNode`',
      );
    } else if (this is LinkedListHeadNode) {
      assert(
        node == null,
        '`node` must be `null` when it is a `LinkedListHeadNode`',
      );
    }

    _prev = node;
  }
}

class LinkedListHeadNode extends LinkedListNode {
  @override
  LinkedListNode get next => super.next!;
}

class LinkedListMiddleNode extends LinkedListNode {
  LinkedListMiddleNode({
    required this.value,
  });

  @override
  final Node value;

  @override
  LinkedListNode get prev => super.prev!;

  @override
  LinkedListNode get next => super.next!;
}

class LinkedListTailNode extends LinkedListNode {
  @override
  final value = null;

  @override
  final next = null;

  @override
  LinkedListNode get prev => super.prev!;
}
