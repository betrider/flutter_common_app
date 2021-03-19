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
  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  ///스크린 사이즈 세로길이 가져오기
  double screenHeight(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).height / dividedBy;
  }

  ///스크린 사이즈 가로길이 가져오기
  double screenWidth(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).width / dividedBy;
  }
}