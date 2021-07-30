// import 'package:du_mobile/index.dart';

// class DUListViewExpanded extends StatelessWidget {
//   const DUListViewExpanded({
//     required this.buttonText,
//     this.buttonPadding = const EdgeInsets.symmetric(horizontal:16),
//     this.isExpanded = false,
//     required this.listWidget,
//     required this.expandedOnPressed,
//     this.listSeparatorWidget = const SizedBox(),
//   });

//   /// 버튼명
//   final String buttonText;

//   /// 버튼 패딩
//   final EdgeInsets buttonPadding;

//   /// 확장 여부
//   final bool isExpanded;

//   /// 리스트 위젯
//   final List<Widget> listWidget;

//   /// 리스트 사이에 표시 할 위젯
//   final Widget listSeparatorWidget;

//   /// 이미지 더 보기 버튼 클릭 이벤트
//   final void Function(bool isExpanded) expandedOnPressed;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         if (isExpanded == true)
//           ListView.separated(
//             primary: false,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return listWidget[index];
//             },
//             separatorBuilder: (context, index) {
//               return listSeparatorWidget;
//             },
//             itemCount: listWidget.length,
//           ),
//         if (isExpanded == false)
//           ListView.separated(
//             primary: false,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return listWidget[index];
//             },
//             separatorBuilder: (context, index) {
//               return listSeparatorWidget;
//             },
//             itemCount: listWidget.length < 4 ? listWidget.length : 4,
//           ),
//         DUSizedBox.h16(),
//         if (isExpanded == false)
//           Padding(
//             padding: buttonPadding,
//             child: DUButton.squareElevated48(
//               duButtonStyle: DUButtonStyle.UNNORMAL,
//               width: double.infinity,
//               text: buttonText,
//               onPressed: () {
//                 return expandedOnPressed(!isExpanded);
//               },
//             ),
//           ),
//       ],
//     );
//   }
// }
