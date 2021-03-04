import 'package:flutter_common_app/utilities/index.dart';
extension NumberParsing on String {
  int parseInt() {
    try {
          return int.parse(this);
       } catch (e) {
          return null;
       }
  }
}