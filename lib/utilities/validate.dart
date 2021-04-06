// class Validate {
//   Validate._();

//   ///이메일 형식
//   static const RegExpEMAIL = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

//   ///핸드폰번호 형식
//   static const RegExpSMARTPHONE = r'^01[0-9]{8,9}$';

//   ///일반전화번호 형식
//   static const RegExpTEL = r'^0(2|3[1-3]|4[1-4]|5[1-5]|6[1-4])[0-9]{7,8}$';

//   ///핸드폰 or 일반전화번호 형식
//   static const RegExpPHONE = r'[0-9]{8,11}$';

//   ///소문자 영문 형식
//   static const RegExpLOWERAB = r'(?=.*[a-z])';

//   ///대문자 영문 형식
//   static const RegExpUPPERAB = r'(?=.*[A-Z])';

//   ///영문 소문자 + 숫자 형식
//   static const RegExpNUMLOWERAB = r'^[\S][a-z0-9_\-=@,\.;]+$';

//   ///한글 & 영문 형식
//   static const RegExpKOEN = r'^[가-힣a-z0-9]+$';

//   ///숫자 형식
//   static const RegExpNUMBER = r'(\d+)';

//   ///특수문자 형식
//   static const RegExpSpecial = r'^[a-zA-Z0-9 ]+$';

//   ///URL 형식
//   static const RegURL = r"((http?:www\.)|(http?:\/\/)|(https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{2,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?";

//   ///이메일 체크
//   bool isEmail(String? string) {
//     if (string == null || string.isEmpty) {
//       return false;
//     }

//     const pattern = RegExpEMAIL;
//     final regExp = RegExp(pattern);

//     if (!regExp.hasMatch(string)) {
//       return false;
//     }
//     return true;
//   }

//   ///출생년도 체크
//   bool valdatorBirthYear(String? val) {
//     try {
//       final nowYear = DateTime.now().year;
//       final year = int.parse(val!);
//       return year >= 1900 && year <= nowYear;
//     } catch (e) {
//       return false;
//     }
//   }

//   ///Url 검증
//   bool checkUrl(String? value) {
//     return RegExp(RegURL).hasMatch(value!);
//   }

//   ///패스워드 검증
//   bool passValidator(String? val) {
//     final _lowerAb = RegExp(RegExpLOWERAB);
//     final _number = RegExp(RegExpNUMBER);
//     final _special = RegExp(RegExpSpecial);

//     final mixed = (_lowerAb.hasMatch(val!) ? 1 : 0) +
//         (_number.hasMatch(val) ? 1 : 0) +
//         (!_special.hasMatch(val) ? 1 : 0);

//     if (mixed != 3) return false;
//     if (val.length < 8 || val.length > 32) return false;
//     return true;
//   }

//   ///최대 문자길이 검증
//   bool checkMaxLenLimit(String? value, int? maxLen) {
//     if (value!.length > maxLen!)
//       return false;
//     else
//       return true;
//   }

//   //생일 형식 검증
//   bool isBirthday(String? dateStr) {
//     if (dateStr == null || dateStr.length != 8) return false;

//     var year = int.parse(dateStr.substring(0, 4));
//     var month = int.parse(dateStr.substring(4, 6));
//     var day = int.parse(dateStr.substring(6, 8));

//     DateTime now = DateTime.now();
//     var nowYear = now.year;

//     if (1900 > year || year > nowYear) {
//       return false;
//     } else if (month < 1 || month > 12) {
//       return false;
//     } else if (day < 1 || day > 31) {
//       return false;
//     } else if ((month == 4 || month == 6 || month == 9 || month == 11) &&
//         day == 31) {
//       return false;
//     } else if (month == 2) {
//       var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
//       if (day > 29 || (day == 29 && !isleap)) {
//         return false;
//       } else {
//         return true;
//       }
//     } else {
//       return true;
//     }
//   }
// }
