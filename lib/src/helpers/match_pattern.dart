/// The matched result.
class PatternMatch {
  PatternMatch({
    required this.start,
    required this.uncaptured,
  });

  /// The index in the string where the match starts.
  int start;

  /// The string not in capturing groups.
  ///
  /// It equals to `RegExpMatch[0]` if `lookbehind` is false,
  /// otherwise it is the text which has removed the text matched by the Prism
  /// lookbehind group.
  final String uncaptured;

  @override
  String toString() => {'start': start, 'uncaptured': uncaptured}.toString();
}

/// [start] only works when [global] is `true`.
PatternMatch? matchPattern(
  RegExp pattern,
  String text, {
  bool global = false,
  int start = 0,
  bool lookbehind = false,
}) {
  RegExpMatch? match;

  if (global) {
    final matches = pattern.allMatches(text, start);
    if (matches.isEmpty) {
      return null;
    }
    match = matches.first;
  } else {
    match = pattern.firstMatch(text);
  }

  if (match == null) {
    return null;
  }

  final matchedStart = match.start;
  final matched = <String>[];
  matched.add(match[0]!);
  if (match.groupCount > 0 && match[1] != null) {
    matched.add(match[1]!);
  }

  if (lookbehind && matched.length > 1) {
    final lookbehindLength = matched[1].length;
    return PatternMatch(
      start: matchedStart + lookbehindLength,
      uncaptured: matched[0].substring(lookbehindLength, matched[0].length),
    );
  }

  return PatternMatch(
    start: matchedStart,
    uncaptured: matched[0],
  );
}
