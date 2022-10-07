class NoGrammarFoundError extends Error {
  NoGrammarFoundError(this.invalidValue);

  final String invalidValue;

  @override
  String toString() => 'No grammar for the language $invalidValue.';
}
