// import 'package:du_mobile/index.dart';

// class DUSwitch extends StatelessWidget {

//   /// 일반 스위치
//   ///
//   /// Example:
//   /// ```dart
//   /// DUSwitch(
//   ///   value: true,
//   ///   onChanged: (bool newValue) {},
//   /// );
//   /// ```
//   ///
//   /// See also:
//   ///  * [value], switch 값
//   ///  * [onChanged], switch 체인지 이벤트
//   DUSwitch({
//     this.value = false,
//     required this.onChanged,
//   }) : _widget = _Original(
//           value: value,
//           onChanged: onChanged,
//         );

//   /// 공개&비공개 스위치 버튼 A타입
//   ///
//   /// Example:
//   /// ```dart
//   /// DUSwitch(
//   ///   value: true,
//   ///   onChanged: (bool newValue) {},
//   /// );
//   /// ```
//   ///
//   /// See also:
//   ///  * [value], switch 값
//   ///  * [onChanged], switch 체인지 이벤트
//   DUSwitch.typeA({
//     this.value = false,
//     required this.onChanged,
//   }) : _widget = _TypeA(
//           value: value,
//           onChanged: onChanged,
//         );

//   /// 공개&비공개 스위치 버튼 B타입
//   ///
//   /// Example:
//   /// ```dart
//   /// DUSwitch(
//   ///   value: true,
//   ///   onChanged: (bool newValue) {},
//   /// );
//   /// ```
//   ///
//   /// See also:
//   ///  * [value], switch 값
//   ///  * [onChanged], switch 체인지 이벤트
//   DUSwitch.typeB({
//     this.value = false,
//     required this.onChanged,
//   }) : _widget = _TypeB(
//           value: value,
//           onChanged: onChanged,
//         );

//   /// 공개 : true, 비공개 : false
//   final bool value;

//   /// 스위치 변경 이벤트
//   final Function(bool newValue) onChanged;

//   /// common widget
//   final Widget _widget;

//   @override
//   Widget build(BuildContext context) {
//     return _widget;
//   }
// }

// class _Original extends StatefulWidget {
//   const _Original({required this.value, required this.onChanged});

//   final bool value;
//   final ValueChanged<bool> onChanged;

//   @override
//   __OriginalState createState() => __OriginalState();
// }

// class __OriginalState extends State<_Original> {

//   late bool switchValue;

//   @override
//   void initState() { 
//     super.initState();
//     switchValue = widget.value;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Switch(
//       value: switchValue,
//       onChanged: (value) {
//         setState(() {
//           switchValue = value;
//         });
//         return widget.onChanged(switchValue);
//       },
//     );
//   }
// }

// // ignore: must_be_immutable
// class _TypeA extends StatefulWidget {
//   const _TypeA({required this.value, required this.onChanged});

//   final bool value;
//   final ValueChanged<bool> onChanged;

//   @override
//   __TypeAState createState() => __TypeAState();
// }

// class __TypeAState extends State<_TypeA> {

//   late bool switchValue;

//   @override
//   void initState() { 
//     super.initState();
//     switchValue = widget.value;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints(minWidth: 100, minHeight: 30),
//       child: switchValue
//           ? Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(3),
//                   color: DUColors.purple_7540EE),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   SizedBox(
//                     width: 2,
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         switchValue = false;
//                       });

//                       return widget.onChanged(switchValue);
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: Center(
//                         child: Text(
//                           '비공개',
//                           style: DUTextStyle.grey_F9F9F9_14,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 4,
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(4.0),
//                     constraints: BoxConstraints(minWidth: 42, minHeight: 25),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(3),
//                         color: Colors.white),
//                     child: Center(
//                       child: Text(
//                         '공개',
//                         style: DUTextStyle.purple_7540EE_14,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 2,
//                   )
//                 ],
//               ),
//             )
//           : Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(3),
//                   color: DUColors.grey_EFEFEF),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   SizedBox(
//                     width: 2,
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(4.0),
//                     constraints: BoxConstraints(minWidth: 55, minHeight: 25),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(3),
//                         color: Colors.white),
//                     child: Center(
//                       child: Text(
//                         '비공개',
//                         style: DUTextStyle.grey_8F8F8F_14,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 2,
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         switchValue = true;
//                       });
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: Center(
//                         child: Text(
//                           '공개',
//                           style: DUTextStyle.grey_B7B7B7_14,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 2,
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }

// class _TypeB extends StatefulWidget {
//   const _TypeB({required this.value, required this.onChanged});

//   final bool value;
//   final ValueChanged<bool> onChanged;

//   @override
//   __TypeBState createState() => __TypeBState();
// }

// class __TypeBState extends State<_TypeB> {
//   late bool value;

//   @override
//   void initState() {
//     super.initState();
//     value = widget.value;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           value = !value;
//         });

//         return widget.onChanged(value);
//       },
//       child: Container(
//         width: 72,
//         height: 32,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(3),
//           color: value ? DUColors.purple_7540EE : DUColors.grey_D8D8D8,
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(3),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Container(color: DUColors.white_FFFFFF),
//               ),
//               Expanded(
//                 child: Container(
//                   color: value ? DUColors.purple_7540EE : DUColors.grey_D8D8D8,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
