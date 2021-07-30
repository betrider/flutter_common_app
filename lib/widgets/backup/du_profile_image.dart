// import 'package:du_mobile/index.dart';

// ///

// /// 사진 업로드 변경 후 이벤트(파일경로)
// typedef OnChanged = void Function(String filePath)?;

// class DUProfileImage extends StatelessWidget {
//   /// 프로필 이미지 원형 104사이즈
//   DUProfileImage.circle104({
//     required String imagePath,
//     required OnChanged onChanged,
//     bool showCameraIcon = true,
//     String? name,
//   }) : _widget = _Circle104(
//           imagePath: imagePath,
//           onChanged: onChanged!,
//           showCameraIcon: showCameraIcon,
//           name: name,
//         );

//   /// 프로필 이미지 사각형 96사이즈
//   DUProfileImage.square96({
//     required String imagePath,
//     required OnChanged onChanged,
//     BorderRadius borderRadius = BorderRadius.zero,
//     bool showCameraIcon = true,
//   }) : _widget = _Square96(
//           imagePath: imagePath,
//           onChanged: onChanged!,
//           showCameraIcon: showCameraIcon,
//           borderRadius: borderRadius,
//         );

//   /// 프로필 이미지 사각형 168사이즈
//   DUProfileImage.square168({
//     required String backgroundImagePath,
//     required String iconImagePath,
//     required String title,
//     required String subTitle,
//   }) : _widget = _Square168(
//           backgroundImagePath: backgroundImagePath,
//           iconImagePath: iconImagePath,
//           title: title,
//           subTitle: subTitle,
//         );

//   /// 프로필 이미지 사각형 202사이즈
//   DUProfileImage.square202({
//     required String imagePath,
//     required OnChanged onChanged,
//   }) : _widget = _Square202(imagePath: imagePath, onChanged: onChanged!);

//   /// common widget
//   final Widget _widget;

//   @override
//   Widget build(BuildContext context) {
//     return _widget;
//   }
// }

// class _Square202 extends StatelessWidget {
//   const _Square202({
//     required this.imagePath,
//     required this.onChanged,
//   });

//   final String imagePath;
//   final void Function(String filePath) onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 202,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           SizedBox(
//             width: double.infinity,
//             height: 202,
//             child: duGetImageWidget(
//               imagePath,
//               boxfit: BoxFit.fill,
//             ),
//           ),
//           Positioned(
//             right: 5,
//             bottom: 10,
//             child: InkWell(
//               hoverColor: Colors.transparent,
//               highlightColor: Colors.transparent,
//               splashColor: Colors.transparent,
//               onTap: () async {
//                 String imagePath = await duGetImagePath(
//                     imageSource: ImageSource.gallery, aspectRatio: 20 / 12);
//                 return onChanged(imagePath);
//               },
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   padding: EdgeInsets.all(2),
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: SvgPicture.asset(DUIcons.svgEditThumbnail),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _Square168 extends StatelessWidget {
//   const _Square168({
//     required this.backgroundImagePath,
//     required this.iconImagePath,
//     required this.title,
//     required this.subTitle,
//   });

//   final String backgroundImagePath;
//   final String iconImagePath;
//   final String title;
//   final String subTitle;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Column(
//           children: [
//             duGetImageWidget(
//               backgroundImagePath,
//               boxfit: BoxFit.cover,
//               width: double.infinity,
//               height: 100,
//             ),
//             Container(
//               width: double.infinity,
//               constraints: BoxConstraints(minHeight: 100),
//               decoration: BoxDecoration(
//                   color: DUColors.white_FFFFFF,
//                   border: Border.all(
//                       width: 1, color: DUColors.grey_B7B7B7.withOpacity(0.2)),
//                   borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(2),
//                       bottomRight: Radius.circular(2))),
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: DUTextStyle.black_2D2D2D_16,
//                     ),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     Text(
//                       subTitle,
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Positioned(
//           top: 70,
//           right: 10,
//           child: Container(
//             width: 60,
//             height: 60,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(50),
//               child: iconImagePath.isEmpty
//                   ? SvgPicture.asset(DUIcons.svgDefaultPeopleBlue)
//                   : duGetImageWidget(
//                       iconImagePath,
//                       boxfit: BoxFit.fill,
//                     ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class _Square96 extends StatelessWidget {
//   const _Square96({
//     required this.imagePath,
//     required this.onChanged,
//     required this.showCameraIcon,
//     required this.borderRadius,
//   });

//   final String imagePath;
//   final void Function(String filePath) onChanged;
//   final bool showCameraIcon;
//   final BorderRadius borderRadius;

//   @override
//   Widget build(BuildContext context) {
//     print('boderRadius : $borderRadius');
//     return SizedBox(
//       width: 122,
//       height: 122,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//             width: 102,
//             height: 102,
//             child: ClipRRect(
//               borderRadius: borderRadius,
//               child: duGetImageWidget(
//                 imagePath,
//                 boxfit: BoxFit.fill,
//               ),
//             ),
//           ),
//           if (showCameraIcon)
//             Positioned(
//               right: 0,
//               bottom: 0,
//               child: InkWell(
//                 hoverColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 splashColor: Colors.transparent,
//                 onTap: () async {
//                   print('test');
//                   String imagePath = await duGetImagePath(
//                       imageSource: ImageSource.gallery, aspectRatio: 1 / 1);
//                   return onChanged(imagePath);
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     padding: EdgeInsets.all(2),
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     child: SvgPicture.asset(DUIcons.svgEditThumbnail),
//                   ),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

// class _Circle104 extends StatelessWidget {
//   const _Circle104({
//     required this.imagePath,
//     required this.onChanged,
//     required this.showCameraIcon,
//     required this.name,
//   });

//   final String imagePath;
//   final void Function(String filePath) onChanged;
//   final bool showCameraIcon;
//   final String? name;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: 110,
//           height: 110,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               SizedBox(
//                 width: 104,
//                 height: 104,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(50),
//                   child: imagePath.isEmpty
//                       ? SvgPicture.asset(DUIcons.svgDefaultPeopleBlue)
//                       : duGetImageWidget(
//                           imagePath,
//                           boxfit: BoxFit.fill,
//                         ),
//                 ),
//               ),
//               if (showCameraIcon)
//                 Positioned(
//                   right: 0,
//                   bottom: 0,
//                   child: InkWell(
//                     hoverColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     splashColor: Colors.transparent,
//                     onTap: () async {
//                       String imagePath = await duGetImagePath(
//                           imageSource: ImageSource.gallery, aspectRatio: 1 / 1);
//                       return onChanged(imagePath);
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         padding: EdgeInsets.all(2),
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                         child: SvgPicture.asset(DUIcons.svgEditThumbnail),
//                       ),
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//         if (name != null) ...[
//           SizedBox(
//             height: 8,
//           ),
//           Text(
//             name!,
//             style: DUTextStyle.black_2D2D2D_20_w500,
//           ),
//         ],
//       ],
//     );
//   }
// }
