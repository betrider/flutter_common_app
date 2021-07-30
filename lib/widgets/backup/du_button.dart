// import 'package:du_mobile/index.dart';
// import 'package:flutter/material.dart';

// /// DU 버튼전용 스타일
// enum DUButtonStyle { NORMAL, UNNORMAL, DELETE }

// // ignore: must_be_immutable
// class DUButton extends StatelessWidget {
//   /// 버튼 원형 24사이즈
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fc5a2be1a-e7ab-4062-b711-849be1cb264b%2F_2021-04-29__9.45.33.png?table=block&id=aa3d8404-4a75-49d8-baa0-52fd6d992aab&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fdf844665-341c-4a13-85a1-55bec593af76%2FUntitled.png?table=block&id=6ed85716-e306-42bc-808e-af0bc4add21f&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.circleElevated24(
//   ///   text: '중복확인',
//   ///   onPressed: () {},
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [text], 버튼 텍스트
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///  * [width], 버튼 가로 고정사이즈
//   ///  * [backgroundColor], 버튼 백그라운드 색상
//   ///  * [duButtonStyle], 버튼 스타일 속성
//   ///
//   DUButton.circleElevated24({
//     required this.text,
//     required this.onPressed,
//     this.textStyle = const TextStyle(fontSize: 12),
//     Color? backgroundColor,
//     this.duButtonStyle = DUButtonStyle.NORMAL,
//     this.width,
//   }) : widget = _CircleElevated24(
//           text: text,
//           onPressed: onPressed,
//           textStyle: textStyle!,
//           duButtonStyle: duButtonStyle!,
//           backgroundColor: backgroundColor,
//           width: width,
//           height: 24,
//         );

//   /// 버튼 네모 24사이즈
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F92aaf4fa-aa44-438c-b929-6fc13f726092%2F_2021-04-29__9.45.01.png?table=block&id=5b3d3886-d94a-4748-aef1-4185fe0026c3&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.squareElevated24(
//   ///   text: '수업보기',
//   ///   onPressed: () {},
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [text], 버튼 텍스트
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///  * [width], 버튼 가로 고정사이즈
//   ///  * [backgroundColor], 버튼 백그라운드 색상
//   ///  * [duButtonStyle], 버튼 스타일 속성
//   ///
//   DUButton.squareElevated24({
//     required this.text,
//     required this.onPressed,
//     this.textStyle = const TextStyle(fontSize: 12),
//     Color? backgroundColor,
//     this.duButtonStyle = DUButtonStyle.NORMAL,
//     this.width,
//   }) : widget = _SquareElevated24(
//           text: text,
//           onPressed: onPressed,
//           textStyle: textStyle!,
//           duButtonStyle: duButtonStyle!,
//           backgroundColor: backgroundColor,
//           width: width,
//           height: 24,
//         );

//   /// 아웃라인 버튼 원형 24사이즈
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F91643972-1e7a-4929-a06f-2b0d88e97488%2FUntitled.png?table=block&id=0c99bb70-764a-47ad-b288-16fa9a5a027a&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.circleOutlined24(
//   ///   text: '장바구니',
//   ///   onPressed: () {},
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [text], 버튼 텍스트
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///  * [width], 버튼 가로 고정사이즈
//   ///  * [backgroundColor], 버튼 백그라운드 색상
//   ///
//   DUButton.circleOutlined24({
//     required this.text,
//     required this.onPressed,
//     this.textStyle = const TextStyle(fontSize: 12),
//     Color? outlinedColor,
//     this.width,
//   })  : widget = _SquareOutlined24(
//           text: text,
//           onPressed: onPressed,
//           textStyle: textStyle!,
//           outlinedColor: outlinedColor,
//           width: width,
//           height: 24,
//         ),
//         duButtonStyle = null;

//   /// 버튼 네모 30사이즈
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F864c6ebe-b42c-43d3-a1bc-7662d16b32b6%2FUntitled.png?table=block&id=42cf9995-4382-4ca5-bc00-278d3cf5e634&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fad2f76c6-bfff-430a-87d5-649d36b07637%2FUntitled.png?table=block&id=0763d57c-37de-4292-96d1-fd8b9406b350&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.squareElevated30(
//   ///   text: '방과후 수업',
//   ///   onPressed: () {},
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [text], 버튼 텍스트
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///  * [width], 버튼 가로 고정사이즈
//   ///  * [backgroundColor], 버튼 백그라운드 색상
//   ///  * [duButtonStyle], 버튼 스타일 속성
//   ///
//   DUButton.squareElevated30({
//     required this.text,
//     required this.onPressed,
//     this.textStyle = const TextStyle(fontSize: 14),
//     Color? backgroundColor,
//     this.duButtonStyle = DUButtonStyle.NORMAL,
//     this.width,
//   }) : widget = _SquareElevated30(
//           text: text,
//           onPressed: onPressed,
//           textStyle: textStyle!,
//           duButtonStyle: duButtonStyle!,
//           backgroundColor: backgroundColor,
//           width: width,
//           height: 30,
//         );

//   /// 버튼 네모 36사이즈
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fb9f25709-a808-49ad-af9a-38cbf3144d1b%2FUntitled.png?table=block&id=8a87a89d-1861-4073-965a-a32cb797a095&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.squareElevated36(
//   ///   text: '상품그룹',
//   ///   onPressed: () {},
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [text], 버튼 텍스트
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///  * [width], 버튼 가로 고정사이즈
//   ///  * [backgroundColor], 버튼 백그라운드 색상
//   ///  * [duButtonStyle], 버튼 스타일 속성
//   ///
//   DUButton.squareElevated36({
//     required this.text,
//     required this.onPressed,
//     this.textStyle = const TextStyle(fontSize: 14),
//     Color? backgroundColor,
//     this.duButtonStyle = DUButtonStyle.NORMAL,
//     this.width,
//   }) : widget = _SquareElevated36(
//           text: text,
//           onPressed: onPressed,
//           textStyle: textStyle!,
//           duButtonStyle: duButtonStyle!,
//           backgroundColor: backgroundColor,
//           width: width,
//           height: 36,
//         );

//   /// 버튼 네모 40사이즈
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fd75f088f-8dbb-40de-9c6b-3e1a206887c8%2FUntitled.png?table=block&id=9d6b6909-cf8e-488a-948e-6949b516664d&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.squareElevated40(
//   ///   text: '신용카드',
//   ///   onPressed: () {},
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [text], 버튼 텍스트
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///  * [width], 버튼 가로 고정사이즈
//   ///  * [backgroundColor], 버튼 백그라운드 색상
//   ///  * [duButtonStyle], 버튼 스타일 속성
//   ///
//   DUButton.squareElevated40({
//     required this.text,
//     required this.onPressed,
//     this.textStyle = const TextStyle(fontSize: 14),
//     Color? backgroundColor,
//     this.duButtonStyle = DUButtonStyle.NORMAL,
//     this.width,
//   }) : widget = _SquareElevated40(
//           text: text,
//           onPressed: onPressed,
//           textStyle: textStyle!,
//           duButtonStyle: duButtonStyle!,
//           backgroundColor: backgroundColor,
//           width: width,
//           height: 40,
//         );

//   /// 버튼 네모 48사이즈
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F4f61b7b1-d8bb-4558-8d36-d1839072854c%2FUntitled.png?table=block&id=a63e50f3-8588-4862-b9f6-9a551fd2545b&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.squareElevated48(
//   ///   text: '동의',
//   ///   onPressed: () {},
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [text], 버튼 텍스트
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///  * [backgroundColor], 버튼 백그라운드 색상
//   ///  * [width], 버튼 가로 고정사이즈
//   ///  * [duButtonStyle], 버튼 스타일 속성
//   ///
//   DUButton.squareElevated48({
//     required this.text,
//     required this.onPressed,
//     Color? backgroundColor,
//     this.textStyle = const TextStyle(fontSize: 16),
//     this.duButtonStyle = DUButtonStyle.NORMAL,
//     this.width,
//   }) : widget = _SquareElevated48(
//           text: text,
//           textStyle: textStyle!,
//           onPressed: onPressed,
//           duButtonStyle: duButtonStyle!,
//           backgroundColor: backgroundColor,
//           width: width,
//           height: 48,
//         );

//   /// 버튼 네모 48사이즈
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F9fe1acf8-63a7-4aa3-a34e-e4959b6b4733%2FUntitled.png?table=block&id=4e213af7-1543-4007-8421-e64a0cffe9c4&width=2650&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.squareOutlined48(
//   ///   text: '장바구니',
//   ///   onPressed: () {},
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [text], 버튼 텍스트
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///  * [outlinedColor], 버튼 가장자리 색상
//   ///  * [width], 버튼 가로 고정사이즈
//   ///  * [duButtonStyle], 버튼 스타일 속성
//   ///
//   DUButton.squareOutlined48({
//     required this.text,
//     required this.onPressed,
//     this.textStyle = const TextStyle(fontSize: 16),
//     Color? outlinedColor,
//     this.width,
//   })  : widget = _SquareOutlined48(
//           text: text,
//           onPressed: onPressed,
//           textStyle: textStyle!,
//           outlinedColor: outlinedColor,
//           width: width,
//           height: 48,
//         ),
//         duButtonStyle = null;

//   /// 버튼 네모 56사이즈
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F9fe1acf8-63a7-4aa3-a34e-e4959b6b4733%2FUntitled.png?table=block&id=4e213af7-1543-4007-8421-e64a0cffe9c4&width=2650&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.squareOutlined56(
//   ///   text: '장바구니',
//   ///   onPressed: () {},
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [text], 버튼 텍스트
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///  * [outlinedColor], 버튼 가장자리 색상
//   ///  * [width], 버튼 가로 고정사이즈
//   ///  * [duButtonStyle], 버튼 스타일 속성
//   ///
//   DUButton.squareOutlined56({
//     required this.text,
//     required this.onPressed,
//     this.textStyle = const TextStyle(fontSize: 16),
//     Color? outlinedColor,
//     this.width,
//   })  : widget = _SquareOutlined56(
//           text: text,
//           onPressed: onPressed,
//           textStyle: textStyle!,
//           outlinedColor: outlinedColor,
//           width: width,
//           height: 56,
//         ),
//         duButtonStyle = null;

//   /// 이미지 메뉴 버튼
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F84071b49-65e1-4991-9a02-c8d7d25dafb5%2FUntitled.png?table=block&id=214f8b2e-7bfe-4864-83d8-14dcf9e72666&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUButton.bottomTitleImageButton(
//   ///   imagePath: DUIcons.imgMyProfile,
//   ///   text: "내 프로필",
//   ///   onPressed: (){}
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 경로
//   ///  * [text], 이미지 제목
//   ///  * [onPressed], 버튼 클릭 이벤트
//   ///
//   DUButton.bottomTitleImageButton({
//     required String? imagePath,
//     required this.text,
//     required this.onPressed,
//     this.textStyle = DUTextStyle.black_2D2D2D_11,
//   })  : widget = _BottomTitleButton(
//           imagePath: imagePath,
//           text: text,
//           onPressed: onPressed,
//           textStyle: textStyle!,
//           height: 48,
//         ),
//         width = null,
//         duButtonStyle = null;

//   ///버튼 텍스트
//   final String? text;

//   ///버튼 클릭 이벤트
//   final void Function()? onPressed;

//   ///버튼 가로 길이
//   final double? width;

//   //버튼 텍스트 스타일
//   final TextStyle? textStyle;

//   //삭제&해제용 버튼 여부
//   final DUButtonStyle? duButtonStyle;

//   //common widget
//   final Widget widget;

//   @override
//   Widget build(BuildContext context) {
//     return widget;
//   }
// }

// class _BottomTitleButton extends StatelessWidget {
//   const _BottomTitleButton({
//     Key? key,
//     required this.onPressed,
//     required this.height,
//     required this.imagePath,
//     required this.text,
//     required this.textStyle,
//   }) : super(key: key);

//   final void Function()? onPressed;
//   final double? height;
//   final String? imagePath;
//   final String? text;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints(
//         minHeight: height!,
//       ),
//       child: InkWell(
//         onTap: onPressed,
//         child: Column(
//           children: <Widget>[
//             duGetIconWidget(
//               imagePath,
//             ),
//             SizedBox(
//               height: 6,
//             ),
//             Text(
//               text.toString(),
//               style: textStyle,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _SquareOutlined48 extends StatelessWidget {
//   const _SquareOutlined48({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.text,
//     required this.onPressed,
//     required this.outlinedColor,
//     required this.textStyle,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? text;
//   final void Function()? onPressed;
//   final Color? outlinedColor;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: OutlinedButton(
//         child: Text(
//           text.toString(),
//           style: textStyle,
//         ),
//         onPressed: onPressed,
//         style: ButtonStyle(
//           side: outlinedColor == null
//               ? null
//               : MaterialStateProperty.all(
//                   BorderSide(color: outlinedColor!),
//                 ),
//         ),
//       ),
//     );
//   }
// }

// class _SquareOutlined56 extends StatelessWidget {
//   const _SquareOutlined56({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.text,
//     required this.onPressed,
//     required this.outlinedColor,
//     required this.textStyle,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? text;
//   final void Function()? onPressed;
//   final Color? outlinedColor;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: OutlinedButton(
//         child: Text(
//           text.toString(),
//           style: textStyle,
//         ),
//         onPressed: onPressed,
//         style: ButtonStyle(
//           side: outlinedColor == null
//               ? null
//               : MaterialStateProperty.all(
//                   BorderSide(color: outlinedColor!),
//                 ),
//         ),
//       ),
//     );
//   }
// }

// class _SquareElevated48 extends StatelessWidget {
//   const _SquareElevated48({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.text,
//     required this.onPressed,
//     required this.duButtonStyle,
//     required this.backgroundColor,
//     required this.textStyle,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? text;
//   final void Function()? onPressed;
//   final DUButtonStyle duButtonStyle;
//   final Color? backgroundColor;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: ElevatedButton(
//         child: Text(
//           text.toString(),
//           style: textStyle,
//         ),
//         onPressed: onPressed,
//         style: duButtonStyle == DUButtonStyle.NORMAL
//             ? _getNormalSquareButtonStyle(backgroundColor)
//             : duButtonStyle == DUButtonStyle.UNNORMAL
//                 ? _getUnNormalSquareButtonStyle()
//                 : _getDeleteSquareButtonStyle(),
//       ),
//     );
//   }
// }

// class _SquareElevated40 extends StatelessWidget {
//   const _SquareElevated40({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.text,
//     required this.onPressed,
//     required this.duButtonStyle,
//     required this.backgroundColor,
//     required this.textStyle,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? text;
//   final void Function()? onPressed;
//   final DUButtonStyle duButtonStyle;
//   final Color? backgroundColor;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: ElevatedButton(
//         child: Text(
//           text.toString(),
//           style: textStyle,
//         ),
//         onPressed: onPressed,
//         style: duButtonStyle == DUButtonStyle.NORMAL
//             ? _getNormalSquareButtonStyle(backgroundColor)
//             : duButtonStyle == DUButtonStyle.UNNORMAL
//                 ? _getUnNormalSquareButtonStyle()
//                 : _getDeleteSquareButtonStyle(),
//       ),
//     );
//   }
// }

// class _SquareElevated36 extends StatelessWidget {
//   const _SquareElevated36({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.text,
//     required this.onPressed,
//     required this.duButtonStyle,
//     required this.backgroundColor,
//     required this.textStyle,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? text;
//   final void Function()? onPressed;
//   final DUButtonStyle duButtonStyle;
//   final Color? backgroundColor;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: ElevatedButton(
//         child: Text(
//           text.toString(),
//           style: textStyle,
//         ),
//         onPressed: onPressed,
//         style: duButtonStyle == DUButtonStyle.NORMAL
//             ? _getNormalSquareButtonStyle(backgroundColor)
//             : duButtonStyle == DUButtonStyle.UNNORMAL
//                 ? _getUnNormalSquareButtonStyle()
//                 : _getDeleteSquareButtonStyle(),
//       ),
//     );
//   }
// }

// class _SquareElevated30 extends StatelessWidget {
//   const _SquareElevated30({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.text,
//     required this.onPressed,
//     required this.duButtonStyle,
//     required this.backgroundColor,
//     required this.textStyle,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? text;
//   final void Function()? onPressed;
//   final DUButtonStyle duButtonStyle;
//   final Color? backgroundColor;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: ElevatedButton(
//         child: Text(
//           text.toString(),
//           style: textStyle,
//         ),
//         onPressed: onPressed,
//         style: duButtonStyle == DUButtonStyle.NORMAL
//             ? _getNormalSquareButtonStyle(backgroundColor)
//             : duButtonStyle == DUButtonStyle.UNNORMAL
//                 ? _getUnNormalSquareButtonStyle()
//                 : _getDeleteSquareButtonStyle(),
//       ),
//     );
//   }
// }

// class _SquareOutlined24 extends StatelessWidget {
//   const _SquareOutlined24({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.text,
//     required this.onPressed,
//     required this.outlinedColor,
//     required this.textStyle,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? text;
//   final void Function()? onPressed;
//   final Color? outlinedColor;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: OutlinedButton(
//         child: Text(
//           text.toString(),
//           style: textStyle,
//         ),
//         onPressed: onPressed,
//         style: ButtonStyle(
//           side: outlinedColor == null
//               ? null
//               : MaterialStateProperty.all(BorderSide(color: outlinedColor!)),
//           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(18.0),
//           )),
//         ),
//       ),
//     );
//   }
// }

// class _SquareElevated24 extends StatelessWidget {
//   const _SquareElevated24({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.text,
//     required this.onPressed,
//     required this.duButtonStyle,
//     required this.backgroundColor,
//     required this.textStyle,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? text;
//   final void Function()? onPressed;
//   final DUButtonStyle duButtonStyle;
//   final Color? backgroundColor;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: ElevatedButton(
//         child: Text(
//           text.toString(),
//           style: textStyle,
//         ),
//         onPressed: onPressed,
//         style: duButtonStyle == DUButtonStyle.NORMAL
//             ? _getNormalSquareButtonStyle(backgroundColor)
//             : duButtonStyle == DUButtonStyle.UNNORMAL
//                 ? _getUnNormalSquareButtonStyle()
//                 : _getDeleteSquareButtonStyle(),
//       ),
//     );
//   }
// }

// class _CircleElevated24 extends StatelessWidget {
//   const _CircleElevated24({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.text,
//     required this.onPressed,
//     required this.duButtonStyle,
//     required this.backgroundColor,
//     required this.textStyle,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? text;
//   final void Function()? onPressed;
//   final DUButtonStyle duButtonStyle;
//   final Color? backgroundColor;
//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: ElevatedButton(
//         child: Text(
//           text.toString(),
//           style: textStyle,
//         ),
//         onPressed: onPressed,
//         style: duButtonStyle == DUButtonStyle.NORMAL
//             ? _getNormalCircleButtonStyle(backgroundColor)
//             : duButtonStyle == DUButtonStyle.UNNORMAL
//                 ? _getUnNormalCircleButtonStyle()
//                 : _getDeleteCircleButtonStyle(),
//       ),
//     );
//   }
// }

// ButtonStyle _getNormalSquareButtonStyle(Color? backgroundColor) {
//   return ButtonStyle(
//     backgroundColor: MaterialStateProperty.all(backgroundColor),
//   );
// }

// ButtonStyle _getUnNormalSquareButtonStyle() {
//   return ButtonStyle(
//     elevation: MaterialStateProperty.all(0),
//     foregroundColor: MaterialStateProperty.resolveWith<Color>(
//       (Set<MaterialState> states) {
//         if (states.contains(MaterialState.disabled))
//           return DUColors.grey_8F8F8F; //Color(0xFF8F8F8F)
//         else
//           return DUColors.grey_8F8F8F; //Color(0xFF8F8F8F)
//       },
//     ),
//     backgroundColor: MaterialStateProperty.all(DUColors.grey_EFEFEF),
//   );
// }

// ButtonStyle _getDeleteSquareButtonStyle() {
//   return ButtonStyle(
//     elevation: MaterialStateProperty.all(0),
//     foregroundColor: MaterialStateProperty.resolveWith<Color>(
//       (Set<MaterialState> states) {
//         if (states.contains(MaterialState.disabled))
//           return DUColors.grey_8F8F8F; //Color(0xFF8F8F8F)
//         else
//           return DUColors.red_E02020; //Color(0xFFE02020)
//       },
//     ),
//     backgroundColor: MaterialStateProperty.all(DUColors.grey_EFEFEF),
//   );
// }

// ButtonStyle _getNormalCircleButtonStyle(Color? backgroundColor) {
//   return ButtonStyle(
//     backgroundColor: MaterialStateProperty.all(backgroundColor),
//     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//       RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(18.0),
//       ),
//     ),
//   );
// }

// ButtonStyle _getUnNormalCircleButtonStyle() {
//   return ButtonStyle(
//     elevation: MaterialStateProperty.all(0),
//     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//       RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(18.0),
//       ),
//     ),
//     foregroundColor: MaterialStateProperty.resolveWith<Color>(
//       (Set<MaterialState> states) {
//         if (states.contains(MaterialState.disabled))
//           return DUColors.grey_8F8F8F; //Color(0xFF8F8F8F)
//         else
//           return DUColors.grey_8F8F8F; //Color(0xFF8F8F8F)
//       },
//     ),
//     backgroundColor: MaterialStateProperty.all(DUColors.grey_EFEFEF),
//   );
// }

// ButtonStyle _getDeleteCircleButtonStyle() {
//   return ButtonStyle(
//     elevation: MaterialStateProperty.all(0),
//     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//       RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(18.0),
//       ),
//     ),
//     foregroundColor: MaterialStateProperty.resolveWith<Color>(
//       (Set<MaterialState> states) {
//         if (states.contains(MaterialState.disabled))
//           return DUColors.grey_8F8F8F; //Color(0xFF8F8F8F)
//         else
//           return DUColors.red_E02020; //Color(0xFFE02020)
//       },
//     ),
//     backgroundColor: MaterialStateProperty.all(DUColors.grey_EFEFEF),
//   );
// }
