import '../helpers/embedded_in.dart';
import '../models/models.dart';
import '../prism.dart';

List<Node> customTokenizer_4(String code, Grammar grammar, Prism prism) {
  if (!RegExp(r'<\?').hasMatch(code)) {
    return prism.tokenize(
      code,
      grammar.getTokens('php').single.inside as Grammar,
    );
  }

  return embeddedIn('markup')(code, grammar, prism);
}
