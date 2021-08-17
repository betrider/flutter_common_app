import 'package:flutter_common_app/index.dart';
import 'package:images_picker/images_picker.dart';
import 'dart:io';

// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

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
})  async {
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
      await launch('sms:$url?body=$body'); //'sms:+39 348 060 888?body=hello%20there';
      break;
    case UrlType.EMAIL:
      await launch('mailto:$url?subject=$subject&body=$body'); //<email address>?subject=<subject>&body=<body>
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

/// 메시지 - Ok 다이얼로그
///
///  * [title], 메시지 제목
///  * [message], 메시지 내용
///  * [okLabel], OK 버튼 명칭 = '네'
///
Future<OkCancelResult> duShowOkAlertDialog({
  String? title = '제목',
  String? message = '내용',
  String? okLabel = '네',
  bool? barrierDismissible,
}) {
  return showOkAlertDialog(
    barrierDismissible: barrierDismissible ?? true,
    context: Get.context!,
    title: title,
    message: message,
    okLabel: okLabel,
  );
}

///메시지 - Ok & Cancle 다이얼로그
///
///  * [title], 메시지 제목
///  * [message], 메시지 내용
///  * [okLabel], OK 버튼 명칭 = '네'
///  * [cancelLabel], NO 버튼 명칭 = '아니오'
///
Future<OkCancelResult> duShowOkCancelAlertDialog({
  String? title = '제목',
  String? message = '내용',
  String? okLabel = '네',
  String? cancelLabel = '아니오',
  bool? barrierDismissible,
}) {
  return showOkCancelAlertDialog(
    barrierDismissible: barrierDismissible ?? true,
    context: Get.context!,
    title: title,
    message: message,
    okLabel: okLabel,
    cancelLabel: cancelLabel,
  );
}

///메시지 - Confirm 다이얼로그
///
///  * [title], 메시지 제목
///  * [message], 메시지 내용
///  * [actions], 선택요소 모음
///  * [okLabel], OK 버튼 명칭 = '네'
///  * [cancelLabel], NO 버튼 명칭 = '아니오'
///
Future<T?> duShowConfirmationDialog<T>({
  String? title = '제목',
  String? message = '내용',
  List<AlertDialogAction<T>> actions = const [],
  String? okLabel = '네',
  String? cancelLabel = '아니오',
}) {
  return showConfirmationDialog(
    context: Get.context!,
    title: title!,
    message: message,
    actions: actions,
    okLabel: okLabel,
    cancelLabel: cancelLabel,
  );
}

//바텀시트

///메시지 - Bottom Modal Sheet 다이얼로그
///
///  * [title], 메시지 제목
///  * [message], 메시지 내용
///  * [actions], 선택요소 모음
///
Future<T?> customShowBottomSheet<T>({required CustomShowBottomSheetWidget widget}) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(10.0),
        topRight: const Radius.circular(10.0),
      )),
      context: Get.context!,
      builder: (context) {
        return widget;
      });
}

///단일선택 달력
Future<void> customShowSingleCalendar({
  List<DateTime>? selectableDates,
  List<DateTime>? selectDates,
  required void Function(DateTime datetime) onSingleComplete,
}) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    context: Get.context!,
    builder: (BuildContext context) {
      return CustomCalendar.singleMonth(
          selectableDates: selectableDates,
          selectDates: selectDates,
          onSingleComplete: onSingleComplete);
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
    context: Get.context!,
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
Widget getImageWidget(
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

/// 버전체크 메서드
void duCheckVersion() async {
    
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

    if(Version.parse(localVersion) <= Version.parse(minVersion)){
      canIgnoreUpdate = false;
    }

    print(canIgnoreUpdate);

    if(Version.parse(localVersion) != Version.parse(storeVersion)){
      newVersion.showUpdateDialog(
        allowDismissal: canIgnoreUpdate,
        context: Get.context!,
        versionStatus: status,
        dialogTitle: '업데이트',
        dialogText: '최신 업데이트가 있습니다. 업데이트하시겠습니까? 로컬버전:$minVersion, 스토어버전:$storeVersion ',
        updateButtonText: '업데이트',
        dismissButtonText: '나중에',
        dismissAction: () {
          Get.back();
        },
      );
    }
  } 