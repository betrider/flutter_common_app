import 'package:flutter_common_app/index.dart';

class AppColor {
  AppColor._();

  //theme color
  static MaterialColor primarySwatch = Utils.createMaterialColor(Color.fromRGBO(250, 246, 243, 1));
  static const Color accentColor = Color.fromRGBO(250, 246, 243, 1);
  static const Color barForegroundColor = Color.fromRGBO(113, 101, 103, 1);
  static const Color barBackgroundColor = Color.fromRGBO(249, 248, 235, 1);
  static const Color bodyColor = Color.fromRGBO(248, 248, 235, 1);

  //common color
  static const Color titleColor = Color(0xFF23374D);
  static const Color subTitleColor = Color(0xFF8E8E8E);
  static const Color borderColor = Color(0xFFE8E8F3);
  static const Color cardTitleColor = Color(0xFF2E4ECF);
  static const Color cardSubTitleColor = Color(0xFF8E8E8E);
}