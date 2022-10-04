// import '../helpers/templating.dart';
import '../models/models.dart';
import '../prism.dart';

// TODO(Zhiguang): Finish it
List<Node> customTokenizer_0(String code, Grammar grammar, Prism prism) {
  final nodes = prism.tokenize(code, grammar.withoutTokenize());

  return nodes;
}
