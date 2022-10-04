import '../models/models.dart';
import '../prism.dart';

// TODO(Zhiguang): Finish it
List<Node> customTokenizer_2(String code, Grammar grammar, Prism prism) {
  final nodes = prism.tokenize(code, grammar.withoutTokenize());

  return nodes;
}
