import 'dart:convert';

extension ListExtension<T> on List<T> {
  String toJSON({Object? Function(Object? nonEncodable)? toEncodable}) {
    return jsonEncode(this, toEncodable: toEncodable);
  }
}