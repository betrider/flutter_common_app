// import 'package:du_mobile/index.dart';

// dynamic initMethod() {}
// dynamic initValueMethod(value) {}

// class DUExpansionTile extends StatelessWidget {
//   /// 질문-응답 확장 위젯
//   ///
//   /// Example:
//   /// ```dart
//   /// DUExpansion.question(
//   ///   title: 'Q.멘토링은 어떻게 진행되나요?',
//   ///   subTitle: 'A.답변',
//   ///   content:'물론 아닙니다. 누구나 이용가능합니다. 편하게 부담없이 이용하실 수 있습니다. 자세한 내용은 1:1 챗 혹은 문의하기를 통해서 문의 부탁드립니다.',
//   /// )
//   /// ```
//   DUExpansionTile.question({
//     this.title,
//     this.subTitle,
//     this.content,
//   })  : _widget = _Question(
//           title: title,
//           subTitle: subTitle,
//           content: content,
//         ),
//         initListValue = [],
//         onChanged = initValueMethod;

//   /// 리스트 확장 위젯
//   ///
//   /// Example:
//   /// ```dart
//   /// DUExpansion.link(
//   ///   title: 'Q.멘토링은 어떻게 진행되나요?',
//   ///   subTitle: 'A.답변',
//   ///   content:'물론 아닙니다. 누구나 이용가능합니다. 편하게 부담없이 이용하실 수 있습니다. 자세한 내용은 1:1 챗 혹은 문의하기를 통해서 문의 부탁드립니다.',
//   /// )
//   /// ```
//   DUExpansionTile.link({
//     this.title,
//     this.content,
//   })  : _widget = _Link(
//           title: title,
//           content: content,
//         ),
//         initListValue = [],
//         onChanged = initValueMethod,
//         subTitle = '';

//   /// 리스트 확장 위젯
//   ///
//   /// Example:
//   /// ```dart
//   /// DUExpansion.link(
//   ///   title: '그룹을 선택해주세요',
//   ///   icon: DUIcons.svgSearch
//   ///   onTap: (){
//   ///     ...
//   ///   }
//   /// )
//   /// ```
//   DUExpansionTile.callBack({
//     required this.title,
//     String icon = DUIcons.svgExpandMoreSM,
//     required dynamic Function() onTap,
//   })  : _widget = _CallBack(
//           title: title,
//           icon: icon,
//           onTap: onTap,
//         ),
//         initListValue = [],
//         onChanged = initValueMethod,
//         content = '',
//         subTitle = '';

//   /// 리스트 확장 위젯
//   ///
//   /// Example:
//   /// ```dart
//   /// DUExpansion.custom(
//   ///   title: 'Q.멘토링은 어떻게 진행되나요?',
//   ///   subTitle: 'A.답변',
//   ///   content:'물론 아닙니다. 누구나 이용가능합니다. 편하게 부담없이 이용하실 수 있습니다. 자세한 내용은 1:1 챗 혹은 문의하기를 통해서 문의 부탁드립니다.',
//   /// )
//   /// ```
//   DUExpansionTile.custom({
//     this.title,
//     this.content,
//     Color? backgroundColor,
//   })  : _widget = _Custom(
//           title: title,
//           content: content,
//           backgroundColor: backgroundColor,
//         ),
//         initListValue = [],
//         onChanged = initValueMethod,
//         subTitle = '';

//   /// 옵션항목 단일
//   ///
//   /// Example:
//   /// ```dart
//   /// DUExpansion.option1()
//   /// ```
//   DUExpansionTile.option1({
//     this.title = '옵션항목',
//     this.initListValue = const [],
//     required this.onChanged,
//     _OntapReturnTextEditingController? onTap,
//   })  : _widget = Option(
//           title: title,
//           initListValue: initListValue,
//           onChanged: onChanged,
//           onTap: onTap,
//         ),
//         content = '',
//         subTitle = '';

//   /// 옵션항목 멀티
//   ///
//   /// Example:
//   /// ```dart
//   /// DUExpansion.option2()
//   /// ```
//   DUExpansionTile.option2({
//     this.title = '그룹선택',
//     this.initListValue = const [],
//     required this.onChanged,
//     _OntapReturnTextEditingController? onTap,
//   })  : _widget = Option2(
//           title: title,
//           initListValue: initListValue,
//           onChanged: onChanged,
//           onTap: onTap,
//         ),
//         content = '',
//         subTitle = '';

//   /// 제목
//   final dynamic title;

//   /// 부제목
//   final dynamic subTitle;

//   /// 내용
//   final dynamic content;

//   /// 리스트 초기값
//   final List<String> initListValue;

//   /// 변경 콜백 이벤트
//   final _OnChangedReturnListString onChanged;

//   /// common widget
//   final Widget _widget;

//   @override
//   Widget build(BuildContext context) {
//     return _widget;
//   }
// }

// class _Custom extends StatefulWidget {
//   const _Custom({
//     Key? key,
//     required this.title,
//     required this.content,
//     required this.backgroundColor,
//   }) : super(key: key);

//   final dynamic title;
//   final dynamic content;
//   final Color? backgroundColor;

//   @override
//   __CustomState createState() => __CustomState();
// }

// class __CustomState extends State<_Custom> {
//   bool isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
//       child: ExpansionTile(
//         collapsedBackgroundColor: widget.backgroundColor, //닫혀있을때 백그라운드 색상
//         backgroundColor: widget.backgroundColor, //펼쳐졌을때 백그라운드 색상
//         title: widget.title,
//         children: <Widget>[widget.content],
//         trailing: isExpanded
//             ? duGetIconWidget(DUIcons.svgExpandLessSM)
//             : duGetIconWidget(DUIcons.svgExpandMoreSM),
//         onExpansionChanged: (value) {
//           setState(() {
//             isExpanded = value;
//           });
//         },
//       ),
//     );
//   }
// }

// class _Link extends StatefulWidget {
//   const _Link({
//     Key? key,
//     required this.title,
//     required this.content,
//   }) : super(key: key);

//   final dynamic title;
//   final dynamic content;

//   @override
//   __LinkState createState() => __LinkState();
// }

// class __LinkState extends State<_Link> {
//   bool isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
//       child: ExpansionTile(
//         title: widget.title,
//         children: <Widget>[
//           Container(
//             color: DUColors.grey_FAFAFA,
//             child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: widget.content),
//           ),
//           Divider(
//             height: 1,
//           ),
//         ],
//         trailing: isExpanded
//             ? duGetIconWidget(DUIcons.svgExpandLessSM)
//             : duGetIconWidget(DUIcons.svgExpandMoreSM),
//         onExpansionChanged: (value) {
//           setState(() {
//             isExpanded = value;
//           });
//         },
//       ),
//     );
//   }
// }

// class _CallBack extends StatelessWidget {

//   const _CallBack({
//     required this.title,
//     required this.icon,
//     required this.onTap,
//   });

//   final String title;
//   final String icon;
//   final dynamic Function() onTap;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         width: double.infinity,
//         height: 40,
//         color: DUColors.grey_F8F8F8,
//         padding: EdgeInsets.symmetric(horizontal: 8),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               title,
//               style: DUTextStyle.grey_8F8F8F_12,
//             ),
//             duGetIconWidget(icon)
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _Question extends StatefulWidget {
//   const _Question({
//     Key? key,
//     required this.title,
//     required this.subTitle,
//     required this.content,
//   }) : super(key: key);

//   final dynamic title;
//   final dynamic subTitle;
//   final dynamic content;

//   @override
//   __QuestionState createState() => __QuestionState();
// }

// class __QuestionState extends State<_Question> {
//   bool isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
//       child: ExpansionTile(
//         tilePadding: EdgeInsets.symmetric(horizontal: 16),
//         title: Text(widget.title.toString()),
//         children: <Widget>[
//           Container(
//             color: DUColors.grey_FAFAFA,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Divider(color: DUColors.grey_EFEFEF),
//                   Text(widget.subTitle.toString(),
//                       style: DUTextStyle.black_2D2D2D_16),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   Text(
//                     widget.content.toString(),
//                     style: DUTextStyle.black_2D2D2D_14,
//                   ),
//                   Divider(color: DUColors.grey_EFEFEF),
//                 ],
//               ),
//             ),
//           ),
//           Divider(
//             height: 1,
//           ),
//         ],
//         trailing: isExpanded
//             ? duGetIconWidget(DUIcons.svgExpandLessSM)
//             : duGetIconWidget(DUIcons.svgExpandMoreSM),
//         onExpansionChanged: (value) {
//           setState(() {
//             isExpanded = value;
//           });
//         },
//       ),
//     );
//   }
// }

// class Option extends StatefulWidget {
//   Option({
//     required this.title,
//     required this.initListValue,
//     required this.onChanged,
//     this.onTap,
//   });

//   final dynamic title;
//   final List<String> initListValue;
//   final _OntapReturnTextEditingController? onTap;
//   final void Function(List<String> list) onChanged;

//   @override
//   _OptionState createState() => _OptionState();
// }

// class _OptionState extends State<Option> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(widget.title.toString(), style: DUTextStyle.black_2D2D2D_16),
//             DUIconButton(
//                 icon: DUIcons.svgManagerAdd,
//                 onPressed: () {
//                   FocusManager.instance.primaryFocus!.unfocus();
//                   setState(() {
//                     widget.initListValue.add('');
//                   });
//                   return widget.onChanged(widget.initListValue);
//                 })
//           ],
//         ),
//         SizedBox(
//           height: 8,
//         ),
//         ListView.separated(
//           shrinkWrap: true,
//           primary: false,
//           itemCount: widget.initListValue.length,
//           itemBuilder: (context, index) {
//             return Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     width: double.infinity,
//                     height: 40,
//                     color: DUColors.grey_F8F8F8,
//                     alignment: Alignment.centerLeft,
//                     padding: EdgeInsets.symmetric(horizontal: 8),
//                     child: TextField(
//                       style: DUTextStyle.black_2D2D2D_12,
//                       decoration: null,
//                       controller: TextEditingController(
//                           text: widget.initListValue[index]),
//                       onChanged: (value) {
//                         widget.initListValue[index] = value;

//                         return widget.onChanged(widget.initListValue);
//                       },
//                     ),
//                   ),
//                 ),
//                 DUIconButton(
//                     icon: DUIcons.svgManagerDel,
//                     onPressed: () {
//                       setState(() {
//                         widget.initListValue.removeAt(index);
//                       });

//                       return widget.onChanged(widget.initListValue);
//                     })
//               ],
//             );
//           },
//           separatorBuilder: (context, index) {
//             return SizedBox(
//               height: 16,
//             );
//           },
//         ),
//       ],
//     );
//   }
// }

// class Option2 extends StatefulWidget {
//   Option2({
//     required this.title,
//     this.initListValue = const [],
//     required this.onChanged,
//     this.onTap,
//   });

//   final dynamic title;
//   final List<String> initListValue;
//   final List<TextEditingController> controllers = [];
//   final _OntapReturnTextEditingController onTap;
//   final _OnChangedReturnListString onChanged;

//   @override
//   _Option2State createState() {
//     initListValue.forEach((e) {
//       controllers.add(TextEditingController()..text = e);
//     });
//     return _Option2State();
//   }
// }

// class _Option2State extends State<Option2> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(widget.title.toString(), style: DUTextStyle.black_2D2D2D_16),
//             DUIconButton(
//                 icon: DUIcons.svgManagerAdd,
//                 onPressed: () {
//                   FocusManager.instance.primaryFocus!.unfocus();
//                   setState(() {
//                     widget.controllers.add(TextEditingController());
//                   });
//                   return widget.onChanged(
//                       _convertTextControllToString(widget.controllers));
//                 })
//           ],
//         ),
//         SizedBox(
//           height: 8,
//         ),
//         ListView.separated(
//           shrinkWrap: true,
//           primary: false,
//           itemCount: widget.controllers.length,
//           itemBuilder: (context, index) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   '그룹${index + 1}',
//                   style: DUTextStyle.grey_8F8F8F_14,
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Center(
//                         child: ConstrainedBox(
//                           constraints: BoxConstraints.tightFor(height: 40),
//                           child: TextField(
//                             onTap: () async {
//                               if (widget.onTap != null) {
//                                 await widget.onTap!(widget.controllers[index]);
//                                 widget.onChanged(_convertTextControllToString(
//                                     widget.controllers));
//                               }
//                             },
//                             controller: widget.controllers[index],
//                             textAlignVertical: TextAlignVertical.center,
//                             textAlign: TextAlign.left,
//                             readOnly: true,
//                             style: DUTextStyle.grey_8F8F8F_14,
//                             decoration: InputDecoration(
//                               hintText: "그룹을 선택해주세요.",
//                               filled: true,
//                               suffixIcon: duGetIconWidget(
//                                   DUIcons.svgExpandMoreSM,
//                                   color: DUColors.black_2D2D2D),
//                               isDense: true,
//                               border: InputBorder.none,
//                               fillColor: DUColors.grey_F8F8F8,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     DUIconButton(
//                         icon: DUIcons.svgManagerDel,
//                         onPressed: () {
//                           setState(() {
//                             widget.controllers.removeAt(index);
//                           });

//                           return widget.onChanged(
//                               _convertTextControllToString(widget.controllers));
//                         })
//                   ],
//                 ),
//               ],
//             );
//           },
//           separatorBuilder: (context, index) {
//             return SizedBox(
//               height: 16,
//             );
//           },
//         ),
//       ],
//     );
//   }
// }

// List<String> _convertTextControllToString(
//     List<TextEditingController> controllers) {
//   return controllers.map((e) => e.text).toList();
// }

// typedef _OntapReturnTextEditingController = Function(
//     TextEditingController textEditingController)?;
// typedef _OnChangedReturnListString = Function(List<String> listString);
