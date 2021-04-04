import 'package:flutter_common_app/utilities/index.dart';

const String _fontFamily = AppFontFamily.notoSans;

class AppStyle {
  AppStyle._();

  ///메인 타이틀
  static const mainTitleTextStyle1 = TextStyle(
    fontSize: 20,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    color: AppColor.titleColor
  );

  ///서브 타이틀
  static const subtitleTextStyle1 = TextStyle(
    fontSize: 18,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    color: AppColor.subTitleColor
  );

  ///서브 타이틀2
  static const subtitleTextStyle2 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
    color: AppColor.subTitleColor
  );

  ///서브 타이틀3
  static const subtitleTextStyle3 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    fontFamily: _fontFamily,
    color: AppColor.subTitleColor
  );
}
