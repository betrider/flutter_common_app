extension StringExtension on String {
  
  /// Parses string and returns integer value.
  ///
  /// You can set an optional [radix] to specify the numeric base.
  /// If no [radix] is set, it will use the decimal system (10).
  ///
  /// Returns `null` if parsing fails.
  ///
  /// Example:
  /// ```dart
  /// '2'.toInt();     // 2
  /// 'invalid'.toInt(); // null
  /// ```
  int? toInt({int radix = 10}) {
    try {
      return int.parse(this, radix: radix);
    } catch (error) {
      return null;
    }
  }

  /// Parses string and return double value.
  ///
  /// Returns `null` if parsing fails.
  ///
  /// Example:
  /// ```dart
  /// '2.1'.toDouble();     // 2.1
  /// 'invalid'.toDouble(); // null
  /// ```
  double? toDouble() {
    try {
      return double.parse(this);
    } catch (error) {
      return null;
    }
  }

  /// Searches the string for the first occurrence of a [pattern] and returns
  /// everything after that occurrence.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// 'value=1'.allAfter('=');                 // '1'
  /// 'i like turtles'.allAfter('like')        // ' turtles'
  /// 'i   like cats'.allAfter(RegExp('\\s+')) // 'like cats'
  /// ```
  String allAfter(Pattern pattern) {
    var matchIterator = pattern.allMatches(this).iterator;

    if (matchIterator.moveNext()) {
      var match = matchIterator.current;
      var length = match.end - match.start;
      return substring(match.start + length);
    }
    return '';
  }

  /// Searches the string for the last occurrence of a [pattern] and returns
  /// everything before that occurrence.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// 'value=1'.allBefore('=');          // 'value'
  /// 'i like turtles'.allBefore('like') // 'i '
  /// ```
  String allBefore(Pattern pattern) {
    var matchIterator = pattern.allMatches(this).iterator;

    Match? match;
    while (matchIterator.moveNext()) {
      match = matchIterator.current;
    }

    if (match != null) {
      return substring(0, match.start);
    }
    return '';
  }

  /// Searches the string for the first occurrence of [startPattern] and the
  /// last occurrence of [endPattern]. It returns the string between that
  /// occurrences.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// 'i like turtles'.allBetween('i ', ' turtles') // 'like'
  /// ```
  String allBetween(Pattern startPattern, Pattern endPattern) {
    return allAfter(startPattern).allBefore(endPattern);
  }

}