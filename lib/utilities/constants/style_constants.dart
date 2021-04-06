import 'package:flutter_common_app/index.dart';

const String _fontFamily = AppFontFamily.notoSans;

class AppStyle {
  AppStyle._();

  ///메인 타이틀
  static const mainTitleTextStyle1 = TextStyle(
    fontSize: 18,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    color: AppColor.titleColor
  );

  ///서브 타이틀
  static const subtitleTextStyle1 = TextStyle(
    fontSize: 15,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    color: AppColor.subTitleColor
  );
}
