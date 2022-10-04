import '../templating.dart';
import '../types.dart';

CustomTokenizer embeddedIn(String hostGrammar) {
  return (code, grammar, prism) {
    return templating(
      code,
      prism,
      hostGrammar: prism.registry.getGrammar(hostGrammar),
      templateGrammar: grammar.withoutTokenize(),
    );
  };
}
