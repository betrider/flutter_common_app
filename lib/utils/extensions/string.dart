extension StringExtension on String {

  /// 전화번호 형식으로 변환
  ///
  /// Example:
  /// ```dart
  /// '01012344256'.toPhoneNumber(); // '010-1234-4256'
  /// ```
  String toPhoneNumber(String param) {
    const List<String?> areaNumberList = ['02','051','053','032','062','042','052','044','031','033','043','041','063','061','054','055','064']; //지역번호
    const List<String?> oldNumberList = ['011','012','013','014','015','016','017','018','019']; //옛날번호
    const List<String?> internetNumberList = ['010','070']; //인터넷
    const List<String?> commericialNumberList = ['1588','1644']; //상업용

    if (param.isEmpty) {
      return "";
    }

    if (param.length >= 2 && areaNumberList.contains(param.substring(0, 2))) {
      if (param.length <= 6) {
        return param.substring(0, 2) + '-' + param.substring(2, param.length);
      } else {
        return param.substring(0, 2) +
            '-' +
            param.substring(2, 6) +
            '-' +
            param.substring(6, param.length);
      }
    } else if (areaNumberList.contains(param.substring(0, 3))) {
      if (param.length <= 6) {
        return param.substring(0, 3) + '-' + param.substring(3, param.length);
      } else {
        return param.substring(0, 3) +
            '-' +
            param.substring(3, 6) +
            '-' +
            param.substring(6, param.length);
      }
    } else if (oldNumberList.contains(param.substring(0, 3))) {
      if (param.length <= 6) {
        return param.substring(0, 3) + '-' + param.substring(3, param.length);
      } else {
        return param.substring(0, 3) +
            '-' +
            param.substring(3, 6) +
            '-' +
            param.substring(6, param.length);
      }
    } else if (internetNumberList.contains(param.substring(0, 3))) {
      if (param.length <= 7) {
        return param.substring(0, 3) + '-' + param.substring(3, param.length);
      } else {
        return param.substring(0, 3) +
            '-' +
            param.substring(3, 7) +
            '-' +
            param.substring(7, param.length);
      }
    } else if (commericialNumberList.contains(param.substring(0, 4))) {
      return param.substring(0, 4) + '-' + param.substring(4, param.length);
    } else {
      return param;
    }
  }
  
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