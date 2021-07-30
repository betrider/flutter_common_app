// import 'package:du_mobile/index.dart';

// enum RequiredOption {
//   ///기본
//   none,

//   /// 선택
//   choice,

//   /// 필수
//   necessary
// }

// /// 동의 체크박스 위젯
// ///
// /// Example
// /// ```dart
// ///  DUCheckbox(
// ///    text: '모두 동의합니다.',
// ///    isCheck: duIsCheckValue1,
// ///    requiredOption: RequiredOption.choice,
// ///    onTap: (value) {
// ///      setState(() {
// ///        duIsCheckValue1 = value;
// ///      });
// ///    },
// ///  )
// ///```
// class DUCheckbox extends StatefulWidget {
//   DUCheckbox({
//     required String text,
//     bool initValue = false,
//     RequiredOption requiredOption = RequiredOption.none,
//     ValueChanged<bool>? onChanged,
//     GestureTapCallback? information,
//   }) : _stateWidget = _CheckboxState(
//             text: text,
//             onChanged: onChanged,
//             requiredOption: requiredOption,
//             information: information,
//             initValue: initValue);

//   final State _stateWidget;

//   @override
//   State<StatefulWidget> createState() => _stateWidget;
// }

// class _CheckboxState extends State<DUCheckbox> {
//   _CheckboxState({
//     required this.text,
//     this.isCheck = false,
//     this.onChanged,
//     this.requiredOption,
//     this.information,
//     this.initValue = false,
//   });

//   /// 체크박스명
//   final String text;

//   /// 체크클릭 이벤트
//   final ValueChanged<bool>? onChanged;

//   /// 선택&필수 옵션값
//   final RequiredOption? requiredOption;

//   /// 보기버튼 이벤트 함수
//   final GestureTapCallback? information;

//   ///초기값
//   final bool initValue;

//   /// 체크여부
//   late bool isCheck;

//   @override
//   void initState() {
//     super.initState();
//     isCheck = initValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Expanded(
//           flex: 2,
//           child: InkWell(
//             onTap: () {
//               isCheck = !isCheck;
//               setState(() {
//                 if (onChanged != null) onChanged!(isCheck);
//               });
//             },
//             child: Row(
//               children: [
//                 isCheck
//                     ? Icon(
//                         Icons.check_circle,
//                         color: DUColors.purple_7540EE,
//                         size: 25,
//                       )
//                     : Icon(
//                         Icons.check_circle_outline,
//                         color: DUColors.grey_D8D8D8,
//                         size: 25,
//                       ),
//                 SizedBox(width: 5),
//                 Flexible(
//                   child: Text(
//                     text.replaceAll("", "\u{200B}"),
//                     style: DUTextStyle.black_2D2D2D_16,
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 if (requiredOption == RequiredOption.choice)
//                   Text(
//                     '(선택)',
//                     style: DUTextStyle.grey_8F8F8F_12,
//                   )
//                 else if (requiredOption == RequiredOption.necessary)
//                   Text(
//                     '(필수)',
//                     style: DUTextStyle.purple_7540EE_12,
//                   ),
//               ],
//             ),
//           ),
//         ),
//         if (information == null)
//           Expanded(
//             child: InkWell(
//               onTap: information,
//               child: Text(
//                 '보기',
//                 textAlign: TextAlign.right,
//                 style: DUTextStyle.grey_8F8F8F_14,
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
