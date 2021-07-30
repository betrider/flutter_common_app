// import 'package:du_mobile/index.dart';

// class DUTimeButton extends StatefulWidget {
  
//   const DUTimeButton({
//     this.timeOfDay = const TimeOfDay(hour: 0, minute: 0),
//     required this.onChanged,
//   });

//   /// 시간&분 변수
//   final TimeOfDay timeOfDay;

//   /// 변경 후 이벤트
//   final void Function(TimeOfDay timeOfDay) onChanged;

//   @override
//   _DUTimeButtonState createState() => _DUTimeButtonState();
// }

// class _DUTimeButtonState extends State<DUTimeButton>
//     with WidgetsBindingObserver {
//   final FocusNode inputFocusNode = FocusNode();
//   late TimeOfDay _timeOfDay;
//   late TextEditingController _hourTextEditingController;
//   late TextEditingController _minuteTextEditingController;

//   @override
//   void initState() {
//     super.initState();
//     _timeOfDay = widget.timeOfDay;

//     ///시간 초기값 세팅
//     _hourTextEditingController = TextEditingController(
//       text: getString12Hour(_timeOfDay.hour),
//     );

//     ///분 초기값 세팅
//     _minuteTextEditingController = TextEditingController(
//       text: getStringMinute(_timeOfDay.minute),
//     );
//     WidgetsBinding.instance!.addObserver(this);
//   }

//   @override
//   void didChangeMetrics() {
//     super.didChangeMetrics();
//     double value = WidgetsBinding.instance!.window.viewInsets.bottom;
//     if (value == 0) {
//       setState(() {
//         /// 취소시 시간 롤백
//         if (!is12Hour(_hourTextEditingController.text)) {
//           _hourTextEditingController = TextEditingController(
//             text: getString12Hour(widget.timeOfDay.hour),
//           );
//           FocusScope.of(context).unfocus();
//         }

//         /// 취소시 분 롤백
//         if (!isMinute(_minuteTextEditingController.text)) {
//           _minuteTextEditingController = TextEditingController(
//             text: getStringMinute(widget.timeOfDay.minute),
//           );
//           FocusScope.of(context).unfocus();
//         }
//       });
//     }
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance!.removeObserver(this);
//     inputFocusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         InkWell(
//           onTap: () {
//             setState(() {
//               if (_timeOfDay.hour >= 12) {
//                 _timeOfDay = TimeOfDay(
//                   hour: _timeOfDay.hour - 12,
//                   minute: _timeOfDay.minute,
//                 );
//               }

//               return widget.onChanged(_timeOfDay);
//             });
//           },
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(3),
//               color: _timeOfDay.hour < 12
//                   ? DUColors.purple_7540EE
//                   : DUColors.grey_F8F8F8,
//             ),
//             width: 54,
//             height: 35,
//             child: Center(
//               child: Text(
//                 '오전',
//                 style: _timeOfDay.hour < 12
//                     ? DUTextStyle.white_FFFFFF_14
//                     : DUTextStyle.grey_8F8F8F_14,
//               ),
//             ),
//           ),
//         ),
//         InkWell(
//           onTap: () {
//             setState(() {
//               if (_timeOfDay.hour < 12) {
//                 _timeOfDay = TimeOfDay(
//                   hour: _timeOfDay.hour + 12,
//                   minute: _timeOfDay.minute,
//                 );
//               }
//             });

//             return widget.onChanged(_timeOfDay);
//           },
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(3),
//               color: _timeOfDay.hour < 12
//                   ? DUColors.grey_F8F8F8
//                   : DUColors.purple_7540EE,
//             ),
//             width: 54,
//             height: 35,
//             child: Center(
//               child: Text(
//                 '오후',
//                 style: _timeOfDay.hour < 12
//                     ? DUTextStyle.grey_8F8F8F_14
//                     : DUTextStyle.white_FFFFFF_14,
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 16,
//         ),
//         Container(
//           width: 42 + ( (MediaQuery.of(context).textScaleFactor - 1) * 32), //디바이스 폰트사이즈에 맞게 가로영역 변경
//           child: TextFormField(
//             textAlign: TextAlign.center,
//             controller: _hourTextEditingController,
//             style: DUTextStyle.purple_7540EE_30,
//             maxLength: 2,
//             keyboardType: TextInputType.number,
//             inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//             onEditingComplete: () {
//               if (is12Hour(_hourTextEditingController.text)) {
                
//                 _hourTextEditingController.text = getString12Hour(_hourTextEditingController.text.toInt());

//                 if (_timeOfDay.hour <= 12) {
//                   _timeOfDay = TimeOfDay(
//                       hour: _hourTextEditingController.text.toInt(),
//                       minute: _timeOfDay.minute);
//                 } else {
//                   _timeOfDay = TimeOfDay(
//                       hour: _hourTextEditingController.text.toInt() + 12,
//                       minute: _timeOfDay.minute);
//                 }
//                 FocusScope.of(context).unfocus();
//                 return widget.onChanged(_timeOfDay);
//               }
//             },
//             decoration: InputDecoration(
//               border: InputBorder.none,
//               counterText: '',
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         Text(
//           ':',
//           style: DUTextStyle.purple_7540EE_30,
//         ),
//         SizedBox(
//           width: 8,
//         ),
//         Container(
//           width: 42 + ( (MediaQuery.of(context).textScaleFactor - 1) * 32), //디바이스 폰트사이즈에 맞게 가로영역 변경
//           child: TextFormField(
//             textAlign: TextAlign.center,
//             controller: _minuteTextEditingController,
//             style: DUTextStyle.purple_7540EE_30,
//             maxLength: 2,
//             keyboardType: TextInputType.number,
//             inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//             onEditingComplete: () {
//               if (isMinute(_minuteTextEditingController.text)) {

//                 _minuteTextEditingController.text = getStringMinute(_minuteTextEditingController.text.toInt());

//                 _timeOfDay = TimeOfDay(
//                     hour: _timeOfDay.hour,
//                     minute: _minuteTextEditingController.text.toInt());
//                 FocusScope.of(context).unfocus();
//                 return widget.onChanged(_timeOfDay);
//               }
//             },
//             decoration: InputDecoration(
//               border: InputBorder.none,
//               counterText: '',
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// String getString12Hour(int hour) {
//   return (hour >= 0 && hour < 10)
//       ? hour.toString().padLeft(2, '0')
//       : hour > 12
//           ? (hour - 12).toString()
//           : hour.toString();
// }

// String getStringMinute(int minute) {
//   return (minute >= 0 && minute < 10)
//       ? minute.toString().padLeft(2, '0')
//       : minute.toString();
// }

// bool is12Hour(String hour) {
//   return hour.isNotEmpty && hour.toInt() >= 0 && hour.toInt() <= 12;
// }

// bool is24Hour(String hour) {
//   return hour.isNotEmpty && hour.toInt() >= 0 && hour.toInt() <= 24;
// }

// bool isMinute(String minute) {
//   return minute.isNotEmpty && minute.toInt() >= 0 && minute.toInt() < 60;
// }
