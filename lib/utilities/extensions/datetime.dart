import 'package:intl/intl.dart';

extension DatetimeExtension on DateTime {
  /// DateTime 포맷에 맞는 문자열로 변환
  ///
  /// Example:
  /// ```dart
  /// 기준 : 2021년 4월 17일 오후 3시 55분 20초
  /// value.toFormatString('yyyy-MM-DD') // '2021-04-17'
  /// value.toFormatString('yyyy-MM') // '2021-04'
  /// value.toFormatString('yyyy') // '2021'
  /// value.toFormatString('HH:mm:ss') // '15:55:20'
  /// value.toFormatString('HH:mm') // '15:55'
  /// value.toFormatString('HH') // '15'
  /// 
  /// value.toFormatString('y') // '2021년'
  /// value.toFormatString('yMMMM') // '2021년 4월'
  /// value.toFormatString('yMMMMd') // '2021년 4월 17일'
  /// value.toFormatString('yMMMMEEEEd') // '2021년 4월 17일 토요일'
  /// value.toFormatString('yMMMMEEEEd a hh:mm') // '2021년 4월 17일 토요일 오후 3:55
  /// value.toFormatString('yMMMMEEEd a hh:mm') // '2021년 4월 17일 토 오후 3:55
  /// value.toFormatString('yMMMMEEEEd HH:mm') // '2021년 4월 17일 토요일 15:55'
  /// ```
  String? toFormatString(String pattern) {
    try {
      return new DateFormat(pattern).format(this);
    } catch (e) {
      return null;
    }
  }
}