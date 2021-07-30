// import 'package:du_mobile/index.dart';

// class DUChip extends StatelessWidget {

//   /// 칩 위젯
//   const DUChip({required this.text, required this.onClosed});

//   /// 칩 테스트
//   final String text;

//   /// 칩 닫기 후 콜백 이벤트
//   final void Function(String value) onClosed;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: (){
//         return onClosed(text);
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(3),
//           color: DUColors.white_F6F7FF,
//         ),
//         padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(text, style: DUTextStyle.black_2D2D2D_12),
//             SizedBox(
//               width: 2,
//             ),
//             duGetIconWidget(DUIcons.svgClose, size: 14)
//           ],
//         ),
//       ),
//     );
//   }
// }
