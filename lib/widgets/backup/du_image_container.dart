// import 'package:du_mobile/index.dart';
// import 'package:image_picker/image_picker.dart';

// // ignore: must_be_immutable
// class DUImageContainer extends StatelessWidget {
//   /// 프로필 이미지 박스
//   DUImageContainer.profile({
//     this.title = '프로필 이미지',
//     required this.imagePath,
//     required this.onChanged,
//     required this.onClosed,
//     this.comment =
//         '권장 크기 : 1000 X 1000\n장당 2M, Jpg, jpeg, png 형식의 이미지만 등록 가능합니다.\n미입력시에는 기본 이미지로 나타납니다.',
//   }) : _widget = _Profile(
//             title: title,
//             imagePath: imagePath,
//             onClosed: onClosed,
//             onChanged: onChanged,
//             comment: comment);

//   /// 배경 이미지 박스
//   DUImageContainer.background({
//     this.title = '배경 이미지',
//     required this.imagePath,
//     required this.onChanged,
//     required this.onClosed,
//     this.comment =
//         '권장 크기 : 1000 X 1000\n장당 2M, Jpg, jpeg, png 형식의 이미지만 등록 가능합니다.\n미입력시에는 기본 이미지로 나타납니다.',
//   }) : _widget = _Background(
//             title: title,
//             imagePath: imagePath,
//             onClosed: onClosed,
//             onChanged: onChanged,
//             comment: comment);

//   /// 리스트 이미지 박스
//   DUImageContainer.listView({
//     this.title = '첨부 이미지',
//     required List<String> imageListItem,
//     int imageMaxCount = 5,
//     required this.onChanged,
//     required this.onClosed,
//     this.comment =
//         '권장 크기 : 1000 X 1000\n장당 2M, Jpg, jpeg, png 형식의 이미지만 등록 가능합니다.\n미입력시에는 기본 이미지로 나타납니다.',
//   })  : _widget = _ListView(
//             title: title,
//             imageListItem: imageListItem,
//             imageMaxCount: imageMaxCount,
//             onClosed: onClosed,
//             onChanged: onChanged,
//             comment: comment),
//         imagePath = '';

//   /// 제목
//   final String title;

//   /// 코멘트
//   final String comment;

//   /// 이미지 경로
//   final String imagePath;

//   /// 사진 업로드 변경 후 이벤트(파일경로)
//   final void Function(String filePath) onChanged;

//   /// 사진 삭제 클릭 이벤트
//   ///
//   /// 단일 : 0(고정)
//   ///
//   /// 멀티 : array index
//   final void Function(int index) onClosed;

//   /// common Widget
//   final Widget _widget;

//   @override
//   Widget build(BuildContext context) {
//     return _widget;
//   }
// }

// class _Background extends StatelessWidget {
//   const _Background({
//     required this.title,
//     required this.imagePath,
//     required this.onClosed,
//     required this.onChanged,
//     required this.comment,
//   });

//   final String title;
//   final String imagePath;
//   final void Function(int index) onClosed;
//   final void Function(String filePath) onChanged;
//   final String comment;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: DUTextStyle.black_2D2D2D_14,
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           Stack(
//             children: [
//               duGetImageWidget(
//                 imagePath,
//                 boxfit: BoxFit.fill,
//                 width: double.infinity,
//                 height: 185,
//               ),
//               Positioned(
//                 child: InkWell(
//                   onTap: () {
//                     return onClosed(0);
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Color.fromRGBO(118, 116, 116, 1),
//                         borderRadius: BorderRadius.circular(50),
//                         border: Border.all(
//                           color: Color(0xFF000000).withOpacity(0.5),
//                         )),
//                     child: duGetIconWidget(DUIcons.svgDeleteGrey, size: 16),
//                   ),
//                 ),
//                 top: 10,
//                 right: 10,
//               ),
//             ],
//           ),
//           SizedBox(height: 8),
//           DUIconButton(
//             buttonSize: 60,
//             icon: DUIcons.svgCameraBlue,
//             onPressed: () async {
//               String imagePath = await duGetImagePath(imageSource: ImageSource.gallery, aspectRatio: 16/12);
//               return onChanged(imagePath);
//             },
//             isDecoration: true,
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Text(
//             comment,
//             style: DUTextStyle.grey_8F8F8F_12,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _Profile extends StatelessWidget {
//   const _Profile({
//     required this.title,
//     required this.imagePath,
//     required this.onClosed,
//     required this.onChanged,
//     required this.comment,
//   });

//   final String title;
//   final String imagePath;
//   final void Function(int index) onClosed;
//   final void Function(String filePath) onChanged;
//   final String comment;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: DUTextStyle.black_2D2D2D_14,
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           Stack(
//             children: [
//               duGetImageWidget(
//                 imagePath,
//                 boxfit: BoxFit.fill,
//                 width: 240,
//                 height: 240,
//               ),
//               Positioned(
//                 child: InkWell(
//                   onTap: () {
//                     return onClosed(0);
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Color.fromRGBO(118, 116, 116, 1),
//                         borderRadius: BorderRadius.circular(50),
//                         border: Border.all(
//                           color: Color(0xFF000000).withOpacity(0.5),
//                         )),
//                     child: duGetIconWidget(DUIcons.svgDeleteGrey, size: 16),
//                   ),
//                 ),
//                 top: 10,
//                 right: 10,
//               ),
//             ],
//           ),
//           SizedBox(height: 8),
//           DUIconButton(
//             buttonSize: 60,
//             icon: DUIcons.svgCameraBlue,
//             onPressed: () async {
//               String imagePath = await duGetImagePath(imageSource: ImageSource.gallery, aspectRatio: 1/1);
//               return onChanged(imagePath);
//             },
//             isDecoration: true,
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Text(
//             comment,
//             style: DUTextStyle.grey_8F8F8F_12,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _ListView extends StatelessWidget {
//   const _ListView({
//     required this.title,
//     required this.imageListItem,
//     required this.imageMaxCount,
//     required this.onClosed,
//     required this.onChanged,
//     required this.comment,
//   });

//   final String title;
//   final List<String> imageListItem;
//   final int imageMaxCount;
//   final void Function(int index) onClosed;
//   final void Function(String filePath) onChanged;
//   final String comment;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             title,
//             style: DUTextStyle.black_2D2D2D_14,
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           SizedBox(
//             height: 240,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: imageListItem.length,
//               itemBuilder: (context, index) {
//                 if (index > imageMaxCount - 1) return Container();
//                 return Stack(
//                   children: [
//                     duGetImageWidget(
//                       imageListItem[index],
//                       boxfit: BoxFit.fill,
//                       width: 240,
//                       height: 240,
//                     ),
//                     Positioned(
//                       child: InkWell(
//                         onTap: () {
//                           return onClosed(index);
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                               color: Color.fromRGBO(118, 116, 116, 1),
//                               borderRadius: BorderRadius.circular(50),
//                               border: Border.all(
//                                 color: Color(0xFF000000).withOpacity(0.5),
//                               )),
//                           child:
//                               duGetIconWidget(DUIcons.svgDeleteGrey, size: 16),
//                         ),
//                       ),
//                       top: 10,
//                       right: 10,
//                     ),
//                   ],
//                 );
//               },
//               separatorBuilder: (context, index) {
//                 return SizedBox(
//                   width: 8,
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 8),
//           DUIconButton(
//             buttonSize: 60,
//             icon: DUIcons.svgCameraBlue,
//             title: (imageListItem.length > imageMaxCount - 1
//                         ? imageMaxCount
//                         : imageListItem.length.toString())
//                     .toString() +
//                 '/' +
//                 imageMaxCount.toString(),
//             onPressed: () async {
//               PickedFile? pickedFile = await ImagePicker().getImage(
//                 source: ImageSource.gallery,
//                 maxHeight: 240,
//                 maxWidth: 240,
//                 imageQuality: 100,
//               );
//               return onChanged(pickedFile!.path);
//             },
//             isDecoration: true,
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Text(
//             comment,
//             style: DUTextStyle.grey_8F8F8F_12,
//           ),
//         ],
//       ),
//     );
//   }
// }
