// import 'package:du_mobile/index.dart';

// void initOnPressed(bool isExpanded) {}

// class DUImageGallery extends StatelessWidget {

//   /// 이미지 갤러리
//   const DUImageGallery({
//     required this.imageGalleryList,
//     this.crossAxisCount = 3,
//     this.isExpanded = false,
//     this.showTitle = false,
//     this.expandedOnPressed = initOnPressed,
//     this.enableMoreButton = true,
//   });

//   /// 이미지 리스트
//   final List<String> imageGalleryList;

//   /// 한줄에 표시할 이미지 개수(기존:3)
//   final int crossAxisCount;

//   /// 확장 여부
//   final bool isExpanded;

//   /// 타이틀여부
//   final bool showTitle;

//   /// 이미지 더 보기 버튼 클릭 이벤트
//   final void Function(bool isExpanded) expandedOnPressed;

//   /// 이미지 더보기 버튼 표시 여부
//   final bool enableMoreButton;

//   @override
//   Widget build(BuildContext context) {
//     return isExpanded
//         ? Column(
//             children: [
//               if (showTitle) ...[
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     '갤러리',
//                     style: DUTextStyle.black_2D2D2D_14,
//                   ),
//                 ),
//                 DUSizedBox.h16(),
//               ],
//               GridView.count(
//                   shrinkWrap: true, //본연의 크기
//                   primary: false, //스크롤 여부
//                   crossAxisSpacing: 5.0, //가로축 여백
//                   mainAxisSpacing: 5.0, //세로축 여백
//                   crossAxisCount: crossAxisCount,
//                   children: imageGalleryList.mapWithIndex((imagePath, index) {
//                     return InkWell(
//                         onTap: () {
//                           print(imagePath.toString());
//                           DUNavigator.push(
//                               child: DUPhotoView(imagePath: imagePath));
//                         },
//                         child: duGetImageWidget(
//                           imagePath,
//                           boxfit: BoxFit.fill,
//                         ));
//                   }).toList()),
//             ],
//           )
//         : Column(
//             children: [
//               if (showTitle) ...[
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     '갤러리',
//                     style: DUTextStyle.black_2D2D2D_14,
//                   ),
//                 ),
//                 DUSizedBox.h16(),
//               ],
//               GridView.count(
//                 shrinkWrap: true, //본연의 크기
//                 primary: false, //스크롤 여부
//                 crossAxisSpacing: 5.0, //가로축 여백
//                 mainAxisSpacing: 5.0, //세로축 여백
//                 crossAxisCount: crossAxisCount,
//                 children: imageGalleryList
//                     .mapWithIndex((imagePath, index) {
//                       return InkWell(
//                           onTap: () {
//                             print(imagePath.toString());
//                             DUNavigator.push(
//                               child: DUPhotoView(imagePath: imagePath)
//                             );
//                           },
//                           child: duGetImageWidget(
//                             imagePath,
//                             boxfit: BoxFit.fill,
//                           ));
//                     })
//                     .toList()
//                     .take(6)
//                     .toList(),
//               ),
//               SizedBox(height: 8),
//               enableMoreButton
//                   ? DUButton.squareElevated40(
//                       duButtonStyle: DUButtonStyle.UNNORMAL,
//                       width: double.infinity,
//                       text: '갤러리 더보기',
//                       onPressed: () {
//                         return expandedOnPressed(!isExpanded);
//                       },
//                     )
//                   : Container(),
//             ],
//           );
//   }
// }
