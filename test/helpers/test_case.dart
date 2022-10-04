import 'dart:io';

class TestCase {
  TestCase({
    required String file,
  }) : _file = file {
    _parse(File(_file).readAsStringSync());
  }

  TestCase._({
    required String file,
    required this.code,
    required this.expected,
    required this.description,
    required this.crlfLineEnding,
  }) : _file = file;

  final String _file;
  late final String code;
  late final String expected;
  late final String description;
  late final bool crlfLineEnding;

  String get file {
    final segments = _file.split('/');
    return segments.getRange(segments.length - 2, segments.length).join('/');
  }

  void _parse(String content) {
    crlfLineEnding = RegExp('\r\n').hasMatch(content);
    if (crlfLineEnding) {
      content = content.replaceAll('\r\n', '\n');
    }

    final parts = content.split(RegExp(r'^-{10,}[ \t]*$', multiLine: true));
    if (parts.length < 2 || parts.length > 3) {
      throw ArgumentError('A test test should have 2 or 3 parts');
    }

    code = parts[0].trim();
    expected = parts[1].trim();
    description = parts.length == 3 ? parts[2].trim() : '';
  }

  TestCase updateExpected(String expected) => TestCase._(
        file: _file,
        code: code,
        expected: expected,
        description: description,
        crlfLineEnding: crlfLineEnding,
      );

  String print() {
    var content = [code, expected, description].join(
      '\n\n----------------------------------------------------\n\n',
    );
    if (crlfLineEnding) {
      content = '${content.replaceAll('\n', '\r\n')}\r\n';
    } else {
      content += '\n';
    }

    return content;
  }
}
