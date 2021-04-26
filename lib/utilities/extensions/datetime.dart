

import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {

  /// 기준 : 2021년 4월 17일 오후 3시 55분 20초
  /// value.toFormatString('y') // '2021년'
  /// value.toFormatString('yMMMM') // '2021년 4월'
  /// value.toFormatString('yMMMMd') // '2021년 4월 17일'
  /// value.toFormatString('yMMMMEEEEd') // '2021년 4월 17일 토요일'
  /// value.toFormatString('yMMMMEEEEd a hh:mm') // '2021년 4월 17일 토요일 오후 3:55
  /// value.toFormatString('yMMMMEEEd a hh:mm') // '2021년 4월 17일 토 오후 3:55
  /// value.toFormatString('yMMMMEEEEd HH:mm') // '2021년 4월 17일 토요일 15:55'
  /// 
  /// value.toFormatString('yyyy-MM-DD') // '2021-04-17'
  /// value.toFormatString('yyyy-MM') // '2021-04'
  /// value.toFormatString('yyyy') // '2021'
  /// value.toFormatString('HH:mm:ss') // '15:55:20'
  /// value.toFormatString('HH:mm') // '15:55'
  /// value.toFormatString('HH') // '15'

  /// 날짜 포맷
  ///
  /// Example:
  /// ```dart
  /// datetimeA.toFullDateTimeString(); // 2021년 4월 26일 월요일 오전 11:39:12
  /// ```
  String toFullDateTimeString() {
    return DateFormat('yMMMMEEEEd').add_jms().format(this.toLocal());
  }

  /// 날짜 포맷
  ///
  /// Example:
  /// ```dart
  /// datetimeA.toFullDateString1(); // 2021년 4월 26일 월요일
  /// ```
  String toFullDateString1() {
    return DateFormat('yMMMMEEEEd').format(this.toLocal());
  }

  /// 날짜 포맷
  ///
  /// Example:
  /// ```dart
  /// datetimeA.toFullDateString2(); // 2021년 4월 26일
  /// ```
  String toFullDateString2() {
    return DateFormat('yMMMMd').format(this.toLocal());
  }


  /// 날짜 포맷
  ///
  /// Example:
  /// ```dart
  /// datetimeA.toFullDateString3(); // 2021.04.26
  /// ```
  String toFullDateString3() {
    return DateFormat('yyyy.MM.dd').format(this.toLocal());
  }

  /// 날짜 포맷
  ///
  /// Example:
  /// ```dart
  /// datetimeA.toDateString(); // 4월 26일
  /// ```
  String toDateString() {
    return DateFormat('MMMMd').format(this.toLocal());
  }

  /// 시간 포맷
  ///
  /// Example:
  /// ```dart
  /// datetimeA.toTimestampString1(); // 오전 11:39
  /// ```
  String toTimestampString1() {
    return DateFormat('jm').format(this.toLocal());
  }

  /// 시간 포맷
  ///
  /// Example:
  /// ```dart
  /// datetimeA.toTimestampString2(); // 11:39
  /// ```
  String toTimestampString2() {
    return DateFormat('HH:mm').format(this.toLocal());
  }

  /// 날짜 비교
  ///
  /// Example:
  /// ```dart
  /// datetimeA.isSameDate(datetimeB); // true
  /// ```
  bool isSameDate(DateTime other) {
    return this.year == other.year &&
        this.month == other.month &&
        this.day == other.day;
  }

}