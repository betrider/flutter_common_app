// import 'package:flutter/material.dart';
// import 'package:du_mobile/app/themes/themes.dart';

// class DUTitle extends StatelessWidget {
//   /// 타이틀 30 타입
//   ///
//   /// Size 30
//   ///
//   /// Color black
//   DUTitle.size30(this.text)
//       : isGrey = false,
//         widget = _Size30(text: text);

//   /// 타이틀 24 타입
//   ///
//   /// Size 24
//   ///
//   /// Color black
//   DUTitle.size24(this.text)
//       : isGrey = false,
//         widget = _Size24(text: text);

//   /// 타이틀 20 타입
//   ///
//   /// Size 20
//   ///
//   /// Color black
//   DUTitle.size20(this.text)
//       : isGrey = false,
//         widget = _Size20(text: text);

//   /// 서브타이틀 타입
//   ///
//   /// Size 16
//   ///
//   /// Color black or grey
//   DUTitle.size16(this.text, {this.isGrey = false})
//       : widget = _Size16(text: text, isGrey: isGrey);

//   /// 서브타이틀 타입
//   ///
//   /// Size 14
//   ///
//   /// Color black or grey
//   DUTitle.size14(this.text, {this.isGrey = false})
//       : widget = _Size14(text: text, isGrey: isGrey);

//   /// 서브타이틀
//   ///
//   /// Size 12
//   ///
//   /// Color black or grey
//   DUTitle.size12(this.text, {this.isGrey = false})
//       : widget = _Size12(text: text, isGrey: isGrey);

//   /// 텍스트
//   final String? text;

//   /// 텍스트 회색 사용여부(기존:false)
//   final bool isGrey;

//   /// common widget
//   final Widget widget;

//   @override
//   Widget build(BuildContext context) {
//     return widget;
//   }
// }

// class _Size12 extends StatelessWidget {
//   const _Size12({
//     required this.text,
//     required this.isGrey,
//   });

//   final String? text;
//   final bool isGrey;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text.toString(),
//       // style: isGrey ? DUTextStyle.grey_8F8F8F_12 : DUTextStyle.black_2D2D2D_12,
//       style: isGrey ? DUTextStyle.grey_8F8F8F_12 : DUTextStyle.black_2D2D2D_12,
//     );
//   }
// }

// class _Size14 extends StatelessWidget {
//   const _Size14({
//     required this.text,
//     required this.isGrey,
//   });

//   final String? text;
//   final bool isGrey;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text.toString(),
//       style: isGrey ? DUTextStyle.grey_8F8F8F_14 : DUTextStyle.black_2D2D2D_14,
//     );
//   }
// }

// class _Size16 extends StatelessWidget {
//   const _Size16({
//     required this.text,
//     required this.isGrey,
//   });

//   final String? text;
//   final bool isGrey;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text.toString(),
//       style: isGrey ? DUTextStyle.grey_8F8F8F_16 : DUTextStyle.black_2D2D2D_16,
//     );
//   }
// }

// class _Size20 extends StatelessWidget {
//   const _Size20({
//     required this.text,
//   });

//   final String? text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text.toString(),
//       style: DUTextStyle.black_2D2D2D_20_w400,
//     );
//   }
// }

// class _Size24 extends StatelessWidget {
//   const _Size24({
//     required this.text,
//   });

//   final String? text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(text.toString(), style: DUTextStyle.black_2D2D2D_30);
//   }
// }

// class _Size30 extends StatelessWidget {
//   const _Size30({
//     required this.text,
//   });

//   final String? text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(text.toString(), style: DUTextStyle.black_2D2D2D_30);
//   }
// }
