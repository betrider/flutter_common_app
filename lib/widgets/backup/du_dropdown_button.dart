// import 'package:du_mobile/index.dart';

// class DUDropdownButton<T> extends StatefulWidget {
//   DUDropdownButton({
//     Key? key,
//     this.hintText = '',
//     this.itemWidth = 100,
//     this.boxWidth,
//     this.initValue,
//     required this.itemList,
//     required this.onChanged,
//   }) : super(key: key);

//   /// 힌트 텍스트
//   final String hintText;

//   /// 최초 인덱스 설정
//   final T? initValue;

//   /// 리스트 길이
//   final double? itemWidth;

//   /// 박스 길이
//   final double? boxWidth;

//   /// 아이템 리스트
//   final Map<T, String> itemList;

//   /// 변경 후 콜백 이벤트
//   final void Function(T code, String? text) onChanged;

//   @override
//   _DUDropdownButtonState<T> createState() => _DUDropdownButtonState<T>();
// }

// class _DUDropdownButtonState<T> extends State<DUDropdownButton<T>> {
//   List<DropdownMenuItem<T>> _dropdownItems = [];

//   T? _selectedItem;

//   bool firstBuild = true;

//   final key = UniqueKey();

//   @override
//   void initState() {
//     super.initState();
//     widget.itemList.forEach((key, value) {
//       _dropdownItems.add(DropdownMenuItem<T>(
//         value: key,
//         child: Text(value),
//       ));
//     });

//     _selectedItem = findDropItem(widget.initValue)!;
//   }

//   onChangeDropdown(choiceKey) {
//     setState(() {
//       _selectedItem = findDropItem(choiceKey)!;
//     });

//     widget.onChanged(choiceKey, widget.itemList[choiceKey]);
//   }

//   T? findDropItem(T? valueKey) {
//     T? find;

//     _dropdownItems.forEach((item) {
//       if (item.value == valueKey) {
//         find = item.value;
//         return;
//       }
//     });

//     if (find == null) {
//       find = _dropdownItems.first.value;
//     }

//     return find;
//   }

//   Future<T?> initVuild() async {
//     return _selectedItem;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<T?>(
//       future: initVuild(),
//       builder: (context, snapshot) => DropdownBelow<T?>(
//         itemWidth: widget.itemWidth,
//         style: DUTextStyle.black_2D2D2D_14,
//         boxWidth: widget.boxWidth,
//         boxTextstyle: DUTextStyle.black_2D2D2D_14,
//         boxPadding: EdgeInsets.only(right: 4),
//         boxHeight: 45,
//         hint: Text(
//           widget.hintText,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//         value: snapshot.data,
//         items: _dropdownItems,
//         onChanged: onChangeDropdown,
//         icon: duGetIconWidget(DUIcons.svgExpandMoreSM),
//       ),
//     );
//   }
// }
