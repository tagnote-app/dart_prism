import 'helpers/match_pattern.dart';
import 'linked_list.dart';
import 'models/models.dart';
import 'registry.dart';

class Prism {
  /// Language registry, where stores the registered grammars.
  final Registry registry;

  Prism() : registry = Registry() {
    registry.registerAllLanguages();
  }

  /// Parses the given [text] into a series of AST nodes.
  List<Node> parse(String text, String language) {
    final grammar = registry.getGrammar(language);

    if (grammar == null) {
      throw NoGrammarFoundError(language);
    }

    return tokenize(text, grammar);
  }

  /// Parses [text] into a series of AST nodes with the given [grammar].
  List<Node> tokenize(String text, Grammar grammar) {
    if (grammar.tokenize != null) {
      return grammar.tokenize!(text, grammar, this);
    }

    var restGrammar = _resolveGrammar(grammar.rest);
    while (restGrammar != null) {
      grammar = grammar.copyWith(restGrammar);
      restGrammar = _resolveGrammar(restGrammar.rest);
    }

    final tokenList = LinkedList();
    tokenList.addAfter(tokenList.head, Text(text));
    _matchGrammar(text, tokenList, grammar, tokenList.head, 0);

    return tokenList.toArray();
  }

  void _matchGrammar(
    String text,
    LinkedList tokenList,
    Grammar grammar,
    LinkedListNode startNode,
    int startPos, [
    RematchOption? rematch,
  ]) {
    assert(
      startNode is LinkedListHeadNode || startNode is LinkedListMiddleNode,
    );

    for (final item in grammar.tokens.entries) {
      final tokenName = item.key;
      final tokenValue = item.value;
      if (tokenValue.isEmpty) {
        continue;
      }

      for (var j = 0; j < tokenValue.length; ++j) {
        if (rematch != null && rematch.cause == '$tokenName,$j') {
          return;
        }

        final grammarToken = tokenValue[j];
        final insideGrammar = _resolveGrammar(grammarToken.inside);

        // iterate the token list and keep track of the current token/string
        // position
        for (var currentNode = startNode.next!, pos = startPos;
            currentNode.next != null;
            pos += currentNode.value!.length, currentNode = currentNode.next!) {
          if (rematch != null && pos >= rematch.reach) {
            break;
          }

          final value = currentNode.value!;

          if (tokenList.length > text.length) {
            // Something went terribly wrong, ABORT, ABORT!
            return;
          }

          if (value is! Text) {
            continue;
          }

          var str = value.text;

          // This is the to parameter of removeBetween.
          var removeCount = 1;
          PatternMatch? match;

          if (grammarToken.greedy) {
            match = matchPattern(
              grammarToken.pattern,
              text,
              start: pos,
              global: true,
              lookbehind: grammarToken.lookbehind,
            );
            if (match == null || match.start >= text.length) {
              break;
            }

            final from = match.start;
            final to = match.start + match.uncaptured.length;
            var p = pos;

            // find the node that contains the match
            p += currentNode.value!.length;
            while (from >= p) {
              currentNode = currentNode.next!;
              if (currentNode.next == null) {
                throw Error();
              }
              p += currentNode.value!.length;
            }
            // adjust pos (and p)
            p -= currentNode.value!.length;
            pos = p;
            if (currentNode.value is! Text) {
              continue;
            }
            var k = currentNode;
            for (; k.next != null && (p < to || k.value is Text); k = k.next!) {
              removeCount++;
              p += k.value!.length;
            }
            removeCount--;

            str = text.substring(pos, p);
            match.start -= pos;
          } else {
            match = matchPattern(
              grammarToken.pattern,
              str,
              start: 0,
              global: grammarToken.global,
              lookbehind: grammarToken.lookbehind,
            );

            if (match == null) {
              continue;
            }
          }

          final from = match.start;
          final matchStr = match.uncaptured;
          final before = str.substring(0, from);
          final after = str.substring(from + matchStr.length);
          final reach = pos + str.length;
          if (rematch != null && reach > rematch.reach) {
            rematch.reach = reach;
          }

          var removeFrom = currentNode.prev;
          if (before.isNotEmpty) {
            removeFrom = tokenList.addAfter(
              removeFrom!,
              Text(before),
            );
            pos += before.length;
          }

          tokenList.removeRange(removeFrom!, removeCount);

          final node = insideGrammar == null
              ? Token(tokenName, matchStr, aliases: grammarToken.aliases)
              : Container(
                  tokenName,
                  length: matchStr.length,
                  aliases: grammarToken.aliases,
                  children: tokenize(matchStr, insideGrammar),
                );
          currentNode = tokenList.addAfter(removeFrom, node);

          if (after.isNotEmpty) {
            tokenList.addAfter(currentNode, Text(after));
          }

          if (removeCount > 1) {
            // At least one Token object was removed, so we have to do some
            // rematching this can only happen if the current pattern is greedy
            final nestedRematch = RematchOption(
              cause: '$tokenName,$j',
              reach: reach,
            );
            _matchGrammar(
              text,
              tokenList,
              grammar,
              currentNode.prev!,
              pos,
              nestedRematch,
            );
            // the reach might have been extended because of the rematching
            if (rematch != null && nestedRematch.reach > rematch.reach) {
              rematch.reach = nestedRematch.reach;
            }
          }
        }
      }
    }
  }

  /// [reference] could be a [String] which is a language name or a [Grammar].
  Grammar? _resolveGrammar(dynamic reference) {
    if (reference == null) {
      return null;
    }

    if (reference is String) {
      return registry.getGrammar(reference);
    }

    if (reference is Grammar) {
      return reference;
    }

    throw ArgumentError.value(reference, 'reference');
  }
}
