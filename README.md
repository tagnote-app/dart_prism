A syntax highlighting library written in Dart, ported from
[PrismJS](https://github.com/PrismJS/prism).

## Usage

```dart
import 'package:dart_prism/dart_prism.dart';

void main() {
  final prism = Prism();

  // Parse text to AST nodes.
  final nodes = prism.parse('const name = "dart"', 'dart');

  // Render to an HTML string.
  final html = nodes.toHtml();

  print(html);
}
```

## Development Tips

### Update language proto files

```bash
./tool/update_languages.sh
```

### Test coverage and update the per-test results

Updating test cases and stats when changing the implementation:

```bash
dart tool/update_test_files.dart
```

It will update the test case files and output the test summary to
`test_cases_stats.txt`.
