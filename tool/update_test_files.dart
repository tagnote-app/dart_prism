import 'dart:convert';
import 'dart:io';

import 'package:dart_prism/src/helpers/extensions.dart';

import '../test/helpers/test_case_runner.dart';

final rootDir = File(Platform.script.path).parent.parent.path;

Future<void> main() async {
  final runner = _UpdateFileRunner();
  await runner.load('$rootDir/tool/prismjs/tests/languages');
  runner.run();

  // Output stats.
  final successRate =
      (100 * runner.totalSuccess / runner.totalCases).toStringAsFixed(1);
  final statsOutput = '$rootDir/tool/test_cases_stats.txt';
  final statsContent = [
    'Total cases: ${runner.totalCases}',
    'Total success: ${runner.totalSuccess}',
    'Total fail: ${runner.failedFiles.length}',
    'Success rate: $successRate%',
    '----------',
    'Failed files:',
    '',
    ...runner.failedFiles,
  ].join('\n');

  File(statsOutput).writeAsStringSync(statsContent);
}

class _UpdateFileRunner extends TestCaseRunner {
  int totalCases = 0;
  int totalSuccess = 0;
  List<String> failedFiles = [];

  @override
  void runTestSuiteWrapper(description, runner) {
    print('Checking $description...');
    runner();
  }

  @override
  void runTestFileWrapper(description, runner) {
    print('\t$description');
    runner();
  }

  @override
  void runTestCase(actual, expected, testCase) {
    totalCases++;

    if (actual == expected) {
      totalSuccess++;
    } else {
      if (!testCase.file.endsWith('.html.test')) {
        actual = (jsonDecode(actual) as List).toPrettyString();
      }

      testCase = testCase.updateExpected(actual);
      final outputPath = '$rootDir/test/languages/${testCase.file}';
      File(outputPath).writeAsStringSync(testCase.print());
      failedFiles.add(testCase.file);
    }
  }
}
