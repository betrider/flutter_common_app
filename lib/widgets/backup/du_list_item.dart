// import 'package:du_mobile/index.dart';

// class DUListItem extends StatelessWidget {
//   /// *설명
//   /// *메뉴
//   /// *기타

//   /// 설명 리스트 아이템 20타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fc8842f1c-a80e-4cef-bfbe-1a8b6ef8b224%2FUntitled.png?table=block&id=ef0902db-5a4f-42a4-a808-43f9f0c7dc8f&width=2650&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListItem.infoType20(
//   ///   title: '타이틀 영역',
//   ///   content: '내용 영역',
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [title], 제목
//   ///  * [trailing], 후열
//   ///  * [onTap], 클릭 이벤트
//   ///
//   DUListItem.infoType20(
//       {this.title,
//       String? content,
//       TextAlign? contentAlign,
//       this.trailing,
//       this.onTap,
//       this.padding = const EdgeInsets.symmetric(vertical: 8),
//       this.isLine = false,
//       this.isEffect = true})
//       : widget = _InfoType20(
//           onTap: onTap,
//           padding: padding,
//           isLine: isLine,
//           isEffect: isEffect,
//           title: title,
//           content: content,
//           contentAlign: contentAlign,
//           trailing: trailing,
//         );

//   /// 설명 리스트 아이템 16타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F83ed31a8-3a2b-44a9-a796-9141443ee63d%2FUntitled.png?table=block&id=49935540-c287-4e50-a287-8e8327bac468&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListItem.infoType16(
//   ///   title: '타이틀 영역',
//   ///   content: '내용 영역',
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [title], 제목
//   ///  * [trailing], 후열
//   ///  * [onTap], 클릭 이벤트
//   ///
//   DUListItem.infoType16(
//       {this.title,
//       this.trailing,
//       this.onTap,
//       this.padding = const EdgeInsets.symmetric(vertical: 8),
//       this.isLine = false,
//       this.isEffect = true})
//       : widget = _InfoType16(
//           onTap: onTap,
//           padding: padding,
//           isLine: isLine,
//           isEffect: isEffect,
//           title: title,
//           trailing: trailing,
//         );

//   /// 체크여부 리스트 아이템 16타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Feeee5f8d-f763-4ded-9d93-78ad95473bf7%2FUntitled.png?table=block&id=7083ea03-1ce3-4242-9a36-f9bf3b3fc9b3&spaceId=d70ee7e1-e708-4ce8-a027-8aa2ca80df25&width=3360&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fc2df81a0-f249-4742-bbbf-5e0a05c9ab4c%2FUntitled.png?table=block&id=b255dec8-2f8e-4ec2-b659-4694a6c19234&spaceId=d70ee7e1-e708-4ce8-a027-8aa2ca80df25&width=3360&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListItem.infoTypeCheck16(
//   ///   title: '타이틀 영역',
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [title], 제목
//   ///  * [onChange], 이벤트 값
//   ///  * [isLine], 하단 라인 여부
//   ///  * [initValue], 초기값
//   ///
//   DUListItem.infoTypeCheck16(
//       {this.title,
//       this.padding,
//       bool? initValue,
//       ValueChanged<bool>? onChanged,
//       this.isLine = false,
//       this.isEffect = true})
//       : widget = _InfoTypeCheck16(
//           title: title!,
//           isLine: isLine,
//           isEffect: isEffect,
//           padding: padding,
//           onChanged: onChanged,
//           initValue: initValue ?? false,
//         ),
//         onTap = null,
//         trailing = null;

//   /// 체크여부 리스트 아이템 16타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Feeee5f8d-f763-4ded-9d93-78ad95473bf7%2FUntitled.png?table=block&id=7083ea03-1ce3-4242-9a36-f9bf3b3fc9b3&spaceId=d70ee7e1-e708-4ce8-a027-8aa2ca80df25&width=3360&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fc2df81a0-f249-4742-bbbf-5e0a05c9ab4c%2FUntitled.png?table=block&id=b255dec8-2f8e-4ec2-b659-4694a6c19234&spaceId=d70ee7e1-e708-4ce8-a027-8aa2ca80df25&width=3360&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListItem.infoTypeCheck16(
//   ///   title: '타이틀 영역',
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [title], 제목
//   ///  * [onChange], 이벤트 값
//   ///  * [isLine], 하단 라인 여부
//   ///  * [initValue], 초기값
//   ///
//   DUListItem.infoTypeChoice16({
//     required Map<String, String> radioMap,
//     this.padding,
//     required ValueChanged<String> onChanged,
//     this.isLine = false,
//   })  : widget = _InfoTypeChoice16(
//           radioMap: radioMap,
//           isLine: isLine,
//           padding: padding,
//           onChanged: onChanged,
//         ),
//         title = '',
//         onTap = null,
//         trailing = null,
//         isEffect = false;

//   /// 설명 리스트 아이템 14타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F34027b60-08da-48ff-ace7-787e6e75b993%2FUntitled.png?table=block&id=f9e4a597-7a51-4262-a932-6a1a501c3e0b&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fcd2961fd-406c-40c8-bdb1-c370fc5b3fe5%2FUntitled.png?table=block&id=8b898382-b3fd-4dbd-80d3-4973541b9fb7&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListItem.infoType14(
//   ///   title: '타이틀 영역',
//   ///   content: '내용 영역',
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [title], 제목
//   ///  * [content], 내용
//   ///  * [contentAlign], 내용 정렬방법
//   ///  * [trailing], 후열
//   ///  * [onTap], 클릭 이벤트
//   ///
//   DUListItem.infoType14(
//       {this.title,
//       String? content,
//       TextAlign? contentAlign,
//       this.trailing,
//       this.onTap,
//       this.padding = const EdgeInsets.symmetric(vertical: 8),
//       this.isLine = false,
//       this.isEffect = true})
//       : widget = _InfoType14(
//           onTap: onTap,
//           padding: padding,
//           isLine: isLine,
//           isEffect: isEffect,
//           title: title,
//           content: content,
//           contentAlign: contentAlign,
//           trailing: trailing,
//         );

//   /// 설명 리스트 아이템 12타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fcfc537cf-b909-4428-97f9-6c2cb028ec4e%2FUntitled.png?table=block&id=df8a4e5c-61d9-4233-84ac-5c99fa9bd8bf&width=2650&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListItem.infoType14(
//   ///   title: '타이틀 영역',
//   ///   content: '내용 영역',
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [title], 제목
//   ///  * [content], 내용
//   ///  * [contentAlign], 내용 정렬방법
//   ///  * [trailing], 후열
//   ///  * [onTap], 클릭 이벤트
//   ///
//   DUListItem.infoType12(
//       {this.title,
//       String? content,
//       TextAlign? contentAlign,
//       this.trailing,
//       this.onTap,
//       this.padding = const EdgeInsets.symmetric(vertical: 8),
//       this.isLine = false,
//       this.isEffect = true})
//       : widget = _InfoType12(
//           onTap: onTap,
//           padding: padding,
//           isLine: isLine,
//           isEffect: isEffect,
//           title: title,
//           content: content,
//           contentAlign: contentAlign,
//           trailing: trailing,
//         );

//   /// 메뉴 리스트 아이템 이미지+텍스트 타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F40cf0008-81a8-4982-a620-af3b9be2767f%2FUntitled.png?table=block&id=535f3f7e-069c-47ce-a1a2-2e477c702db2&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListItem.menuTypeImageText(
//   ///   imagePath: DUIcons.svgNotice,
//   ///   title: '공지사항',
//   ///   onTap: (){}
//   /// )
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 경로
//   ///  * [title], 제목
//   ///  * [onTap], 클릭 이벤트
//   ///
//   DUListItem.menuTypeImageText(
//       {String? imagePath,
//       this.title,
//       this.onTap,
//       this.padding = const EdgeInsets.symmetric(horizontal: 16),
//       this.isLine = false,
//       this.isEffect = true})
//       : widget = _MenuTypeImageText(
//           onTap: onTap,
//           padding: padding,
//           isLine: isLine,
//           isEffect: isEffect,
//           imagePath: imagePath,
//           title: title,
//         ),
//         trailing = '';

//   /// 메뉴 리스트 아이템 텍스트 타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fa3dc1d6f-e2d8-43d5-bad8-0ff96f645215%2FUntitled.png?table=block&id=188db82d-34ac-4eb4-9b99-68a4b32bacf8&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListItem.menuTypeText(
//   ///   title: '공지사항',
//   ///   onTap: (){}
//   /// )
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [title], 제목
//   ///  * [onTap], 클릭 이벤트
//   ///
//   DUListItem.menuTypeText({
//     this.title,
//     this.onTap,
//     this.padding = const EdgeInsets.symmetric(horizontal: 16),
//     this.isLine = false,
//     this.isEffect = true,
//     TextStyle? titleTextColor,
//   })  : widget = _MenuTypeText(
//           onTap: onTap,
//           padding: padding,
//           isLine: isLine,
//           isEffect: isEffect,
//           title: title,
//           titleTextColor: titleTextColor,
//         ),
//         trailing = '';

//   /// 기타 - 인증방법 리스트 아이템 A타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fba9bcab1-2fd9-4242-9595-68e49b90f66d%2FUntitled.png?table=block&id=00ae1b0c-7414-4677-8f7d-9edcee44ec3d&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListItem.otherTypeA(
//   ///   buttonText: '타이틀 영역',
//   ///   onTap: (){}
//   /// )
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [buttonText], 버튼 텍스트
//   ///  * [onTap], 클릭 이벤트
//   ///
//   DUListItem.otherTypeA(
//       {String? buttonText,
//       this.onTap,
//       this.padding = const EdgeInsets.symmetric(vertical: 8),
//       this.isLine = false,
//       this.isEffect = true})
//       : widget = _OtherTypeA(
//           onTap: onTap,
//           padding: padding,
//           isLine: isLine,
//           isEffect: isEffect,
//           buttonText: buttonText,
//         ),
//         title = '',
//         trailing = '';

//   /// 제목
//   final String? title;

//   /// 후열 위젯
//   final dynamic trailing;

//   /// 클릭 이벤트
//   final VoidCallback? onTap;

//   /// 패딩
//   final EdgeInsetsGeometry? padding;

//   /// 라인추가 여부
//   final bool isLine;

//   /// 이펙트 여부
//   final bool isEffect;

//   /// common widget
//   final Widget widget;

//   @override
//   Widget build(BuildContext context) {
//     return widget;
//   }
// }

// class _OtherTypeA extends StatelessWidget {
//   const _OtherTypeA({
//     Key? key,
//     required this.onTap,
//     required this.padding,
//     required this.isLine,
//     required this.isEffect,
//     required this.buttonText,
//   }) : super(key: key);

//   final VoidCallback? onTap;
//   final EdgeInsetsGeometry? padding;
//   final bool isLine;
//   final bool isEffect;
//   final String? buttonText;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Container(
//         padding: padding,
//         constraints: BoxConstraints(minHeight: 40),
//         decoration: isLine
//             ? BoxDecoration(
//                 border: Border(
//                     bottom: BorderSide(width: 1, color: DUColors.grey_EFEFEF)))
//             : null,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               height: 30,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text(buttonText.toString()),
//               ),
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   '미리보기',
//                   style: DUTextStyle.purple_7540EE_14,
//                 ),
//                 SizedBox(width: 4),
//                 SvgPicture.asset(DUIcons.svgDeleteGrey),
//                 SizedBox(width: 4),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _MenuTypeText extends StatelessWidget {
//   const _MenuTypeText({
//     Key? key,
//     required this.onTap,
//     required this.padding,
//     required this.isLine,
//     required this.isEffect,
//     required this.title,
//     required this.titleTextColor,
//   }) : super(key: key);

//   final VoidCallback? onTap;
//   final EdgeInsetsGeometry? padding;
//   final bool isLine;
//   final bool isEffect;
//   final String? title;
//   final TextStyle? titleTextColor;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 48,
//       child: InkWell(
//         onTap: onTap,
//         hoverColor: isEffect ? null : Colors.transparent,
//         highlightColor: isEffect ? null : Colors.transparent,
//         splashColor: isEffect ? null : Colors.transparent,
//         child: Container(
//           padding: padding,
//           constraints: BoxConstraints(minHeight: 40),
//           child: Container(
//             decoration: isLine
//                 ? BoxDecoration(
//                     border: Border(
//                         bottom:
//                             BorderSide(width: 1, color: DUColors.grey_EFEFEF)))
//                 : null,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     title.toString(),
//                     style: titleTextColor == null
//                         ? DUTextStyle.black_2D2D2D_16
//                         : titleTextColor,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _MenuTypeImageText extends StatelessWidget {
//   const _MenuTypeImageText({
//     Key? key,
//     required this.onTap,
//     required this.padding,
//     required this.isLine,
//     required this.isEffect,
//     required this.imagePath,
//     required this.title,
//   }) : super(key: key);

//   final VoidCallback? onTap;
//   final EdgeInsetsGeometry? padding;
//   final bool isLine;
//   final bool isEffect;
//   final String? imagePath;
//   final String? title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 48,
//       child: InkWell(
//         onTap: onTap,
//         hoverColor: isEffect ? null : Colors.transparent,
//         highlightColor: isEffect ? null : Colors.transparent,
//         splashColor: isEffect ? null : Colors.transparent,
//         child: Container(
//           padding: padding!,
//           decoration: isLine
//               ? BoxDecoration(
//                   border: Border(
//                     bottom: BorderSide(width: 1, color: DUColors.grey_EFEFEF),
//                   ),
//                 )
//               : null,
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 40,
//                 height: 40,
//                 child: duGetIconWidget(imagePath),
//               ),
//               SizedBox(
//                 width: 16,
//               ),
//               Expanded(
//                 child: Text(
//                   title.toString(),
//                   style: DUTextStyle.black_2D2D2D_16,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _InfoType12 extends StatelessWidget {
//   const _InfoType12({
//     Key? key,
//     required this.onTap,
//     required this.padding,
//     required this.isLine,
//     required this.isEffect,
//     required this.title,
//     required this.content,
//     required this.contentAlign,
//     required this.trailing,
//   }) : super(key: key);

//   final VoidCallback? onTap;
//   final EdgeInsetsGeometry? padding;
//   final bool isLine;
//   final bool isEffect;
//   final String? title;
//   final String? content;
//   final TextAlign? contentAlign;
//   final dynamic trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Container(
//         padding: padding,
//         constraints: BoxConstraints(minHeight: 40),
//         decoration: isLine
//             ? BoxDecoration(
//                 border: Border(
//                     bottom: BorderSide(width: 1, color: DUColors.grey_EFEFEF)))
//             : null,
//         child: Row(
//           children: [
//             ConstrainedBox(
//               constraints: BoxConstraints(minWidth: 100),
//               child: Text(
//                 title.toString(),
//                 style: DUTextStyle.grey_8F8F8F_14,
//               ),
//             ),
//             Expanded(
//               child: Text(
//                 content.toString(),
//                 style: DUTextStyle.black_2D2D2D_14,
//                 textAlign: contentAlign,
//               ),
//             ),
//             if (trailing != null) ...[
//               SizedBox(width: 16),
//               duGetIconWidget(trailing)
//             ],
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _InfoType14 extends StatelessWidget {
//   const _InfoType14({
//     Key? key,
//     required this.onTap,
//     required this.padding,
//     required this.isLine,
//     required this.isEffect,
//     required this.title,
//     required this.content,
//     required this.contentAlign,
//     required this.trailing,
//   }) : super(key: key);

//   final VoidCallback? onTap;
//   final EdgeInsetsGeometry? padding;
//   final bool isLine;
//   final bool isEffect;
//   final String? title;
//   final String? content;
//   final TextAlign? contentAlign;
//   final dynamic trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Container(
//         padding: padding,
//         constraints: BoxConstraints(minHeight: 40),
//         decoration: isLine
//             ? BoxDecoration(
//                 border: Border(
//                     bottom: BorderSide(width: 1, color: DUColors.grey_EFEFEF)))
//             : null,
//         child: Row(
//           children: [
//             ConstrainedBox(
//               constraints: BoxConstraints(minWidth: 100),
//               child: Text(
//                 title.toString(),
//                 style: DUTextStyle.grey_8F8F8F_14,
//               ),
//             ),
//             Expanded(
//               child: Text(
//                 content.toString(),
//                 style: DUTextStyle.black_2D2D2D_14,
//                 textAlign: contentAlign,
//               ),
//             ),
//             if (trailing != null) ...[
//               SizedBox(width: 16),
//               duGetIconWidget(trailing)
//             ],
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _InfoType16 extends StatelessWidget {
//   const _InfoType16({
//     Key? key,
//     required this.onTap,
//     required this.padding,
//     required this.isLine,
//     required this.isEffect,
//     required this.title,
//     required this.trailing,
//   }) : super(key: key);

//   final VoidCallback? onTap;
//   final EdgeInsetsGeometry? padding;
//   final bool isLine;
//   final bool isEffect;
//   final String? title;
//   final dynamic trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Container(
//         padding: padding,
//         constraints: BoxConstraints(minHeight: 40),
//         decoration: isLine
//             ? BoxDecoration(
//                 border: Border(
//                     bottom: BorderSide(width: 1, color: DUColors.grey_EFEFEF)))
//             : null,
//         child: Row(
//           children: [
//             ConstrainedBox(
//               constraints: BoxConstraints(minWidth: 100),
//               child: Text(
//                 title.toString(),
//                 style: DUTextStyle.black_2D2D2D_16,
//               ),
//             ),
//             Expanded(child: Container()),
//             duGetIconWidget(trailing),
//             // SizedBox(
//             //   width: 5,
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _InfoType20 extends StatelessWidget {
//   const _InfoType20({
//     Key? key,
//     required this.onTap,
//     required this.padding,
//     required this.isLine,
//     required this.isEffect,
//     required this.title,
//     required this.content,
//     required this.contentAlign,
//     required this.trailing,
//   }) : super(key: key);

//   final VoidCallback? onTap;
//   final EdgeInsetsGeometry? padding;
//   final bool isLine;
//   final bool isEffect;
//   final String? title;
//   final String? content;
//   final TextAlign? contentAlign;
//   final dynamic trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Container(
//         padding: padding,
//         constraints: BoxConstraints(minHeight: 40),
//         decoration: isLine
//             ? BoxDecoration(
//                 border: Border(
//                     bottom: BorderSide(width: 1, color: DUColors.grey_EFEFEF)))
//             : null,
//         child: Row(
//           children: [
//             ConstrainedBox(
//               constraints: BoxConstraints(minWidth: 100),
//               child: Text(
//                 title.toString(),
//                 style: DUTextStyle.black_2D2D2D_20_w400,
//               ),
//             ),
//             Expanded(
//               child: Text(
//                 content.toString(),
//                 style: DUTextStyle.grey_8F8F8F_14,
//                 textAlign: contentAlign,
//               ),
//             ),
//             if (trailing != null) ...[
//               SizedBox(width: 8),
//               duGetIconWidget(trailing)
//             ],
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _InfoTypeCheck16 extends StatefulWidget {
//   _InfoTypeCheck16(
//       {required this.title,
//       required this.onChanged,
//       required this.isLine,
//       required this.isEffect,
//       required this.initValue,
//       required this.padding});

//   @override
//   State<StatefulWidget> createState() => _InfoTypeCheck16State();

//   /// 제목
//   final String title;

//   /// 변경 콜백
//   final ValueChanged<bool>? onChanged;

//   /// 패딩
//   final EdgeInsetsGeometry? padding;

//   /// 라인추가 여부
//   final bool isLine;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   ///초기값
//   final bool initValue;
// }

// class _InfoTypeCheck16State extends State<_InfoTypeCheck16> {
//   late bool check;

//   @override
//   void initState() {
//     super.initState();
//     check = widget.initValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         check = !check;
//         setState(() {
//           widget.onChanged!(check);
//         });
//       },
//       hoverColor: widget.isEffect ? null : Colors.transparent,
//       highlightColor: widget.isEffect ? null : Colors.transparent,
//       splashColor: widget.isEffect ? null : Colors.transparent,
//       child: Container(
//         padding: widget.padding,
//         constraints: BoxConstraints(minHeight: 40),
//         decoration: widget.isLine
//             ? BoxDecoration(
//                 border: Border(
//                     bottom: BorderSide(width: 1, color: DUColors.grey_EFEFEF)))
//             : null,
//         child: Row(
//           children: [
//             ConstrainedBox(
//               constraints: BoxConstraints(minWidth: 100),
//               child: Text(
//                 widget.title,
//                 style: DUTextStyle.black_2D2D2D_16,
//               ),
//             ),
//             Expanded(child: Container()),
//             check
//                 ? Icon(
//                     Icons.check_circle_rounded,
//                     color: DUColors.purple_7540EE,
//                   )
//                 : Icon(
//                     Icons.check_circle_outline_rounded,
//                     color: DUColors.grey_EFEFEF,
//                   )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _InfoTypeChoice16 extends StatefulWidget {
//   _InfoTypeChoice16({
//     required this.radioMap,
//     required this.onChanged,
//     required this.isLine,
//     required this.padding,
//   });

//   @override
//   State<StatefulWidget> createState() => _InfoTypeChoice16State();

//   /// 제목
//   final Map<String, String> radioMap;

//   /// 변경 콜백
//   final ValueChanged<String> onChanged;

//   /// 패딩
//   final EdgeInsetsGeometry? padding;

//   /// 라인추가 여부
//   final bool isLine;
// }

// enum SingingCharacter { lafayette, jefferson }

// class _InfoTypeChoice16State extends State<_InfoTypeChoice16> {
//   late String groupValue;

//   @override
//   void initState() {
//     super.initState();
//     groupValue = widget.radioMap.entries.toList()[0].key;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return getWidgets(widget.radioMap);
//   }

//   Widget getWidgets(Map<String, String> strings) {
//     List<Widget> copyList = [];
//     strings.forEach((key, mapValue) {
//       copyList.add(
//         Container(
//           padding: widget.padding,
//           constraints: BoxConstraints(minHeight: 40),
//           decoration: widget.isLine
//               ? BoxDecoration(
//                   border: Border(
//                       bottom:
//                           BorderSide(width: 1, color: DUColors.grey_EFEFEF)))
//               : null,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ConstrainedBox(
//                 constraints: BoxConstraints(minWidth: 100),
//                 child: Text(
//                   mapValue,
//                   style: DUTextStyle.black_2D2D2D_16,
//                 ),
//               ),
//               DURadio<String>(
//                 value: key,
//                 groupValue: groupValue,
//                 onChanged: (value) {
//                   setState(() {
//                     groupValue = value;
//                   });
//                   return widget.onChanged(value);
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     });
//     return Column(children: copyList);
//   }
// }
