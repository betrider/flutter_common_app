import 'package:flutter_common_app/index.dart';

const String _fontFamily = AppFontFamily.notoSans;

class AppStyle {
  AppStyle._();

  /// 메인 타이틀
  ///
  /// Size : 18
  ///
  /// Weight : FontWeight.w700
  ///
  /// Color : #2D2D2D
  static const mainTitleTextStyle1 = TextStyle(
    fontSize: 18,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    color: AppColor.black_2D2D2D
  );

  /// 서브 타이틀
  ///
  /// Size : 15
  ///
  /// Weight : FontWeight.w500
  ///
  /// Color : #2D2D2D
  static const subtitleTextStyle1 = TextStyle(
    fontSize: 15,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    color: AppColor.black_2D2D2D
  );
}
