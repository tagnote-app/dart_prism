import 'dart:convert';
import 'dart:io';
import 'package:dart_prism/dart_prism.dart';

import 'test_case.dart';

abstract class TestCaseRunner {
  TestCaseRunner({
    List<String> dirs = const [],
    List<String> files = const [],
  })  : _dirs = dirs,
        _files = files;

  final List<String> _dirs;

  final List<String> _files;

  final List<TestSuite> _testSuites = [];

  Future<void> load(String languagesDir) async {
    final languageDirs = _dirs.isEmpty ? await _readDir(languagesDir) : _dirs;

    for (final languageDir in languageDirs) {
      final languageName = languageDir.substring(
        languageDir.lastIndexOf('/') + 1,
      );

      _testSuites.add(TestSuite(languageName, await _readDir(languageDir)));
    }
  }

  void runTestSuiteWrapper(String description, void Function() runner);

  void runTestFileWrapper(String description, void Function() runner);

  void runTestCase(String actual, String expected, TestCase testCase);

  void run() {
    for (final testSuite in _testSuites) {
      final languageId = testSuite.languageId;

      runTestSuiteWrapper(languageId, () {
        for (final filePath in testSuite.files) {
          final fileName = filePath.split('/').last;

          if (_files.isNotEmpty && !_files.contains(fileName)) {
            continue;
          }

          final testCase = TestCase(file: filePath);

          var description = '$languageId/$fileName';
          if (testCase.description.isNotEmpty) {
            description = '${testCase.description} - $description';
          }

          runTestFileWrapper(description, () {
            final mainLanguageName = _findMainLanguageName(languageId);
            final prism = Prism();
            final astNodes = prism.parse(testCase.code, mainLanguageName);

            String actual;
            String expected;

            if (filePath.endsWith('.html.test')) {
              actual = _normalizeHtml(astNodes.toHtml());
              expected = _normalizeHtml(testCase.expected);
            } else if (filePath.endsWith('.test')) {
              actual = jsonEncode(_simplifyAst(astNodes));
              expected = jsonEncode(_normalizeJson(testCase.expected));
            } else {
              throw ArgumentError('Unknown test file: $filePath');
            }

            runTestCase(actual, expected, testCase);
          });
        }
      });
    }
  }

  Future<List<String>> _readDir(String dir) async {
    return (await Directory(dir).list().toList()).map((e) => e.path).toList()
      // remove the files such as `.DS_Store`.
      ..removeWhere((e) => e.split('/').last.startsWith('.'));
  }

  /// Parses the languageId and finds the main language.
  ///
  /// It is either the last language or the language followed by a exclamation
  /// mark “!”.
  /// There should only be one language with an exclamation mark.
  String _findMainLanguageName(String languageId) {
    if (!languageId.contains('+')) {
      return languageId;
    }

    if (!languageId.contains('!')) {
      return languageId.split('+').last;
    }

    final match = RegExp(r'(\w+)!').firstMatch(languageId)!;
    return match[1]!;
  }

  String _normalizeHtml(String html) => html
      .replaceAll('<', '\n<')
      .replaceAll('>', '>\n')
      .replaceAll(RegExp(r'[ \t]*[\r\n]\s*'), '\n')
      .trim();

  Object? _normalizeJson(String json) {
    try {
      return jsonDecode(json, reviver: (key, value) {
        if (value is String) {
          value = value.replaceAll('\r\n', '\n');
        }
        return value;
      });
    } catch (_) {
      throw ArgumentError('This json input cannot be normalized');
    }
  }

  List<dynamic> _simplifyAst(List<Node> nodes) {
    return nodes.map((node) {
      if (node is Container) {
        return [node.type, _simplifyAst(node.children)];
      }
      if (node is Token) {
        return [node.type, node.text];
      }

      if (node is Text) {
        return node.text;
      }
    }).toList()
      ..removeWhere((e) => e is String && e.trim().isEmpty);
  }
}

class TestSuite {
  const TestSuite(this.languageId, this.files);

  /// LanguageIdentifier could contain more than one language names.
  final String languageId;
  final List<String> files;
}
