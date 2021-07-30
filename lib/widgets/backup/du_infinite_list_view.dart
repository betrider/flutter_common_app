// import 'package:du_mobile/index.dart';

// class DUInfiniteListView extends StatefulWidget {
//   DUInfiniteListView({
//     this.shrinkWrap = false,
//     this.separatedWidget = const Divider(),
//     required this.itemList,
//   });

//   final bool shrinkWrap;
//   final Widget separatedWidget;
//   final List<Widget> itemList;

//   @override
//   State<StatefulWidget> createState() {
//     return DUInfiniteListViewState();
//   }
// }

// class DUInfiniteListViewState extends State<DUInfiniteListView>
//     with AfterLayoutMixin<DUInfiniteListView> {
//   List items = [];
//   ScrollController scrollController = ScrollController();
//   bool isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     print('initState');
//     scrollController.addListener(() {
//       if (scrollController.offset >=
//               scrollController.position.maxScrollExtent * 0.7 &&
//           !scrollController.position.outOfRange) {
//         getMoreData();
//       }
//     });
//   }

//   @override
//   void afterFirstLayout(BuildContext context) async {
//     print('afterFirstLayout');
//     List<Widget> newEntries = await dnHttpRequest(0, 20);
//     setState(() {
//       items.addAll(newEntries);
//     });
//   }

//   getMoreData() async {
//     if (!isLoading) {
//       if (items.length != widget.itemList.length) {
//         setState(() {
//           isLoading = true;
//         });
//         List<Widget> newEntries = await dnHttpRequest(items.length, items.length + 10); //api 호출부분
//         setState(() {
//           items.addAll(newEntries);
//           isLoading = false;
//         });
//       }
//     }
//   }

//   Future<List<Widget>> dnHttpRequest(int from, int to) async {
//     return Future.delayed(Duration(seconds: 1), () {
//       if (to >= widget.itemList.length) {
//         return widget.itemList.getRange(from, widget.itemList.length).toList();
//       } else {
//         return widget.itemList.getRange(from, to).toList();
//       }
//     });
//   }

//   Widget buildProgress() {
//     return Padding(
//       padding: EdgeInsets.all(12.0),
//       child: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('build');
//     return items.length == 0
//         ? Center(child: CircularProgressIndicator())
//         : ListView.separated(
//             shrinkWrap: widget.shrinkWrap,
//             itemCount: items.length + 1,
//             itemBuilder: (BuildContext context, int index) {
//               if (index >= items.length) {
//                 if (isLoading) {
//                   return buildProgress();
//                 } else {
//                   return Container();
//                 }
//               } else {
//                 return ListTile(
//                   title: items[index],
//                 );
//               }
//             },
//             separatorBuilder: (context, index) {
//               return widget.separatedWidget;
//             },
//             controller: scrollController,
//           );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     scrollController.dispose();
//   }
// }
