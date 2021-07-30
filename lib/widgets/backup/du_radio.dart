// import 'package:du_mobile/index.dart';

// class DURadio<T> extends StatelessWidget {
//   /// 라디오 버튼
//   ///
//   /// Example:
//   /// ```dart
//   /// DURadioButton(
//   ///   title: '라디오버튼 AA',
//   ///   value: SingingCharacter.AA,
//   ///   groupValue: _character,
//   ///   onChanged: (value) {
//   ///     setState(() {
//   ///       _character = value!;
//   ///     });
//   ///   },
//   /// )
//   /// ```
//   ///
//   /// See also:
//   ///  * [title], 라디오버튼 이름
//   ///  * [value], 라디오버튼 값
//   ///  * [groupValue], 라디오버튼 그룹값
//   ///  * [onChanged], 라디오버튼 변경 이벤트
//   const DURadio({
//     this.title,
//     required this.value,
//     required this.groupValue,
//     required this.onChanged,
//   });

//   /// 라디오버튼 이름
//   final String? title;

//   /// 라디오버튼 값
//   final T value;

//   /// 라디오버튼 그룹값
//   final T groupValue;

//   /// 라디오버튼 변경 이벤트
//   final Function(dynamic value)? onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return title != null
//         ? ListTile(
//             title: Text(title!),
//             horizontalTitleGap: 8,
//             leading: Radio<T>(
//               value: value,
//               groupValue: groupValue,
//               onChanged: onChanged,
//             ),
//           )
//         : Radio<T>(
//             value: value,
//             groupValue: groupValue,
//             onChanged: onChanged,
//           );
//   }
// }
