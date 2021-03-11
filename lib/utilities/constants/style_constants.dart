import 'package:flutter_common_app/utilities/index.dart';

const String _fontFamily = AppFontFamily.notoSans;

class AppStyle {
  AppStyle._();

  ///메인 타이틀
  static const kMainTitleTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
  );

  ///타이틀
  static const kTitleTextStyle = TextStyle(
      fontSize: 18, fontFamily: _fontFamily, fontWeight: FontWeight.w700);

  ///서브 타이틀
  static const kSubtitleTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    fontFamily: _fontFamily,
  );
}
