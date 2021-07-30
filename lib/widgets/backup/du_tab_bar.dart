// import 'package:du_mobile/index.dart';

// class TabBarModel {
//   String tabName;
//   Widget tabWidget;
//   TabBarModel({
//     required this.tabName,
//     required this.tabWidget,
//   });
// }

// class DUTabBar extends StatelessWidget {
//   /// 탭 바
//   ///
//   /// Example:
//   /// ```dart
//   /// DUTabBar(
//   ///   tabList: ['DU Widget Sample', 'du Utility Sample'],
//   ///   pageList: [SampleWidgetPage1(), SampleWidgetPage2()],
//   ///   initialIndex: 0,
//   /// );
//   /// ```
//   ///
//   /// See also:
//   ///  * [tabList], 탭 명칭 목록
//   ///  * [pageList], 탭 페이지 목록
//   ///  * [initialIndex], 탭 최초 호출시 선택할 페이지
//   DUTabBar({
//     required this.tabList,
//     this.initialIndex = 0,
//     this.showLine = false,
//     this.isScrollable = false,
//   });

//   /// 탭 목록
//   final List<TabBarModel> tabList;

//   /// 탭 최초 호출시 선택할 페이지
//   final int initialIndex;

//   /// 라인 표시 여부
//   final bool showLine;

//   /// 탭 바 스크롤 여부(좌측정렬)
//   final bool isScrollable;

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: initialIndex,
//       length: tabList.length,
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               Container(
//                 color: DUColors.white_FFFFFF,
//                 child: TabBar(
//                     isScrollable: isScrollable,
//                     indicatorSize: TabBarIndicatorSize.label,
//                     indicatorColor: DUColors.purple_7540EE,
//                     unselectedLabelColor: DUColors.grey_B7B7B7,
//                     labelColor: DUColors.purple_7540EE,
//                     indicatorPadding: EdgeInsets.symmetric(horizontal: -8),
//                     tabs: tabList
//                         .map((tabBarModel) => _getTab(tabBarModel.tabName))
//                         .toList()),
//               ),

//               //TabBar 리스트 Divider stack
//               showLine
//                   ? Container(
//                       margin: EdgeInsets.only(top: 48),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           border: Border(
//                             bottom:
//                                 BorderSide(color: Colors.black12, width: 1.5),
//                           ),
//                         ),
//                       ),
//                     )
//                   : Container()
//               //TabBar 리스트 Divider stack
//             ],
//           ),
//           Expanded(
//               child: TabBarView(
//                   physics: NeverScrollableScrollPhysics(),
//                   children: tabList
//                       .map((tabBarModel) => tabBarModel.tabWidget)
//                       .toList())),
//         ],
//       ),
//     );
//   }

//   Widget _getTab(String text) {
//     return Tab(
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 16, fontWeight: DUFontWeight.w500),
//       ),
//     );
//   }
// }

// class DUContorllerTabBar extends StatelessWidget {
//   /// 탭 바
//   ///
//   /// Example:
//   /// ```dart
//   /// DUTabBar(
//   ///   tabList: ['DU Widget Sample', 'du Utility Sample'],
//   ///   pageList: [SampleWidgetPage1(), SampleWidgetPage2()],
//   ///   initialIndex: 0,
//   /// );
//   /// ```
//   ///
//   /// See also:
//   ///  * [tabList], 탭 명칭 목록
//   ///  * [pageList], 탭 페이지 목록
//   ///  * [initialIndex], 탭 최초 호출시 선택할 페이지
//   DUContorllerTabBar({
//     required this.tabList,
//     this.initialIndex = 0,
//     this.showLine = false,
//     this.isScrollable = false,
//     this.controller,
//   });

//   /// 탭 목록
//   final List<TabBarModel> tabList;

//   /// 탭 최초 호출시 선택할 페이지
//   final int initialIndex;

//   /// 라인 표시 여부
//   final bool showLine;

//   /// 탭 바 스크롤 여부(좌측정렬)
//   final bool isScrollable;

//   late TabController? controller;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Stack(
//           children: [
//             Container(
//               color: DUColors.white_FFFFFF,
//               child: TabBar(
//                   controller: controller,
//                   isScrollable: isScrollable,
//                   indicatorSize: TabBarIndicatorSize.label,
//                   indicatorColor: DUColors.purple_7540EE,
//                   unselectedLabelColor: DUColors.grey_B7B7B7,
//                   labelColor: DUColors.purple_7540EE,
//                   indicatorPadding: EdgeInsets.symmetric(horizontal: -8),
//                   tabs: tabList
//                       .map((tabBarModel) => _getTab(tabBarModel.tabName))
//                       .toList()),
//             ),

//             //TabBar 리스트 Divider stack
//             showLine
//                 ? Container(
//                     margin: EdgeInsets.only(top: 48),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border(
//                           bottom: BorderSide(color: Colors.black12, width: 1.5),
//                         ),
//                       ),
//                     ),
//                   )
//                 : Container()
//             //TabBar 리스트 Divider stack
//           ],
//         ),
//         Expanded(
//             child: TabBarView(
//                 controller: controller,
//                 physics: NeverScrollableScrollPhysics(),
//                 children: tabList
//                     .map((tabBarModel) => tabBarModel.tabWidget)
//                     .toList())),
//       ],
//     );
//   }

//   Widget _getTab(String text) {
//     return Tab(
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 16, fontWeight: DUFontWeight.w500),
//       ),
//     );
//   }
// }
