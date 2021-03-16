import 'dart:convert';

extension ListExtension<T> on List<T> {

  ///json형변환
  String? toJSON({Object? Function(Object? nonEncodable)? toEncodable}) {
    return jsonEncode(this, toEncodable: toEncodable);
  }
}