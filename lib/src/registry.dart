import '../languages/all.dart';
import 'models/models.dart';

class Registry {
  /// A map from the aliases of components to the id of the component with that
  /// alias.
  final _entries = <String, LanguageProto>{};

  /// Returns a standard language name by the given [name], returns [name] if
  /// cannot find one.
  String resolveAlias(String name) {
    return aliasMap[name] ?? name;
  }

  // It does not support register specified languages now, because the generated
  // grammars were generated in an environment while all the languages have been
  // registered. The required dependencies and the optional dependencies might
  // have been mixed into the genreated grammars partially.
  // It does not like highlight.js, which mode files are static. In PrismJs most
  // of the grammars are dynamiclly generated, the final grammar output is based
  // on the registered language protos, the `getLanguage` method offers apis to
  // fetch other languages when running `grammar` api of language protos:
  // ```javascript
  // entry.evaluatedGrammar = grammar({
  //   getLanguage: required,
  //   getOptionalLanguage: (id) => this.getLanguage(id),
  //   extend: (id, ref) => extend(required(id), id, ref),
  // });
  // ```

  // TODO(Zhiguang): Maybe it is possible to disable all the grammars except the
  // given one?

  /// Registers [languages].
  // void registerLanguages(List<String> languages) =>
  //     _registerLanguages(languages, true);

  /// Registers [languages], it also registers it's required dependencies if
  /// [withDependencies] is true.
  // Even though all the languages were added to entries while generating the
  // language prototypes, it only means it is able to use these dependencies at
  // generate-time(The javascript enviourment), it is still required to register
  // the required dependencies here, because some features such as custom
  // tokenize might need to get these required dependencies by id at run-time.
  //  void _registerLanguages(
  //    List<String> languages, [
  //    bool withDependencies = false,
  //  ]) {
  //    for (final language in languages) {
  //      final standardName = resolveAlias(language);
  //      final languageProto = languageMap[standardName];
  //      if (languageProto == null) {
  //        continue;
  //      }
  //      _entries[standardName] = languageProto;

  //      if (withDependencies) {
  //        _registerLanguages(languageProto.requiredDependencies, true);
  //      }
  //    }
  //  }

  /// Registers all languages.
  void registerAllLanguages() {
    _entries.addAll(languageMap);
  }

  /// Finds a grammar by given [language].
  Grammar? getGrammar(String language) =>
      _entries[resolveAlias(language)]?.grammar;
}
