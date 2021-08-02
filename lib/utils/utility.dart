import 'package:flutter_common_app/index.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io';

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

enum UrlType { INTERNET, TEL, SMS, EMAIL }

/// URL연결(인터넷,전화,문자,이메일)
///
/// ```dart
/// url:'www.naver.com', urlType:UrlType.INTERNET -> 'https://www.naver.com'
/// url:'01012345678', urlType:UrlType.TEL -> 'tel:01012345678'
/// url:'01023456789', urlType:UrlType.SMS -> 'sms:01023456789'
/// url:'www.naver.com', urlType:UrlType.EMAIL -> 'mailto:www.naver.com'
/// ```
///
Future<void> urlLauncher({
  required String url,
  required UrlType urlType,
}) async {
  switch (urlType) {
    case UrlType.INTERNET:
      await launch(
        'https://$url',
      );
      break;
    case UrlType.TEL:
      await launch('tel:$url');
      break;
    case UrlType.SMS:
      await launch('sms:$url');
      break;
    case UrlType.EMAIL:
      await launch('mailto:$url');
      break;
  }
}

/// 파일 가지고오기(허용파일)
///
/// ImageSource.any : 전부
///
/// ImageSource.media : 미디어
///
/// ImageSource.image : 사진
///
/// ImageSource.video : 비디오
///
/// ImageSource.audio : 오디오
///
/// ImageSource.custom : 커스텀
///
Future<String?> getFilePath({required FileType fileType}) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: fileType,
  );

  return result == null ? null : result.files.single.path;
}

/// 이미지 가지고오기(모드)
///
/// ImageSource.camera : 사진
///
/// ImageSource.gallery : 갤러리
///
Future<String> getImagePath({required ImageSource imageSource}) async {
  XFile? pickedFile =
      await ImagePicker().pickImage(source: imageSource, imageQuality: 100);

  if (pickedFile == null) return '';

  return pickedFile.path;
}

/// 메시지 - 토스트
///
///  * [message], 메시지 내용
///  * [backgroundColor], 백그라운드 색상
///  * [textColor], 텍스트 색상
///  * [textColor], 폰트 사이즈
///
Future<bool?> showToast({
  required String message,
  Color? backgroundColor,
  Color? textColor,
  double fontSize = 16,
}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: backgroundColor,
    textColor: textColor,
    fontSize: fontSize,
  );
}

/// 메시지 - 스낵바
///
///  * [content], 메시지 내용
///  * [actionLabel], 버튼 이름
///  * [action], 버튼 이벤트
///
void showSnackBar({
  required String content,
  String? actionLabel,
  void Function()? action,
}) {
  ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
    content: Text(content),
    duration: Duration(seconds: 1),
    action: actionLabel != null
        ? SnackBarAction(
            label: actionLabel,
            onPressed: action!,
          )
        : null,
  ));
}

///다이얼로그

/// 전역에서 사용가능
///
/// 로딩 표시
void showLoading({Color? progressIndicatorColor, Color? overlayColor}) {
  FlutterOverlayLoader.show(
    Get.overlayContext!,
    progressIndicator: progressIndicatorColor == null
        ? null
        : CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(progressIndicatorColor),
          ),
    overlayColor: overlayColor,
  );
}

/// 전역에서 사용가능
///
/// 로딩 숨기기
void hideLoading() {
  FlutterOverlayLoader.hide();
}

///위젯

/// 경로에 맞게 아이콘 위젯 가지고 오기
///
/// Example
/// ```
/// value : Icon(Icons.ac_unit)
/// value : 'assets/images/svg/setting.svg'
/// value : DUIcons.svgSetting
/// ```
///
Widget getIconWidget(
  dynamic value, {
  double size = 24,
  Color? color,
}) {
  if (value == null || value == '') return errorBuilderWidget(size,size);

  if (value is String) {
    if (value.contains('assets/images/svg')) {
      return SvgPicture.asset(
        value,
        width: size,
        height: size,
        color: color,
      );
    } else {
      return Image.asset(value,
          width: size,
          height: size,
          color: color,
          errorBuilder: (context, error, stackTrace) => errorBuilderWidget(size,size));
    }
  } else {
    if (value is IconData) {
      return Icon(
        value,
        size: size,
        color: color,
      );
    } else {
      return value;
    }
  }
}

/// 경로에 맞게 이미지 위젯 가지고 오기
///
/// Example
/// ```
/// value : 'assets/images/background.jpg'
/// ```
///
Widget duGetImageWidget(
  dynamic value, {
  BoxFit boxfit = BoxFit.fill,
  double width = 50,
  double height = 50,
}) {
  if (value == null || value == '') return errorBuilderWidget(width, height);

  if (value is String) {
    if (value.contains('assets')) {
      return Image.asset(
        value,
        width: width,
        height: height,
        fit: boxfit,
        errorBuilder: (context, error, stackTrace) =>
            errorBuilderWidget(width, height),
      );
    } else if (value.contains('/data') ||
        value.contains('storage') ||
        value.contains('file:') ||
        value.contains('/private')) {
      return Image.file(
        File(value),
        width: width,
        height: height,
        fit: boxfit,
        errorBuilder: (context, error, stackTrace) =>
            errorBuilderWidget(width, height),
      );
    } else {
      return Image.network(
        value,
        width: width,
        height: height,
        fit: boxfit,
        errorBuilder: (context, error, stackTrace) =>
            errorBuilderWidget(width, height),
      );
    }
  } else {
    return value;
  }
}

///이미지 가져오기 오류시 불러올 이미지
Widget errorBuilderWidget(double width, double height) {
  return SizedBox(
    width: width,
    height: height,
    child: ColoredBox(
      color: Colors.grey,
    ),
  );
}

/// 경로에 맞게 이미지정보 가지고 오기
///
/// Example
/// ```
/// value : getImage('assets/images/background.jpg')
/// ```
///
ImageProvider? getImage(dynamic value) {
  if (value is String) {
    if (value.contains('assets')) {
      return AssetImage(value);
    } else if (value.contains('storage') || value.contains('file:')) {
      return FileImage(File(value));
    } else {
      return NetworkImage(value);
    }
  } else {
    if (value is File) {
      return FileImage(value);
    } else {
      return value;
    }
  }
}
