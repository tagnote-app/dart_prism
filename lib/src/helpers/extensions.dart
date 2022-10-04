import 'dart:convert';

/// Converts [object] to a JSON [String] with a 2 whitespace indent.
String _toPrettyString(Object object) =>
    JsonEncoder.withIndent('  ').convert(object);

extension ListExtensions on List<dynamic> {
  void addIfNotNull<T>(T item) {
    if (item != null) {
      add(item);
    }
  }

  String toPrettyString() => _toPrettyString(toList());
}

extension MapExtensions on Map<dynamic, dynamic> {
  String toPrettyString() => _toPrettyString(this);
}
