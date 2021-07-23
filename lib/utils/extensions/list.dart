import 'dart:convert';

extension ListExtension<T> on List<T> {

  /// Converts this list into a JSON string.
  ///
  /// Use optional parameter [toEncodable] to convert types that are not a
  /// number, boolean, string, null, list or a map with string keys.
  ///
  /// See [jsonEncode].
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3].toJSON(); // [1,2,3]
  /// ```
  String? toJSON({Object? Function(Object? nonEncodable)? toEncodable}) {
    return jsonEncode(this, toEncodable: toEncodable);
  }

  /// map 사용 시 value와 index를 가지고 올 수 있게끔 확장버전 추가
  List<R> mapWithIndex<R>(R Function(T, int i) callback) {
    List<R> result = [];
    for (int i = 0; i < this.length; i++) {
      R item = callback(this[i], i);
      result.add(item);
    }
    return result;
  }
}