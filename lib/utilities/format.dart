import 'package:flutter_common_app/index.dart';

///특수포맷 변환관련 클래스
///
///화폐, 전화번호, 날짜
class Format{
  Format._();

  /// 화폐단위로 변환
  ///
  /// Example:
  /// ```dart
  /// Format.toCurrency(123456789) // '123,456,789'
  /// ```
  static String toCurrency(int param){
    return NumberFormat('###,###,###,###').format(param).replaceAll(' ', '');
  }

  /// 전화번호 형식으로 변환
  ///
  /// Example:
  /// ```dart
  /// Format.toPhoneNumber('01012344256') // '010-1234-4256'
  /// ```
  static String toPhoneNumber(String param) {
    const List<String?> areaNumberList = ['02','051','053','032','062','042','052','044','031','033','043','041','063','061','054','055','064']; //지역번호
    const List<String?> oldNumberList = ['011','012','013','014','015','016','017','018','019']; //옛날번호
    const List<String?> internetNumberList = ['010','070']; //인터넷
    const List<String?> commericialNumberList = ['1588','1644']; //상업용

    if (param.isEmpty) {
      return '';
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

}
