import 'package:flutter_common_app/utilities/index.dart';

class Utils {
  Utils._();

  ///디바이스 타입 가져오기
  static DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
    double deviceWidth = mediaQuery.size.shortestSide;

    if (deviceWidth > 950) {
      return DeviceScreenType.Desktop;
    }

    if (deviceWidth > 600) {
      return DeviceScreenType.Tablet;
    }

    return DeviceScreenType.Mobile;
  }

  ///스크린 사이즈 가져오기
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  ///스크린 사이즈 세로길이 가져오기
  static double screenHeight(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).height / dividedBy;
  }

  ///스크린 사이즈 가로길이 가져오기
  static double screenWidth(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).width / dividedBy;
  }

  ///URL연결
  ///
  ///사이트연결 : 'https://flutter.dev'
  ///
  ///전화연결 : 'tel:010 1234 5678'
  ///
  ///문자연결 : 'sms:010 1234 5678'
  ///
  ///이메일연결 : 'mailto:sample@naver.com?subject=제목&body=내용'
  static Future<void> urlLauncher(String url) async{
    if (await canLaunch(url)) {
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }

  ///Color -> MaterialColor 변환
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}