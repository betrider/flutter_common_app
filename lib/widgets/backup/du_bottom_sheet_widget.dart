// import 'package:du_mobile/index.dart';

// class DUShowBottomSheetWidget extends StatelessWidget {
//   const DUShowBottomSheetWidget.custom({
//     required this.widget,
//   });

//   DUShowBottomSheetWidget.menu14({
//     List<String> menuList = const [],
//     List<String> deleteMenuList = const [],
//   }) : widget = _Menu14(
//           menuList: menuList,
//           deleteMenuList: deleteMenuList,
//         );

//   DUShowBottomSheetWidget.menu16({
//     String className = '',
//     List<String> menuList = const [],
//     List<String> deleteMenuList = const [],
//   }) : widget = _Menu16(
//           className: className,
//           menuList: menuList,
//           deleteMenuList: deleteMenuList,
//         );

//   DUShowBottomSheetWidget.profile14({
//     required String imagePath,
//     required String nickName,
//     List<String> menuList = const [],
//   }) : widget = _Profile14(
//           imagePath: imagePath,
//           nickName: nickName,
//           menuList: menuList,
//         );

//   DUShowBottomSheetWidget.schedule16({
//     required DateTime dateTime,
//     List<String> menuList = const [],
//   }) : widget = _Schedule16(
//           dateTime: dateTime,
//           menuList: menuList,
//         );

//   DUShowBottomSheetWidget.cancel({
//     required String classTitle,
//     required DateTime datetime,
//   }) : widget = _Cancel(
//           classTitle: classTitle,
//           datetime: datetime,
//         );

//   DUShowBottomSheetWidget.selectMonth({
//     required DateTime startDateTime,
//     required DateTime endDateTime,
//   }) : widget = _SelectMonth(
//           startDateTime: startDateTime,
//           endDateTime: endDateTime,
//         );

//   DUShowBottomSheetWidget.addInterest({
//     required String className,
//   }) : widget = _AddInterest(
//           className: className,
//         );

//   DUShowBottomSheetWidget.gender() : widget = _Gender();

//   DUShowBottomSheetWidget.check({
//     required String title,
//     required List<String> menuList,
//   }) : widget = _Check(
//           title: title,
//           menuList: menuList,
//         );

//   DUShowBottomSheetWidget.time() : widget = _Time();

//   /// common widget
//   final Widget widget;

//   @override
//   Widget build(BuildContext context) {
//     return widget;
//   }
// }

// class _Menu14 extends StatelessWidget {
//   const _Menu14({
//     required this.menuList,
//     required this.deleteMenuList,
//   });

//   final List<String> menuList;
//   final List<String> deleteMenuList;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 16),
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             ...menuList
//                 .mapWithIndex(
//                   (value, index) => SizedBox(
//                     height: 56,
//                     child: InkWell(
//                       onTap: () {
//                         DUNavigator.pop(result: index.toString());
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             Text(
//                               value,
//                               style: DUTextStyle.black_2D2D2D_16,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//                 .toList(),
//             ...deleteMenuList
//                 .mapWithIndex(
//                   (value, index) => SizedBox(
//                     height: 56,
//                     child: InkWell(
//                       onTap: () {
//                         DUNavigator.pop(
//                             result: (menuList.length + index).toString());
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             Text(value, style: DUTextStyle.red_E02020_16),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//                 .toList(),
//             Divider(
//               height: 1,
//             ),
//             ListTile(
//               title: Text(
//                 '취소',
//                 style: DUTextStyle.black_2D2D2D_14,
//               ),
//               onTap: () {
//                 DUNavigator.pop(result: '');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _Menu16 extends StatelessWidget {
//   const _Menu16({
//     required this.className,
//     required this.menuList,
//     required this.deleteMenuList,
//   });

//   final String className;
//   final List<String> menuList;
//   final List<String> deleteMenuList;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 16),
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             if (className.isNotEmpty)
//               Container(
//                 height: 56,
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Row(
//                   children: [
//                     Text(
//                       className,
//                       style: DUTextStyle.grey_8F8F8F_16,
//                     ),
//                   ],
//                 ),
//               ),
//             ...menuList
//                 .mapWithIndex(
//                   (value, index) => SizedBox(
//                     height: 56,
//                     child: InkWell(
//                       onTap: () {
//                         DUNavigator.pop(result: index.toString());
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             Text(
//                               value,
//                               style: DUTextStyle.black_2D2D2D_16,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//                 .toList(),
//             ...deleteMenuList
//                 .mapWithIndex(
//                   (value, index) => SizedBox(
//                     height: 56,
//                     child: InkWell(
//                       onTap: () {
//                         DUNavigator.pop(
//                             result: (menuList.length + index).toString());
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             Text(value, style: DUTextStyle.red_E02020_16),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//                 .toList(),
//             Divider(
//               height: 1,
//             ),
//             ListTile(
//               title: Text(
//                 '취소',
//                 style: DUTextStyle.black_2D2D2D_16,
//               ),
//               onTap: () {
//                 DUNavigator.pop(result: '');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _Profile14 extends StatelessWidget {
//   const _Profile14({
//     required this.imagePath,
//     required this.nickName,
//     required this.menuList,
//   });

//   final String imagePath;
//   final String nickName;
//   final List<String> menuList;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 16),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: DUListTile.type40A(
//               imageShape: ImageShape.CIRCLE,
//               imagePath: imagePath,
//               title: nickName,
//             ),
//           ),
//           Flexible(
//               child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 ...menuList
//                     .mapWithIndex(
//                       (value, index) => SizedBox(
//                         height: 56,
//                         child: InkWell(
//                           onTap: () {
//                             DUNavigator.pop(result: index.toString());
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 16),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   value,
//                                   style: DUTextStyle.black_2D2D2D_14,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     )
//                     .toList(),
//               ],
//             ),
//           )),
//           Divider(
//             height: 1,
//           ),
//           SizedBox(
//             height: 56,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: '');
//               },
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Row(
//                   children: [
//                     Text(
//                       '취소',
//                       style: DUTextStyle.black_2D2D2D_14,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _Schedule16 extends StatelessWidget {
//   const _Schedule16({
//     required this.dateTime,
//     required this.menuList,
//   });

//   final DateTime dateTime;
//   final List<String> menuList;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             height: 56,
//             alignment: Alignment.centerLeft,
//             child: Text(
//               dateTime.toFullDateTimeString3(),
//               style: DUTextStyle.grey_8F8F8F_16,
//             ),
//           ),
//           Flexible(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   ...menuList
//                       .mapWithIndex(
//                         (value, index) => SizedBox(
//                           height: 56,
//                           child: InkWell(
//                             onTap: () {
//                               DUNavigator.pop(result: index.toString());
//                             },
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 16),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     value,
//                                     style: DUTextStyle.black_2D2D2D_14,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       )
//                       .toList(),
//                 ],
//               ),
//             ),
//           ),
//           Divider(
//             height: 1,
//           ),
//           SizedBox(
//             height: 56,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: '');
//               },
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Row(
//                   children: [
//                     Text(
//                       '취소',
//                       style: DUTextStyle.black_2D2D2D_14,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _Cancel extends StatelessWidget {
//   const _Cancel({required this.classTitle, required this.datetime});

//   ///수업 제목
//   final String classTitle;

//   ///수업 일시
//   final DateTime datetime;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               classTitle,
//               style: DUTextStyle.black_2D2D2D_20_w400,
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Text(
//               // '2021.03 25 21:00',
//               datetime.toFullDateTimeString2(),
//               style: DUTextStyle.black_2D2D2D_14,
//             ),
//             SizedBox(height: 24),
//             Text(
//               '수업을 취소하시겠습니까?',
//               style: DUTextStyle.black_2D2D2D_14,
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Text(
//               '주문취소, 결제 서비스 이용 동의',
//               style: DUTextStyle.black_2D2D2D_12,
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "∙",
//                   style: DUTextStyle.grey_8F8F8F_12,
//                 ),
//                 SizedBox(
//                   width: 4,
//                 ),
//                 Expanded(
//                   child: RichText(
//                     text: TextSpan(
//                       style: DefaultTextStyle.of(context).style,
//                       children: <TextSpan>[
//                         TextSpan(
//                           text: '수집하는 개인정보 항목 : 이메일 주소, 휴대폰 번호, 로그인 계정, ',
//                           style: DUTextStyle.grey_8F8F8F_12,
//                         ),
//                         TextSpan(
//                           text: '작성해주시는 개인정보는 문의 접수 및 고객 불만 ',
//                           style: DUTextStyle.red_E02020_12,
//                         ),
//                         TextSpan(
//                           text: '해결을 위해 일정 기간 보관됩니다.(상담이력5년/첨부파일 1개월)',
//                           style: DUTextStyle.grey_8F8F8F_12,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "∙",
//                   style: DUTextStyle.grey_8F8F8F_12,
//                 ),
//                 SizedBox(
//                   width: 4,
//                 ),
//                 Expanded(
//                   child: RichText(
//                     text: TextSpan(
//                       style: DefaultTextStyle.of(context).style,
//                       children: <TextSpan>[
//                         TextSpan(
//                           text: '수집하는 개인정보 항목 : 이메일 주소, 휴대폰 번호',
//                           style: DUTextStyle.red_E02020_12,
//                         ),
//                         TextSpan(
//                           text: ' 로그인 계정 작성해주시는..',

//                           ///스케치 오류
//                           style: DUTextStyle.grey_8F8F8F_12,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "∙",
//                   style: DUTextStyle.grey_8F8F8F_12,
//                 ),
//                 SizedBox(
//                   width: 4,
//                 ),
//                 Expanded(
//                   child: Text(
//                     '수집하는 개인정보 항목 : 이메일 주소',
//                     style: DUTextStyle.grey_8F8F8F_12,
//                     maxLines: 3,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 26,
//             ),
//             DUButtonBar.grid(
//               widgetList: [
//                 DUButton.squareOutlined48(
//                     text: '취소',
//                     onPressed: () {
//                       DUNavigator.pop(result: 'no');
//                     }),
//                 DUButton.squareElevated48(
//                     text: '확인',
//                     onPressed: () {
//                       DUNavigator.pop(result: 'yes');
//                     })
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _SelectMonth extends StatelessWidget {
//   const _SelectMonth({required this.startDateTime, required this.endDateTime});

//   final DateTime startDateTime;
//   final DateTime endDateTime;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Text('월 선택'),
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           Flexible(
//             child: ListView(
//               shrinkWrap: true,
//               children: [
//                 for (var year = endDateTime.year;
//                     year >= startDateTime.year;
//                     year--)
//                   if (year == endDateTime.year) ...[
//                     for (var month = endDateTime.month;
//                         month >= 1;
//                         month--) ...[
//                       dateListItem(year, month),
//                     ],
//                   ] else if (year == startDateTime.year) ...[
//                     for (var month = 12;
//                         month >= startDateTime.month;
//                         month--) ...[
//                       dateListItem(year, month),
//                     ],
//                   ] else ...[
//                     for (var month = 12; month >= 1; month--) ...[
//                       dateListItem(year, month),
//                     ],
//                   ],
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget dateListItem(int year, int month) {
//     return Column(
//       children: [
//         InkWell(
//           onTap: () {
//             DUNavigator.pop<DateTime>(result: DateTime(year, month));
//           },
//           child: Container(
//             height: 56,
//             alignment: Alignment.centerLeft,
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: Text(
//               year.toString() + '.' + month.toString().padLeft(2, '0'),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Divider(
//             height: 0,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class _AddInterest extends StatelessWidget {
//   const _AddInterest({required this.className});

//   final String className;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               className,
//               style: DUTextStyle.black_2D2D2D_20_w400,
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Text(
//               className + '에서 제공하는 정보와 마케팅 메시지를 딩동으로 받아 볼 수 있습니다.',
//               style: TextStyle(
//                   fontWeight: DUFontWeight.w400,
//                   fontSize: 14,
//                   color: DUColors.black_2D2D2D,
//                   height: 1.571),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             DUButton.squareElevated48(
//               text: '관심추가',
//               width: double.infinity,
//               onPressed: () {
//                 DUNavigator.pop(result: 'yes');
//               },
//             ),
//             SizedBox(
//               height: 42,
//             ),
//             Align(
//               alignment: Alignment.centerRight,
//               child: InkWell(
//                 onTap: () {
//                   DUNavigator.pop(result: 'no');
//                 },
//                 child: Text(
//                   '취소',
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// enum Gender { man, woman }

// class _Gender extends StatefulWidget {
//   @override
//   _GenderState createState() => _GenderState();
// }

// class _GenderState extends State<_Gender> {
//   Gender? _gender = Gender.man;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//         top: 32,
//         left: 16,
//         right: 16,
//         bottom: 20,
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('성별', style: DUTextStyle.black_2D2D2D_16_w500),
//             SizedBox(height: 16),
//             Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       _gender = Gender.man;
//                     });
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('남자', style: DUTextStyle.black_2D2D2D_16),
//                       Radio<Gender>(
//                         value: Gender.man,
//                         groupValue: _gender,
//                         onChanged: (value) {
//                           setState(() {
//                             _gender = value;
//                           });
//                         },
//                       )
//                     ],
//                   ),
//                 ),
//                 Divider(height: 1),
//               ],
//             ),
//             Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       _gender = Gender.woman;
//                     });
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('여자', style: DUTextStyle.black_2D2D2D_16),
//                       Radio<Gender>(
//                         value: Gender.woman,
//                         groupValue: _gender,
//                         onChanged: (value) {
//                           setState(() {
//                             _gender = value;
//                           });
//                         },
//                       )
//                     ],
//                   ),
//                 ),
//                 Divider(height: 1),
//               ],
//             ),
//             SizedBox(height: 16),
//             Row(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: DUButton.squareOutlined48(
//                     text: '초기화',
//                     onPressed: () {
//                       setState(() {
//                         _gender = Gender.man;
//                       });
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   width: 16,
//                 ),
//                 Expanded(
//                   flex: 3,
//                   child: DUButton.squareElevated48(
//                     text: '적용',
//                     onPressed: () {
//                       DUNavigator.pop(result: _gender);
//                     },
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _Check extends StatefulWidget {
//   const _Check({required this.title, required this.menuList});

//   final String title;
//   final List<String> menuList;

//   @override
//   __CheckState createState() => __CheckState();
// }

// class __CheckState extends State<_Check> {
//   List<String> menuList = [];
//   List<int> checkList = [];

//   @override
//   void initState() {
//     super.initState();
//     menuList = widget.menuList;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//         top: 32,
//         left: 16,
//         right: 16,
//         bottom: 20,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(widget.title, style: DUTextStyle.black_2D2D2D_16_w500),
//           SizedBox(height: 32),
//           Flexible(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   ...menuList
//                       .mapWithIndex(
//                           (company, index) => getCheckItem(company, index))
//                       .toList(),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 16),
//           Row(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: DUButton.squareOutlined48(
//                   text: '초기화',
//                   onPressed: () {
//                     setState(() {
//                       checkList.clear();
//                     });
//                   },
//                 ),
//               ),
//               SizedBox(
//                 width: 16,
//               ),
//               Expanded(
//                 flex: 3,
//                 child: DUButton.squareElevated48(
//                   text: '적용',
//                   onPressed: () {
//                     checkList.sort();
//                     DUNavigator.pop(result: checkList);
//                   },
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   Widget getCheckItem(String company, int index) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 43,
//           child: InkWell(
//             onTap: () {
//               setState(() {
//                 if (checkList.contains(index)) {
//                   checkList.remove(index);
//                 } else {
//                   checkList.add(index);
//                 }
//               });
//             },
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   company,
//                   style: DUTextStyle.black_2D2D2D_16,
//                 ),
//                 checkList.contains(index)
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
//               ],
//             ),
//           ),
//         ),
//         Divider(height: 1),
//       ],
//     );
//   }
// }

// class _Time extends StatefulWidget {
//   const _Time({Key? key}) : super(key: key);

//   @override
//   __TimeState createState() => __TimeState();
// }

// class __TimeState extends State<_Time> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 320,
//       color: DUColors.grey_F8F8F8,
//       child: GridView.count(
//         crossAxisCount: 4,
//         children: <Widget>[
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 0);
//               },
//               child: Container(
//                 child: Center(
//                   child: Text(
//                     '정시',
//                     style: DUTextStyle.black_2D2D2D_20_w400,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 1);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '5',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '분 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 2);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '10',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '분 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 3);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '15',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '분 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 4);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '30',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '분 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 5);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '1',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '시간 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 6);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '2',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '시간 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 7);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '3',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '시간 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 8);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '12',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '시간 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 9);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '1',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '일 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 10);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '2',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '일 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 DUNavigator.pop(result: 11);
//               },
//               child: Container(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '1',
//                         style: DUTextStyle.black_2D2D2D_24,
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         '주 전',
//                         style: DUTextStyle.black_2D2D2D_10,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
