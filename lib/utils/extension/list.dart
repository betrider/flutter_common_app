import 'dart:convert';

extension CustomListExtension<T> on List<T> {

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
  List<R> mapWithIndex<R>(R Function(T value, int index) callback) {
    List<R> result = [];
    for (int i = 0; i < this.length; i++) {
      R item = callback(this[i], i);
      result.add(item);
    }
    return result;
  }

  /// forEach 사용 시 value와 index를 가지고 올 수 있게끔 확장버전 추가
  void forEachIndexed(void Function(T value, int index) f) {
    var i = 0;
    forEach((e) => f(e, i++));
  }

  /// 리스트에 맞는 인덱스만 추출
  /// 
  /// Example:
  /// ```dart
  /// List<String> list = ['a','b','c','d','e']
  /// list.toIndexList([0,1,3]) // ['a','b','d']
  /// ```
  List<T> toIndexList(List<int> indexList) {
    List<T> result = [];
    for (int i = 0; i < indexList.length; i++) {
      result.add(this[indexList[i]]);
    }
    return result;
  }
  

}