// import 'package:du_mobile/index.dart';

// class DULinearProgressIndicator extends StatefulWidget {
//   const DULinearProgressIndicator({
//     Key? key,
//     this.color,
//     this.backgroundColor = Colors.grey,
//     this.beginTargetValue = 0,
//     this.endTargetValue = 0,
//     this.onEnd,
//   }): super(key:key);

//   ///라인 색상
//   final Color? color;

//   ///라인 백그라운드 색상
//   final Color? backgroundColor;

//   ///라인 시작지점 초기값
//   final double beginTargetValue;

//   ///라인 종료지점 초기값
//   final double endTargetValue;

//   ///이벤트 종료 후 이벤트
//   final void Function()? onEnd;

//   @override
//   DULinearProgressIndicatorState createState() =>
//       DULinearProgressIndicatorState();
// }

// class DULinearProgressIndicatorState extends State<DULinearProgressIndicator> {
//   late double _beginTargetValue;
//   late double _endTargetValue;

//   @override
//   void initState() {
//     super.initState();
//     _beginTargetValue = widget.beginTargetValue;
//     _endTargetValue = widget.endTargetValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TweenAnimationBuilder(
//       tween: Tween<double>(begin: _beginTargetValue, end: _endTargetValue),
//       duration: Duration(milliseconds: 1000), // 1seconds = 1000milliseconds
//       builder: (context, double value, child) {
//         return LinearProgressIndicator(
//           color: widget.color,
//           backgroundColor: widget.backgroundColor,
//           value: value,
//         );
//       },
//       onEnd: widget.onEnd,
//     );
//   }

//   void test() {
//     setState(() {
//       _endTargetValue = _endTargetValue + 0.25;
//     });
//   }
// }


// //샘플

// /* import 'package:du_mobile/index.dart';

// class SampleTestPage extends StatefulWidget {
//   @override
//   _SampleTestPageState createState() => _SampleTestPageState();
// }

// class _SampleTestPageState extends State<SampleTestPage> {
//   double _beginTargetValue = 0;
//   double _endTargetValue = 0;

//   @override
//   Widget build(BuildContext context) {

//     WidgetsBinding.instance!.addPostFrameCallback((_) {
//       _beginTargetValue = _endTargetValue;
//     });

//     return Scaffold(
//         body: Column(
//       children: [
//         ElevatedButton(
//           onPressed: () {
//             if(_endTargetValue < 1){
//               setState(() {
//                 _endTargetValue = _endTargetValue + 0.25;
//               });
//             }
//           },
//           child: Text('up'),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             if(_endTargetValue > 0){
//               setState(() {
//                 _endTargetValue = _endTargetValue - 0.25;
//               });
//             }
//           },
//           child: Text('down'),
//         ),
//         DULinearProgressIndicator(
//           key: GlobalKey(),
//           beginTargetValue: _beginTargetValue,
//           endTargetValue: _endTargetValue,
//           onEnd: () {
//             print('end');
//           },
//         ),
//       ],
//     ));
//   }
// }
//  */