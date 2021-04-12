extension DynamicExtension on dynamic {

  ///enum 문자열변환 확장
  ///
  /// Example:
  /// ```dart
  /// TODAY.MONDAY.enumToString // 'MONDAY'
  /// ```
  enumToString(){
    return this.toString().split('.').last;
  }

}