// import 'package:du_mobile/index.dart';
// import 'package:extended_image/extended_image.dart';

// /// 경로에 맞게 아이콘 위젯 가지고 오기
// ///
// /// Example
// /// ```
// /// value : Icon(Icons.ac_unit)
// /// value : 'assets/images/svg/setting.svg'
// /// value : DUIcons.svgSetting
// /// ```
// ///
// Widget duGetIconWidget(
//   dynamic value, {
//   double? size = 24,
//   Color? color,
// }) {
//   if (value == null || value == '')
//     return SvgPicture.asset(DUIcons.svgDefaultAlramBlue);

//   if (value is String) {
//     if (value.contains('assets/images/svg')) {
//       return SvgPicture.asset(
//         value,
//         width: size,
//         height: size,
//         color: color,
//       );
//     } else {
//       return Image.asset(
//         value,
//         width: size,
//         height: size,
//         color: color,
//         errorBuilder: (context, error, stackTrace) =>
//             SvgPicture.asset(DUIcons.svgDefaultAlramBlue),
//       );
//     }
//   } else {
//     if (value is IconData) {
//       return Icon(
//         value,
//         size: size,
//         color: color,
//       );
//     } else {
//       return value;
//     }
//   }
// }

// /// 경로에 맞게 이미지 위젯 가지고 오기
// ///
// /// Example
// /// ```
// /// value : 'assets/images/background.jpg'
// /// ```
// ///
// Widget duGetImageWidget(
//   dynamic value, {
//   BoxFit boxfit = BoxFit.fill,
//   double? width = 50,
//   double? height = 50,
// }) {
//   if (value == null || value == '')
//     return SvgPicture.asset(
//       DUIcons.svgDefaultAlramBlue,
//       width: double.infinity,
//       height: height,
//     );

//   if (value is String) {
//     if (value.contains('assets')) {
//       return Image.asset(
//         value,
//         width: width,
//         height: height,
//         fit: boxfit,
//         errorBuilder: (context, error, stackTrace) => errorBuilderWidget(),
//       );
//     } else if (value.contains('/data') ||
//         value.contains('storage') ||
//         value.contains('file:') ||
//         value.contains('/private')) {
//       return Image.file(
//         File(value),
//         width: width,
//         height: height,
//         fit: boxfit,
//         errorBuilder: (context, error, stackTrace) => errorBuilderWidget(),
//       );
//     } else {
//       return DUNetworkImage(
//         value,
//         width: width,
//         height: height,
//         fit: boxfit,
//         loadStateChanged: (state) {
//           switch (state.extendedImageLoadState) {
//             case LoadState.failed:
//               return errorBuilderWidget();
//             default:
//               return null;
//           }
//         },
//       );
//     }
//   } else {
//     return value;
//   }
// }

// ///이미지 가져오기 오류시 불러올 이미지
// Widget errorBuilderWidget() {
//   return SvgPicture.asset(DUIcons.svgDefaultAlramBlue, fit: BoxFit.fill);
// }

// /// 경로에 맞게 이미지정보 가지고 오기
// ///
// /// Example
// /// ```
// /// value : 'assets/images/background.jpg'
// /// ```
// ///
// ImageProvider? duGetImage(dynamic value) {
//   if (value is String) {
//     if (value.contains('assets')) {
//       return AssetImage(value);
//     } else if (value.contains('storage') || value.contains('file:')) {
//       return FileImage(File(value));
//     } else {
//       return NetworkImage(value);
//     }
//   } else {
//     if (value is File) {
//       return FileImage(value);
//     } else {
//       return value;
//     }
//   }
// }

// Widget getImageView(String value) {
//   if (value.isEmpty) {
//     return Container();
//   }
//   ImageProvider? provider = duGetImage(value);
//   if (provider == null) {
//     return Container();
//   }

//   return Image(
//     image: provider,
//   );
// }
