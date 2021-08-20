import 'package:flutter_common_app/index.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:images_picker/images_picker.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

// 앱이 구동중인 플랫폼을 확인
// GetPlatform.isAndroid
// GetPlatform.isIOS
// GetPlatform.isMacOS
// GetPlatform.isWindows
// GetPlatform.isLinux
// GetPlatform.isFuchsia

/// 가로사이즈
// Get.width
/// 세로사이즈
// Get.height

/// Navigator의 현재 context를 제공
// Get.context

/// 코드 어디에서든지 foreground에서 snackbar/dialog/bottomsheet의 context를 제공
// Get.overlayContext

/// 장치의 가로 모드 확인
// context.isLandscape()

/// 장치의 세로 모드 확인
// context.isPortrait()

enum UrlType {
  INTERNET,
  TEL,
  SMS,
  EMAIL,
}

extension UrlTypeExtension on UrlType {
  String get name {
    switch (this) {
      case UrlType.INTERNET:
        return "인터넷";
      case UrlType.TEL:
        return "전화번호";
      case UrlType.SMS:
        return "문자";
      case UrlType.EMAIL:
        return "이메일";
    }
  }
}

/// URL연결(인터넷,전화,문자,이메일)
///
/// ```dart
/// url:'www.naver.com', urlType:UrlType.INTERNET -> 'https://www.naver.com'
/// url:'01012345678', urlType:UrlType.TEL -> 'tel:01012345678'
/// url:'01023456789', urlType:UrlType.SMS, body:'내용 -> 'sms:01023456789?body=내용'
/// url:'www.naver.com', urlType:UrlType.EMAIL, subject:'제목', body:'내용' -> 'mailto:www.naver.com?subject=제목&body=내용'
/// ```
///
Future<void> urlLauncher({
  required String url,
  required UrlType urlType,

  ///이메일 제목
  String subject = '제목 입력부분입니다.',

  ///이메일&문자 내용
  String body = '내용 입력부분입니다.',
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
      await launch(
          'sms:$url?body=$body'); //'sms:+39 348 060 888?body=hello%20there';
      break;
    case UrlType.EMAIL:
      await launch(
          'mailto:$url?subject=$subject&body=$body'); //<email address>?subject=<subject>&body=<body>
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

/// 환경설정정보 가져오기
///
/// Example
/// ```dart
/// print(getGlobalConfig.getValue('showDebug'));
/// print(getGlobalConfig.getValue('showQuery'));
/// ```
GlobalConfiguration get getGlobalConfig => GlobalConfiguration();

enum ImageSource {
  //갤러리
  gallery,
  //카메라
  camera
}

/// 이미지 가지고오기(단일모드)
///
/// ImageSource.camera : 사진
///
/// ImageSource.gallery : 갤러리
///
Future<String> getImagePath({
  required ImageSource imageSource,
  int aspectRatioX = 1,
  int aspectRatioY = 1,
}) async {
  List<Media>? pickedFile;

  if (imageSource == ImageSource.gallery) {
    pickedFile = await ImagesPicker.pick(
      count: 1,
      pickType: PickType.image,
      language: Language.System,
      cropOpt: CropOption(
        aspectRatio: CropAspectRatio(aspectRatioX, aspectRatioY),
      ),
    );
  } else {
    pickedFile = await ImagesPicker.openCamera(
      pickType: PickType.image,
      maxTime: 15, // record video max time
      language: Language.System,
      cropOpt: CropOption(
        aspectRatio: CropAspectRatio(aspectRatioX, aspectRatioY),
      ),
    );
  }

  if (pickedFile == null) return '';

  return pickedFile[0].path;
}

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

/// Snackbar
void showSnackbar({
  String title = '제목',
  String subTitle = '내용',
  SnackPosition? snackPosition,
}) {
  Get.snackbar(
    title,
    subTitle,
    snackPosition: SnackPosition.TOP,
  );
}

// /// 메시지 - 스낵바
// ///
// ///  * [content], 메시지 내용
// ///  * [actionLabel], 버튼 이름
// ///  * [action], 버튼 이벤트
// ///
// void showSnackBar({
//   required String content,
//   String? actionLabel,
//   void Function()? action,
// }) {
//   ScaffoldMessenger.of(Get.overlayContext!).showSnackBar(SnackBar(
//     content: Text(content),
//     duration: Duration(seconds: 1),
//     action: actionLabel != null
//         ? SnackBarAction(
//             label: actionLabel,
//             onPressed: action!,
//           )
//         : null,
//   ));
// }

/// Dialog

/// 메시지 - Ok 다이얼로그
///
///  * [title], 메시지 제목
///  * [message], 메시지 내용
///  * [okLabel], OK 버튼 명칭 = '네'
///  * [barrierDismissible], 가장자리 클릭 가능 여부
///
Future<OkCancelResult> showOkDialog({
  String title = '제목',
  String message = '내용',
  String okLabel = '네',
  bool barrierDismissible = true,
}) {
  return showOkAlertDialog(
    barrierDismissible: barrierDismissible,
    context: Get.overlayContext!,
    title: title,
    message: message,
    okLabel: okLabel,
  );
}

/// 메시지 - Ok & Cancle 다이얼로그
///
///  * [title], 메시지 제목
///  * [message], 메시지 내용
///  * [okLabel], OK 버튼 명칭 = '네'
///  * [cancelLabel], NO 버튼 명칭 = '아니오'
///  * [barrierDismissible], 가장자리 클릭 가능 여부
///
Future<OkCancelResult> showOkCancelDialog({
  String title = '제목',
  String message = '내용',
  String okLabel = '네',
  String cancelLabel = '아니오',
  bool barrierDismissible = true,
}) {
  return showOkCancelAlertDialog(
    barrierDismissible: barrierDismissible,
    context: Get.overlayContext!,
    title: title,
    message: message,
    okLabel: okLabel,
    cancelLabel: cancelLabel,
  );
}

///메시지 - Custom Alert Dialog
void showCustomAlertDialog({Widget? widget}) {
  if (widget == null)
    widget = Container(
      height: 100,
      child: Center(
        child: Text('Dialog'),
      ),
    );

  Get.dialog(
    Dialog(child: widget),
  );
}

///BottomSheet

///메시지 - Custom Bottom Modal Sheet
Future<T?> showCustomBottomSheet<T>({
  required CustomShowBottomSheetWidget widget,
}) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: const Radius.circular(10.0),
      topRight: const Radius.circular(10.0),
    )),
    context: Get.overlayContext!,
    builder: (context) {
      return widget;
    },
  );
}

//멀티선택 달력
Future<void> showMultipleCalendar({
  List<DateTime>? selectableDates,
  List<DateTime>? selectDates,
  required void Function(List<DateTime> datetime) onMultipleComplete,
  int? maxCount,
}) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    context: Get.overlayContext!,
    builder: (BuildContext context) {
      return CustomCalendar.multipleMonth(
        selectableDates: selectableDates,
        selectDates: selectDates,
        onMultipleComplete: onMultipleComplete,
        maxCount: maxCount,
      );
    },
  );
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
  if (value == null || value == '') return _errorBuilderWidget(size, size);

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
          errorBuilder: (context, error, stackTrace) =>
              _errorBuilderWidget(size, size));
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
Widget getImageWidget(
  dynamic value, {
  BoxFit boxfit = BoxFit.fill,
  double width = 50,
  double height = 50,
}) {
  if (value == null || value == '') return _errorBuilderWidget(width, height);

  if (value is String) {
    if (value.contains('assets')) {
      return Image.asset(
        value,
        width: width,
        height: height,
        fit: boxfit,
        errorBuilder: (context, error, stackTrace) =>
            _errorBuilderWidget(width, height),
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
            _errorBuilderWidget(width, height),
      );
    } else {
      return Image.network(
        value,
        width: width,
        height: height,
        fit: boxfit,
        errorBuilder: (context, error, stackTrace) =>
            _errorBuilderWidget(width, height),
      );
    }
  } else {
    return value;
  }
}

///이미지 가져오기 오류시 불러올 이미지
Widget _errorBuilderWidget(double width, double height) {
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

/// 버전체크 메서드
void checkVersion() async {
  final newVersion = NewVersion(
    //PlayStore 주소
    androidId: 'com.dingdongu.duflutter',
    //AppStore 주소
    iOSId: 'com.dingdongu.duflutter',
  );

  final status = await newVersion.getVersionStatus();

  String minVersion = '1.1.2';
  // String lastedVersion = '1.1.2';
  String localVersion = status!.localVersion;
  String storeVersion = status.storeVersion;
  // String releaseNotes = status.releaseNotes!;

  print('minVersion : $minVersion');
  // print('lastedVersion : $lastedVersion');
  print('localVersion : $localVersion');
  print('storeVersion : $storeVersion');
  // print('releaseNotes : $releaseNotes');

  bool canIgnoreUpdate = true; //업데이트 무시 가능 여부

  if (Version.parse(localVersion) <= Version.parse(minVersion)) {
    canIgnoreUpdate = false;
  }

  print(canIgnoreUpdate);

  if (Version.parse(localVersion) != Version.parse(storeVersion)) {
    newVersion.showUpdateDialog(
      allowDismissal: canIgnoreUpdate,
      context: Get.context!,
      versionStatus: status,
      dialogTitle: '업데이트',
      dialogText:
          '최신 업데이트가 있습니다. 업데이트하시겠습니까? 로컬버전:$minVersion, 스토어버전:$storeVersion ',
      updateButtonText: '업데이트',
      dismissButtonText: '나중에',
      dismissAction: () {
        Get.back();
      },
    );
  }
}
