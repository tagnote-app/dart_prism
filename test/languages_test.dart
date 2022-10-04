import 'package:test/test.dart';

import 'helpers/test_case_runner.dart';

void main() async {
  final runner = TestRunner();
  await runner.load('./test/languages');
  runner.run();
}

class TestRunner extends TestCaseRunner {
  @override
  void runTestSuiteWrapper(description, runner) {
    group(description, runner);
  }

  @override
  void runTestFileWrapper(description, runner) {
    test(description, runner);
  }

  @override
  void runTestCase(actual, expected, _) {
    expect(actual, expected);
  }
}
