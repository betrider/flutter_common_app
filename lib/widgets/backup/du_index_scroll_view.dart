// import 'package:du_mobile/index.dart';

// class WidgetModel {
//   /// 타이틀
//   final String title;

//   /// 위젯
//   final Widget widget;

//   WidgetModel({required this.title, required this.widget});
// }

// class DUIndexScrollView extends StatefulWidget {
//   const DUIndexScrollView({Key? key, required this.listWidgetModel, this.isLoading})
//       : super(key: key);

//   final List<WidgetModel> listWidgetModel;

//   final bool? isLoading;

//   @override
//   DUIndexScrollViewState createState() => DUIndexScrollViewState();
// }

// class DUIndexScrollViewState extends State<DUIndexScrollView> {
//   final AutoScrollController autoScrollController = AutoScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       physics: ScrollPhysics(),
//       controller: autoScrollController,
//       child: Column(
//         children: [
//           ListView.separated(
//             physics: NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: widget.isLoading != null ? 2 : widget.listWidgetModel.length,
//             itemBuilder: (context, index) {
//               if (index == 0) {
//                 return AutoScrollTag(
//                   key: ValueKey(index),
//                   controller: autoScrollController,
//                   index: index,
//                   highlightColor: DUColors.purple_7540EE,
//                   child: Column(
//                     children: [
//                       Wrap(
//                         runSpacing: -10,
//                         spacing: 2,
//                         children: [
//                           ...widget.listWidgetModel
//                               .mapWithIndex((widgetModel, index) => InkWell(
//                                     onTap: () {
//                                       autoScrollController
//                                           .scrollToIndex(
//                                             index,
//                                             preferPosition:
//                                                 AutoScrollPosition.begin,
//                                           )
//                                           .then((_) {});
//                                     },
//                                     child: Chip(
//                                       backgroundColor: Colors.amber[100],
//                                       label: Text(widgetModel.title),
//                                       // child: Text(widgetModel.title),
//                                       // onPressed: () {
//                                       //   autoScrollController
//                                       //       .scrollToIndex(
//                                       //     index,
//                                       //     preferPosition: AutoScrollPosition.begin,
//                                       //   )
//                                       //       .then((_) {
//                                       //     autoScrollController.highlight(index,
//                                       //         highlightDuration:
//                                       //             Duration(microseconds: 200000));
//                                       //   });
//                                       // },
//                                     ),
//                                   ))
//                               .toList()
//                         ],
//                       ),
//                       widget.listWidgetModel[index].widget,
//                     ],
//                   ),
//                 );
//               } else {
//                 return AutoScrollTag(
//                   key: ValueKey(index),
//                   controller: autoScrollController,
//                   index: index,
//                   highlightColor: DUColors.purple_7540EE,
//                   child: widget.listWidgetModel[index].widget,
//                 );
//               }
//             },
//             separatorBuilder: (context, index) {
//               return Divider();
//             },
//           ),
//         ],
//       ),
//     );
//     // return Column(
//     //   children: [
//     //     Expanded(
//     //       child: ListView.separated(
//     //         controller: autoScrollController,
//     //         itemCount: widget.listWidgetModel.length,
//     //         itemBuilder: (context, index) {
//     //           if (index == 0) {
//     //             return AutoScrollTag(
//     //               key: ValueKey(index),
//     //               controller: autoScrollController,
//     //               index: index,
//     //               highlightColor: DUColors.purple_7540EE,
//     //               child: Column(
//     //                 children: [
//     //                   Wrap(
//     //                     runSpacing: -10,
//     //                     spacing: 2,
//     //                     children: [
//     //                       ...widget.listWidgetModel
//     //                           .mapWithIndex((widgetModel, index) => InkWell(
//     //                                 onTap: () {
//     //                                   autoScrollController
//     //                                       .scrollToIndex(
//     //                                         index,
//     //                                         preferPosition:
//     //                                             AutoScrollPosition.begin,
//     //                                       )
//     //                                       .then((_) {});
//     //                                 },
//     //                                 child: Chip(
//     //                                   backgroundColor: Colors.amber[100],
//     //                                   label: Text(widgetModel.title),
//     //                                 ),
//     //                               ))
//     //                           .toList()
//     //                     ],
//     //                   ),
//     //                   widget.listWidgetModel[index].widget,
//     //                 ],
//     //               ),
//     //             );
//     //           } else {
//     //             return AutoScrollTag(
//     //               key: ValueKey(index),
//     //               controller: autoScrollController,
//     //               index: index,
//     //               highlightColor: DUColors.purple_7540EE,
//     //               child: widget.listWidgetModel[index].widget,
//     //             );
//     //           }
//     //         },
//     //         separatorBuilder: (context, index) {
//     //           return Divider();
//     //         },
//     //       ),
//     //     ),
//     //   ],
//     // );
//   }

//   void moveFirst() {
//     autoScrollController
//         .scrollToIndex(0, preferPosition: AutoScrollPosition.begin)
//         .then((_) {
//       // autoScrollController.highlight(0,
//       //     highlightDuration: Duration(microseconds: 200000));
//     });
//   }
// }
