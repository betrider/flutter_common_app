// import 'package:du_mobile/index.dart';

// class DUSelectProfileList extends StatefulWidget {
//   DUSelectProfileList({required this.profileList, required this.onChanged});

//   final List<ProfileModel> profileList;

//   final void Function(List<ProfileModel> profileList) onChanged;

//   @override
//   _DUSelectProfileListState createState() => _DUSelectProfileListState();
// }

// class _DUSelectProfileListState extends State<DUSelectProfileList> {
//   bool get isAllSelect => widget.profileList.length == indexList.length;

//   List<int> indexList = [];

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('전체선택'),
//               InkWell(
//                 onTap: () {
//                   setState(() {
//                     if (isAllSelect) {
//                       indexList.clear();
//                     } else {
//                       indexList.clear();
//                       widget.profileList.forEachIndexed(
//                         (value, index) {
//                           indexList.add(index);
//                         },
//                       );
//                     }
//                   });

//                   return widget
//                       .onChanged(widget.profileList.toIndexList(indexList));
//                 },
//                 child: isAllSelect
//                     ? duGetIconWidget(DUIcons.checkboxOn)
//                     : duGetIconWidget(DUIcons.checkboxOff),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           ListView.builder(
//             shrinkWrap: true,
//             primary: false,
//             itemCount: widget.profileList.length,
//             itemBuilder: (context, index) {
//               return Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: DUListTile.type40A(
//                       imageShape: ImageShape.CIRCLE,
//                       imagePath: widget.profileList[index].imagePath,
//                       title: widget.profileList[index].title,
//                       subTitle: widget.profileList[index].subTitle,
//                       padding: EdgeInsets.zero,
//                       onTap: () {
//                         setState(() {
//                           print(indexList.contains(index));
//                           if (indexList.contains(index)) {
//                             indexList.remove(index);
//                           } else {
//                             indexList.add(index);
//                           }
//                           print('listIndex:$indexList');
//                         });

//                         return widget.onChanged(
//                             widget.profileList.toIndexList(indexList));
//                       },
//                       isEffect: false,
//                       trailing: indexList.contains(index)
//                           ? duGetIconWidget(DUIcons.checkboxOn)
//                           : duGetIconWidget(DUIcons.checkboxOff),
//                     ),
//                   )
//                 ],
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
