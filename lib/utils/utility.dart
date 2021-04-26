import 'package:flutter_common_app/index.dart';

  ///디바이스 타입 가져오기
  DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
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

  ///URL연결
  ///
  ///사이트연결 : 'https://flutter.dev'
  ///
  ///전화연결 : 'tel:010 1234 5678'
  ///
  ///문자연결 : 'sms:010 1234 5678'
  ///
  ///이메일연결 : 'mailto:sample@naver.com?subject=제목&body=내용'
  Future<void> urlLauncher(String url) async{
    if (await canLaunch(url)) {
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }