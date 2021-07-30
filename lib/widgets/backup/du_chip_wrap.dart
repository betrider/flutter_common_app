// import 'package:du_mobile/index.dart';

// class DUChipBar extends StatefulWidget {

//   /// DU Chip위젯 
//   const DUChipBar({required this.initListValue, required this.onCheanged});

//   /// 초기값
//   final List<String> initListValue;

//   /// 변경 후 콜백 이벤트(리스트 반환)
//   final void Function(List<String> chipList) onCheanged;

//   @override
//   _DUChipBarState createState() => _DUChipBarState();
// }

// class _DUChipBarState extends State<DUChipBar> {
//   List<String> chipList = [];

//   @override
//   void initState() {
//     super.initState();
//     chipList = widget.initListValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       spacing: 4,
//       runSpacing: 4,
//       children: chipList
//           .mapWithIndex(
//             (value, index) => DUChip(
//               text: value,
//               onClosed: (text) {
//                 setState(() {
//                   chipList.removeAt(index);
//                 });
//                 return widget.onCheanged(chipList);
//               },
//             ),
//           )
//           .toList(),
//     );
//   }
// }
