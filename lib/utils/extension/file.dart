

import 'dart:io';
import 'package:flutter_common_app/utils/extension/extension.dart';

extension CustomFileExtension on File {

  /// 
  ///
  /// Example:
  /// ```dart
  /// 
  /// ```
  getFileSize({int decimals = 2}) {
    int bytes = this.lengthSync();
    return bytes.bytesToString(decimals: decimals);
  }
}