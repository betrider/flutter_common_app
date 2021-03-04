import 'package:flutter_common_app/utilities/index.dart';

// extension Null on String {
//   String textOrEmpty() {
//     return this == null ? "" : this;
//   }

//   bool notEmpty() {
//     return this != null ? true : false;
//   }

//   String numberWithComma() {
//     return new NumberFormat('###,###,###,###')
//         .format(int.parse(this))
//         .replaceAll(' ', '');
//   }

//   String converDduFormate() {
//     return (this == null || this == "")
//         ? ""
//         : DateTime.parse(this.replaceAll(".", "")).convertDDUForamt();
//   }
// }

// extension Timestamp on DateTime {
//   String toFullDateString() {
//     return DateFormat.yMMMMEEEEd().format(this.toLocal());
//   }

//   String toFullDateTimeString() {
//     return DateFormat.yMMMMEEEEd().add_jms().format(this.toLocal());
//   }

//   String toTimestampString() {
//     return DateFormat.jm().format(this.toLocal());
//   }

//   String convertDDUForamt() {
//     if (this == null) {
//       return "";
//     }

//     return DateFormat("yyyy.MM.dd").format(this.toLocal());
//   }

//   String convertDDUFormatKorean() {
//     if (this == null) {
//       return "";
//     }
//     return DateFormat("M월 d일").format(this.toLocal());
//   }

//   String convertDDUFormatWithTime() {
//     if (this == null) {
//       return "";
//     }
//     final now = DateTime.now();
//     if (this.isSameDate(now)) {
//       return DateFormat("aaa hh:mm").format(this.toLocal());
//     } else if (this.isSameDate(now.subtract(Duration(days: 1)))) {
//       return "어제";
//     }
//     return DateFormat("yyyy.MM").format(this.toLocal());
//   }

//   bool isSameDate(DateTime other) {
//     return this.year == other.year &&
//         this.month == other.month &&
//         this.day == other.day;
//   }

//   String toChannelRoomDateFormat() {
//     var date = this.toLocal();
//     if (date == null) return "";
//     var dif = DateTime.now().day - date.day;
//     // today
//     if (dif == 0) {
//       return date.toTimestampString();
//     }
//     // yesterday
//     if (dif == 1) {
//       return LocaleKeys.common_yesterday.tr();
//     }
//     if (DateTime.now().year > date.year) {
//       return DateFormat.yMd().format(date);
//     }
//     return DateFormat.MMMd().format(date);
//   }
// }

// //리스트 동일한 값인지 비교
// bool areListsEqual(var list1, var list2) {
//   // check if both are lists
//   if (!(list1 is List && list2 is List)
//       // check if both have same length
//       ||
//       list1.length != list2.length) {
//     return false;
//   }

//   // check if elements are equal
//   for (int i = 0; i < list1.length; i++) {
//     if (list1[i] != list2[i]) {
//       return false;
//     }
//   }

//   return true;
// }
