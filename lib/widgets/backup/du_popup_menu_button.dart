// import 'package:du_mobile/index.dart';

// // ignore: must_be_immutable
// class DUPopupMenuButton extends StatelessWidget {
  
//   /// 텍스트용 팝업메뉴버튼
//   ///
//   /// Example:
//   /// ```dart
//   /// DUPopupMenuButton(
//   ///   child: Text('텍스트 팝업메뉴 버튼'),
//   ///   textList: ['메뉴보기1','메뉴보기2','메뉴보기3','메뉴보기4'],
//   ///   onSelected: (index) {
//   ///     print(index);
//   ///   },
//   /// ),
//   /// ```
//   ///
//   const DUPopupMenuButton({
//     required this.child,
//     required this.textList,
//     this.onSelected,
//     this.offset,
//     this.tooltip,
//   });

//   /// 표편할 위젯
//   final Widget child;

//   /// 팝업 위치설정
//   final Offset? offset;

//   /// 표현할 툴팁
//   final String? tooltip;

//   /// 텍스트 리스트
//   final List<String> textList;

//   /// 변경 이벤트
//   final void Function(dynamic)? onSelected;

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton(
//       tooltip: tooltip,
//       padding: EdgeInsets.zero,
//       offset: offset ?? const Offset(0, 0),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(15.0)),
//       ),
//       onSelected: onSelected,
//       child: child,
//       itemBuilder: (context) {
//         return textList.map((value) {
//           // get index
//           var index = textList.indexOf(value);

//           return _getTextPopupMenuItem(index, value);
//         }).toList();
//       },
//     );
//   }

//   PopupMenuItem<int> _getTextPopupMenuItem(int index, String value) {
//     return PopupMenuItem(
//       height: 30,
//       child: SizedBox(
//         child: Text(
//           value,
//           style: DUTextStyle.black_2D2D2D_14,
//         ),
//       ),
//       value: index,
//     );
//   }
// }
