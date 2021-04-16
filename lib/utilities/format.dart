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

  /// HH:mm:ss 시간형식으로 변환
  ///
  /// Example:
  /// ```dart
  /// Format.toTimeA(now) // '15:11:20'
  /// ```
  static String toTimeA(DateTime param){
    return DateFormat("HH:mm:ss").format(param);
  }

  /// HH:mm 시간형식으로 변환
  ///
  /// Example:
  /// ```dart
  /// Format.toTimeB(now) // '15:11'
  /// ```
  static String toTimeB(DateTime param){
    return DateFormat("HH:mm").format(param);
  }

  /// HH 시간형식으로 변환
  ///
  /// Example:
  /// ```dart
  /// Format.toTimeC(now) // '15'
  /// ```
  static String toTimeC(DateTime param){
    return DateFormat("HH").format(param);
  }

  /// yyyy-MM-DD 날짜형식으로 변환
  ///
  /// Example:
  /// ```dart
  /// Format.toDateA(now) // '2021-01-01'
  /// ```
  static String toDateA(DateTime param){
    return DateFormat("yyyy-MM-DD").format(param);
  }

  /* 
  I/flutter (26720): 2021년
  I/flutter (26720): 2021년 4월
  I/flutter (26720): 2021년 4월 16일
  I/flutter (26720): 2021년 4월 16일 금요일
  I/flutter (26720): 2021.04.16(금) 오후 2:43
  I/flutter (26720): 2021.04.16(금요일) 오후 2:43
  I/flutter (26720): 2021.04.16(금요일) 14:43
  
  var aa = DateTime.now();
  print(DateFormat('y').format(aa));
  print(DateFormat('yMMMM').format(aa));
  print(DateFormat('yMMMMd').format(aa));
  print(DateFormat('yMMMMEEEEd').format(aa));
  print(DateFormat('yyyy.MM.dd(EEE)').addPattern('jm').format(aa));
  print(DateFormat('yyyy.MM.dd(EEEE)').addPattern('jm').format(aa));
  print(DateFormat('yyyy.MM.dd(EEEE) HH:mm').format(aa)); */

}
