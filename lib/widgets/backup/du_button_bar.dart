// import 'package:du_mobile/index.dart';

// enum ButtonBarOption {
//   row,
//   wrap,
// }

// class ButtonModel {
//   /// 버튼 텍스트
//   final String buttonText;

//   /// 버튼 클릭 이벤트
//   final void Function()? onPressed;

//   ButtonModel({required this.buttonText, required this.onPressed});
// }

// class DUButtonBar extends StatelessWidget {
//   DUButtonBar.typeA({
//     required List<ButtonModel> buttonModelList,
//   }) : _widget = _TypeA(
//           buttonModelList: buttonModelList,
//         );

//   DUButtonBar.typeB({
//     required List<String> buttonTextList,
//     int selectIndex = 0,
//     required void Function(int index) onChanged,
//   }) : _widget = _TypeB(
//           buttonTextList: buttonTextList,
//           selectIndex: selectIndex,
//           onChanged: onChanged,
//         );

//   DUButtonBar.widget({
//     required List<Widget> widgetList,
//     Widget? dividerWidget,
//   }) : _widget = _Widget(widgetList: widgetList, dividerWidget: dividerWidget);

//   DUButtonBar.grid({
//     required List<Widget> widgetList,
//     int crossAxisCount = 2,
//     double crossAxisSpacing = 8,
//     double mainAxisSpacing = 8,
//   }) : _widget = _Grid(
//           widgetList: widgetList,
//           crossAxisCount: crossAxisCount,
//           crossAxisSpacing: crossAxisSpacing,
//           mainAxisSpacing: mainAxisSpacing,
//         );

//   DUButtonBar.singleChoice30({
//     required List<String> buttonTextList,
//     int initChoiceIndex = 0,
//     required void Function(int index, String value) onSingleChanged,
//     ButtonBarOption buttonBarOption = ButtonBarOption.row,
//   }) : _widget = _Single(
//           buttonTextList: buttonTextList,
//           initChoiceIndex: initChoiceIndex,
//           onSingleChanged: onSingleChanged,
//           buttonBarOption: buttonBarOption,
//         );

//   DUButtonBar.multipleChoice30({
//     required List<String> buttonTextList,
//     List<int> initChoiceIndexs = const [],
//     required Function(List<int> index, List<dynamic> value) onMultiChanged,
//     ButtonBarOption buttonBarOption = ButtonBarOption.row,
//   }) : _widget = _Multiple(
//           buttonTextList: buttonTextList,
//           initChoiceIndexs: initChoiceIndexs,
//           onMultiChanged: onMultiChanged,
//           buttonBarOption: buttonBarOption,
//         );

//   DUButtonBar.schedule({
//     required List<DateTime> buttonDateTimeList,
//     List<int> initChoiceIndexs = const [],
//     required Function(List<int> index, List<dynamic> value) onMultiChanged,
//   }) : _widget = _Schedule(
//           buttonDateTimeList: buttonDateTimeList,
//           initChoiceIndexs: initChoiceIndexs,
//           onMultiChanged: onMultiChanged,
//         );

//   DUButtonBar.week({
//     List<int> initChoiceIndexs = const [],
//     required Function(List<int> index, List<dynamic> value) onMultiChanged,
//   }) : _widget = _Week(
//           initChoiceIndexs: initChoiceIndexs,
//           onMultiChanged: onMultiChanged,
//         );

//   DUButtonBar.payment({
//     required void Function(int index, String value) onChanged,
//   }) : _widget = _Payment(onChanged: onChanged);

//   /// common widget
//   final Widget _widget;

//   @override
//   Widget build(BuildContext context) {
//     return _widget;
//   }
// }

// class _TypeA extends StatelessWidget {
//   const _TypeA({required this.buttonModelList});

//   /// 버튼 리스트
//   final List<ButtonModel> buttonModelList;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 40,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(2), color: DUColors.grey_F8F8F8),
//       child: SeparatedRow(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: buttonModelList.mapWithIndex(
//           (buttonModel, index) {
//             return Expanded(
//               child: Center(
//                 child: InkWell(
//                   onTap: buttonModel.onPressed,
//                   child: Text(
//                     buttonModel.buttonText,
//                     style: DUTextStyle.black_2D2D2D_14,
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//         separatorBuilder: (context, index) {
//           return Container(
//             width: 1,
//             height: 16,
//             color: DUColors.grey_EFEFEF,
//           );
//         },
//       ),
//     );
//   }
// }

// class _TypeB extends StatefulWidget {
//   _TypeB({
//     required this.buttonTextList,
//     required this.selectIndex,
//     required this.onChanged,
//   });

//   final List<String> buttonTextList;
//   final int selectIndex;
//   final void Function(int index) onChanged;

//   @override
//   __TypeBState createState() => __TypeBState();
// }

// class __TypeBState extends State<_TypeB> {
//   late List<String> _buttonTextList;
//   late int _selectIndex;

//   @override
//   void initState() {
//     super.initState();
//     _buttonTextList = widget.buttonTextList;
//     _selectIndex = widget.selectIndex;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 36,
//       child: Row(
//         children: _buttonTextList.mapWithIndex(
//           (value, index) {
//             if (index == 0) {
//               return getLeftButton(value, index);
//             } else if (index == _buttonTextList.length - 1) {
//               return getRightButton(value, index);
//             } else {
//               return getCenterButton(value, index);
//             }
//           },
//         ),
//       ),
//     );
//   }

//   Expanded getLeftButton(String text, int index) {
//     return Expanded(
//       child: InkWell(
//         onTap: () {
//           setState(() {
//             _selectIndex = index;
//           });
//           return widget.onChanged(index);
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(4),
//               bottomLeft: Radius.circular(4),
//             ),
//             color: _selectIndex == index
//                 ? DUColors.purple_7540EE
//                 : DUColors.grey_F8F8F8,
//           ),
//           alignment: Alignment.center,
//           child: Text(
//             text,
//             style: _selectIndex == index
//                 ? DUTextStyle.white_FFFFFF_14
//                 : DUTextStyle.grey_D8D8D8_14,
//           ),
//         ),
//       ),
//     );
//   }

//   Expanded getCenterButton(String text, int index) {
//     return Expanded(
//       child: InkWell(
//         onTap: () {
//           setState(() {
//             _selectIndex = index;
//           });
//           return widget.onChanged(index);
//         },
//         child: Container(
//           color: _selectIndex == index
//               ? DUColors.purple_7540EE
//               : DUColors.grey_F8F8F8,
//           alignment: Alignment.center,
//           child: Text(
//             text,
//             style: _selectIndex == index
//                 ? DUTextStyle.white_FFFFFF_14
//                 : DUTextStyle.grey_D8D8D8_14,
//           ),
//         ),
//       ),
//     );
//   }

//   Expanded getRightButton(String text, int index) {
//     return Expanded(
//       child: InkWell(
//         onTap: () {
//           setState(() {
//             _selectIndex = index;
//           });
//           return widget.onChanged(index);
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(4),
//               bottomRight: Radius.circular(4),
//             ),
//             color: _selectIndex == index
//                 ? DUColors.purple_7540EE
//                 : DUColors.grey_F8F8F8,
//           ),
//           alignment: Alignment.center,
//           child: Text(
//             text,
//             style: _selectIndex == index
//                 ? DUTextStyle.white_FFFFFF_14
//                 : DUTextStyle.grey_D8D8D8_14,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _Widget extends StatelessWidget {
//   const _Widget({required this.widgetList, this.dividerWidget});

//   /// 위젯 리스트
//   final List<Widget> widgetList;
//   final Widget? dividerWidget;

//   @override
//   Widget build(BuildContext context) {
//     return SeparatedRow(
//       children: widgetList.mapWithIndex(
//         (widget, index) {
//           return Expanded(child: widget);
//         },
//       ),
//       separatorBuilder: (context, index) {
//         return dividerWidget == null
//             ? Container(
//                 width: 1,
//                 height: 16,
//                 color: DUColors.grey_EFEFEF,
//               )
//             : dividerWidget!;
//       },
//     );
//   }
// }

// class _Grid extends StatelessWidget {
//   _Grid({
//     required this.crossAxisCount,
//     required this.widgetList,
//     required this.crossAxisSpacing,
//     required this.mainAxisSpacing,
//   });

//   /// 버튼 리스트
//   final List<Widget> widgetList;

//   /// 로우 최대 개수
//   final int crossAxisCount;

//   /// 세로축 버튼 여백
//   final double crossAxisSpacing;

//   /// 가로축 버튼 여백
//   final double mainAxisSpacing;

//   @override
//   Widget build(BuildContext context) {
//     int colMaxCount = (widgetList.length / crossAxisCount).ceil();

//     return Column(children: [
//       for (var colCount = 0; colCount < colMaxCount; colCount++) ...[
//         Row(
//           children: [
//             for (var rowCount = 0; rowCount < crossAxisCount; rowCount++) ...[
//               if (colCount * crossAxisCount + rowCount < widgetList.length)
//                 Expanded(
//                   child: widgetList[colCount * crossAxisCount + rowCount],
//                 ),
//               if (colCount * crossAxisCount + rowCount <
//                       widgetList.length - 1 &&
//                   rowCount < crossAxisCount - 1)

//                 ///세로측 여백
//                 SizedBox(
//                   width: crossAxisSpacing,
//                 )
//             ]
//           ],
//         ),
//         if (colCount < colMaxCount - 1)

//           ///가로측 여백
//           SizedBox(
//             height: mainAxisSpacing,
//           )
//       ]
//     ]);
//   }
// }

// class _Single extends StatefulWidget {
//   _Single({
//     required this.buttonTextList,
//     required this.initChoiceIndex,
//     required this.onSingleChanged,
//     required this.buttonBarOption,
//   });

//   final List<String> buttonTextList;
//   final int initChoiceIndex;
//   final void Function(int index, String value) onSingleChanged;
//   final ButtonBarOption buttonBarOption;

//   @override
//   __SingleState createState() => __SingleState();
// }

// class __SingleState extends State<_Single> {
//   late int singleIndex;

//   @override
//   void initState() {
//     super.initState();
//     singleIndex = widget.initChoiceIndex;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return widget.buttonBarOption == ButtonBarOption.row
//         ? SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//                 children: widget.buttonTextList
//                     .mapWithIndex(
//                       (value, index) => Padding(
//                         padding: EdgeInsets.only(left: index == 0 ? 0 : 8),
//                         child: DUButton.squareElevated30(
//                           duButtonStyle: singleIndex == index
//                               ? DUButtonStyle.NORMAL
//                               : DUButtonStyle.UNNORMAL,
//                           text: value,
//                           onPressed: () {
//                             setState(() {
//                               singleIndex = index;
//                             });
//                             return widget.onSingleChanged(singleIndex, value);
//                           },
//                         ),
//                       ),
//                     )
//                     .toList()),
//           )
//         : Wrap(
//             spacing: 8, //가로여백
//             runSpacing: 8, //세로 여백
//             children: widget.buttonTextList
//                 .mapWithIndex(
//                   (value, index) => DUButton.squareElevated30(
//                     duButtonStyle: singleIndex == index
//                         ? DUButtonStyle.NORMAL
//                         : DUButtonStyle.UNNORMAL,
//                     text: value,
//                     onPressed: () {
//                       setState(() {
//                         singleIndex = index;
//                       });
//                       return widget.onSingleChanged(singleIndex, value);
//                     },
//                   ),
//                 )
//                 .toList());
//   }
// }

// class _Multiple extends StatefulWidget {
//   _Multiple({
//     required this.buttonTextList,
//     required this.initChoiceIndexs,
//     required this.onMultiChanged,
//     required this.buttonBarOption,
//   });

//   final List<String> buttonTextList;
//   final List<int> initChoiceIndexs;
//   final void Function(List<int> index, List<dynamic> value) onMultiChanged;
//   final ButtonBarOption buttonBarOption;

//   @override
//   __MultipleState createState() => __MultipleState();
// }

// class __MultipleState extends State<_Multiple> {
//   late List<int> multipleIndex;

//   @override
//   void initState() {
//     super.initState();
//     multipleIndex = [...widget.initChoiceIndexs];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return widget.buttonBarOption == ButtonBarOption.row
//         ? SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(children: [
//               DUButton.squareElevated30(
//                 duButtonStyle: multipleIndex.isEmpty
//                     ? DUButtonStyle.NORMAL
//                     : DUButtonStyle.UNNORMAL,
//                 text: '전체',
//                 onPressed: () {
//                   setState(() {
//                     multipleIndex = [];
//                   });
//                 },
//               ),
//               ...widget.buttonTextList.mapWithIndex((value, index) {
//                 return Padding(
//                   padding: EdgeInsets.only(left: 8),
//                   child: DUButton.squareElevated30(
//                     duButtonStyle: multipleIndex.contains(index)
//                         ? DUButtonStyle.NORMAL
//                         : DUButtonStyle.UNNORMAL,
//                     text: value,
//                     onPressed: () {
//                       setState(() {
//                         if (multipleIndex.contains(index)) {
//                           multipleIndex.remove(index);
//                         } else {
//                           multipleIndex.add(index);
//                         }
//                       });
//                       multipleIndex.sort();
//                       return widget.onMultiChanged(multipleIndex,
//                           widget.buttonTextList.toIndexList(multipleIndex));
//                     },
//                   ),
//                 );
//               }).toList()
//             ]),
//           )
//         : Wrap(
//             spacing: 8, //가로여백
//             runSpacing: 8, //세로 여백
//             children: [
//               DUButton.squareElevated30(
//                 duButtonStyle: multipleIndex.isEmpty
//                     ? DUButtonStyle.NORMAL
//                     : DUButtonStyle.UNNORMAL,
//                 text: '전체',
//                 onPressed: () {
//                   setState(() {
//                     multipleIndex = [];
//                   });
//                 },
//               ),
//               ...widget.buttonTextList.mapWithIndex((value, index) {
//                 return DUButton.squareElevated30(
//                   duButtonStyle: multipleIndex.contains(index)
//                       ? DUButtonStyle.NORMAL
//                       : DUButtonStyle.UNNORMAL,
//                   text: value,
//                   onPressed: () {
//                     setState(() {
//                       if (multipleIndex.contains(index)) {
//                         multipleIndex.remove(index);
//                       } else {
//                         multipleIndex.add(index);
//                       }
//                     });
//                     multipleIndex.sort();
//                     return widget.onMultiChanged(multipleIndex,
//                         widget.buttonTextList.toIndexList(multipleIndex));
//                   },
//                 );
//               }).toList()
//             ],
//           );
//   }
// }

// class _Schedule extends StatefulWidget {
//   _Schedule({
//     required this.buttonDateTimeList,
//     required this.initChoiceIndexs,
//     required this.onMultiChanged,
//   });

//   final List<DateTime> buttonDateTimeList;
//   final List<int> initChoiceIndexs;
//   final void Function(List<int> index, List<dynamic> value) onMultiChanged;

//   @override
//   __ScheduleState createState() => __ScheduleState();
// }

// class __ScheduleState extends State<_Schedule> {
//   late List<int> initChoiceIndexs;
//   late List<DateTime> buttonDateTimeList = [];

//   @override
//   void initState() {
//     super.initState();
//     initChoiceIndexs = [...widget.initChoiceIndexs];
//     initChoiceIndexs.forEach((index) {
//       buttonDateTimeList.add(widget.buttonDateTimeList[index]);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(children: [
//         InkWell(
//             onTap: () {
//               setState(() {
//                 initChoiceIndexs = [];
//               });
//               return widget.onMultiChanged(
//                 initChoiceIndexs,
//                 widget.buttonDateTimeList.toIndexList(initChoiceIndexs),
//               );
//             },
//             child: initChoiceIndexs.isEmpty
//                 ? Container(
//                     width: 60,
//                     height: 60,
//                     color: DUColors.purple_7540EE,
//                     child: Center(
//                       child: duGetIconWidget(
//                         Icons.list,
//                         size: 44,
//                         color: DUColors.white_FFFFFF,
//                       ),
//                     ),
//                   )
//                 : Container(
//                     width: 60,
//                     height: 60,
//                     color: DUColors.grey_F8F8F8,
//                     child: Center(
//                       child: duGetIconWidget(
//                         Icons.list,
//                         size: 44,
//                         color: DUColors.black_2D2D2D,
//                       ),
//                     ),
//                   )),
//         ...widget.buttonDateTimeList.mapWithIndex((value, index) {
//           return Padding(
//             padding: EdgeInsets.only(left: 8),
//             child: InkWell(
//                 onTap: () {
//                   print(index);
//                   setState(() {
//                     if (initChoiceIndexs.contains(index)) {
//                       initChoiceIndexs.remove(index);
//                     } else {
//                       initChoiceIndexs.add(index);
//                     }
//                   });
//                   initChoiceIndexs.sort();
//                   return widget.onMultiChanged(
//                     initChoiceIndexs,
//                     widget.buttonDateTimeList.toIndexList(initChoiceIndexs),
//                   );
//                 },
//                 child: (initChoiceIndexs.contains(index))
//                     ? Container(
//                         width: 60,
//                         height: 60,
//                         color: DUColors.purple_7540EE,
//                         child: FittedBox(
//                           fit: BoxFit.contain,
//                           child: Padding(
//                             padding: const EdgeInsets.all(4.0),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   value.toDateYearString(),
//                                   style: DUTextStyle.white_FFFFFF_13,
//                                 ),
//                                 Text(
//                                   value.toDateMonthString(),
//                                   style: DUTextStyle.white_FFFFFF_20,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     : Container(
//                         width: 60,
//                         height: 60,
//                         color: DUColors.grey_F8F8F8,
//                         child: FittedBox(
//                           fit: BoxFit.contain,
//                           child: Padding(
//                             padding: const EdgeInsets.all(4.0),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   value.toDateYearString(),
//                                   style: DUTextStyle.black_2D2D2D_13,
//                                 ),
//                                 Text(
//                                   value.toDateMonthString(),
//                                   style: DUTextStyle.black_2D2D2D_20_w400,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )),
//           );
//         }).toList()
//       ]),
//     );
//   }
// }

// class _Week extends StatefulWidget {
//   _Week({
//     required this.initChoiceIndexs,
//     required this.onMultiChanged,
//   });

//   final List<int> initChoiceIndexs;
//   final void Function(List<int> index, List<dynamic> value) onMultiChanged;

//   @override
//   _WeekState createState() => _WeekState();
// }

// class _WeekState extends State<_Week> {
//   late List<int> initChoiceIndexs;
//   late List<String> weekDayList = ['월', '화', '수', '목', '금', '토', '일'];

//   @override
//   void initState() {
//     super.initState();
//     initChoiceIndexs = [...widget.initChoiceIndexs];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: weekDayList
//           .mapWithIndex(
//             (value, index) => InkWell(
//               onTap: () {
//                 setState(() {
//                   if (initChoiceIndexs.contains(index)) {
//                     initChoiceIndexs.remove(index);
//                   } else {
//                     initChoiceIndexs.add(index);
//                   }
//                 });
//                 initChoiceIndexs.sort();
//                 return widget.onMultiChanged(initChoiceIndexs,
//                     weekDayList.toIndexList(initChoiceIndexs));
//               },
//               child: Container(
//                 color: initChoiceIndexs.contains(index)
//                     ? DUColors.purple_7540EE
//                     : DUColors.grey_F8F8F8,
//                 width: 40,
//                 height: 30,
//                 child: Center(
//                   child: Text(
//                     value,
//                     style: initChoiceIndexs.contains(index)
//                         ? DUTextStyle.white_FFFFFF_14
//                         : DUTextStyle.grey_8F8F8F_14,
//                   ),
//                 ),
//               ),
//             ),
//           )
//           .toList(),
//     );
//   }
// }

// class _Payment extends StatefulWidget {
//   _Payment({required this.onChanged});

//   void Function(int index, String value) onChanged;

//   @override
//   __PaymentState createState() => __PaymentState();
// }

// class __PaymentState extends State<_Payment> {
//   int selectIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return DUButtonBar.grid(
//       crossAxisCount: 2,
//       widgetList: [
//         DUButton.squareElevated40(
//           text: '신용카드',
//           onPressed: () {
//             setState(() {
//               selectIndex = 0;
//             });
//             return widget.onChanged(selectIndex, '신용카드');
//           },
//           duButtonStyle:
//               selectIndex == 0 ? DUButtonStyle.NORMAL : DUButtonStyle.UNNORMAL,
//         ),
//         DUButton.squareElevated40(
//           text: '휴대폰결제',
//           onPressed: () {
//             setState(() {
//               selectIndex = 1;
//             });
//             return widget.onChanged(selectIndex, '휴대폰결제');
//           },
//           duButtonStyle:
//               selectIndex == 1 ? DUButtonStyle.NORMAL : DUButtonStyle.UNNORMAL,
//         ),
//         DUButton.squareElevated40(
//           text: '실시간 계좌이체',
//           onPressed: () {
//             setState(() {
//               selectIndex = 2;
//             });
//             return widget.onChanged(selectIndex, '실시간 계좌이체');
//           },
//           duButtonStyle:
//               selectIndex == 2 ? DUButtonStyle.NORMAL : DUButtonStyle.UNNORMAL,
//         ),
//         DUButton.squareElevated40(
//           text: '가상계좌',
//           onPressed: () {
//             setState(() {
//               selectIndex = 3;
//             });
//             return widget.onChanged(selectIndex, '가상계좌');
//           },
//           duButtonStyle:
//               selectIndex == 3 ? DUButtonStyle.NORMAL : DUButtonStyle.UNNORMAL,
//         ),
//       ],
//     );
//   }
// }
