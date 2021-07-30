// import 'package:du_mobile/index.dart';

// class DUTextFieldContainer extends StatefulWidget {
//   DUTextFieldContainer({
//     this.title = '요청사항',
//     this.hintText = '요청하고 싶은 내용을 입력해주세요.',
//     this.maxLength = 200,
//     this.onChanged,
//   })  : maxLine = 5,
//         errText = null,
//         scrollbar = true,
//         _widget = _DUFillState();

//   DUTextFieldContainer.bottomLine(
//     this.title, {
//     this.hintText = "",
//     this.maxLength = 200,
//     this.onChanged,
//     this.maxLine = 5,
//     this.errText,
//     this.scrollbar = true,
//   }) : _widget = _DUBottomLineState();

//   /// 제목
//   final String title;

//   /// 힌트 내용
//   final String hintText;

//   /// 입력 최대 길이
//   final int maxLength;

//   /// 기본 입력 라인
//   final int maxLine;

//   /// 출력 위젯
//   final State _widget;

//   /// 에러 메세지
//   final String? errText;

//   /// 텍스트 수정 후 콜백 이벤트
//   final ValueChanged<String>? onChanged;

//   /// 스크롤바 기능 여부 (default : true)
//   final bool scrollbar;

//   @override
//   State createState() => _widget;
// }

// class _DUFillState extends State<DUTextFieldContainer> {
//   TextEditingController controller = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     controller.addListener(() {
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           widget.title,
//           style: DUTextStyle.grey_8F8F8F_12,
//         ),
//         SizedBox(
//           height: 8,
//         ),
//         Scrollbar(
//           child: Container(
//             height: 96,
//             color: DUColors.grey_F8F8F8,
//             padding: EdgeInsets.all(8.0),
//             child: TextField(
//               onChanged: widget.onChanged,
//               style: DUTextStyle.black_2D2D2D_12,
//               keyboardType: TextInputType.multiline,
//               maxLength: widget.maxLength,
//               maxLines: widget.maxLine,
//               controller: controller,
//               decoration: new InputDecoration(
//                 contentPadding: EdgeInsets.symmetric(vertical: 0),
//                 hintStyle: DUTextStyle.grey_B7B7B7_12,
//                 border: InputBorder.none,
//                 hintText: widget.hintText,
//                 counterText: '',
//               ),
//             ),
//           ),
//         ),
//         Align(
//             alignment: Alignment.centerRight,
//             child: Text(
//               controller.text.length.toString() +
//                   '/' +
//                   widget.maxLength.toString(),
//               style: DUTextStyle.grey_8F8F8F_12,
//             )),
//       ],
//     );
//   }
// }

// class _DUBottomLineState extends State<DUTextFieldContainer> {
//   TextEditingController controller = TextEditingController();
//   int numLines = 0;

//   @override
//   void initState() {
//     super.initState();
//     controller.addListener(() {
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   Widget _textField() {
//     return TextField(
//       onChanged: widget.onChanged,
//       style: DUTextStyle.black_2D2D2D_12,
//       keyboardType: TextInputType.multiline,
//       maxLength: widget.maxLength,
//       maxLines: widget.maxLine,
//       controller: controller,
//       decoration: new InputDecoration(
//         contentPadding: EdgeInsets.only(bottom: 15),
//         hintStyle: DUTextStyle.grey_B7B7B7_12,
//         hintText: widget.hintText,
//         errorText: widget.errText,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           widget.title,
//           style: DUTextStyle.grey_8F8F8F_12,
//         ),
//         SizedBox(
//           height: 8,
//         ),
//         widget.scrollbar? Scrollbar(child: _textField())
//             : _textField(),
//       ],
//     );
//   }
// }
