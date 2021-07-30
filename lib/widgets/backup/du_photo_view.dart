// import 'package:du_mobile/index.dart';
// import 'package:du_mobile/utils/base/base.dart';
// import 'package:photo_view/photo_view.dart';

// class DUPhotoView extends StatelessWidget {

//   const DUPhotoView({required this.imagePath});

//   /// 이미지 경로
//   final String imagePath;

//   @override
//   Widget build(BuildContext context) {
//     return DUScaffold(
//       appBar: DUAppBar(
//         leading: DUIconButton(
//           icon: DUIcons.svgClose,
//           onPressed: () {
//             DUNavigator.pop();
//           },
//           isEffect: true,
//         ),
//         title: Text(
//           '상세보기',
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         child: PhotoView(
//           imageProvider: duGetImage(imagePath),
//         ),
//       ),
//     );
//   }
// }
