// import 'package:du_mobile/app/pages/_base/util/group_list_select.dart';
// import 'package:du_mobile/index.dart';

// class DUSelectGroup extends StatefulWidget {
//   @override
//   _DUSelectGroupState createState() => _DUSelectGroupState();
// }

// class _DUSelectGroupState extends State<DUSelectGroup> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//         border: Border.all(color: DUColors.grey_EFEFEF, width: 1),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(8), topRight: Radius.circular(8)),
//                 color: DUColors.purple_7540EE),
//             height: 40,
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('그룹선택', style: DUTextStyle.white_FFFFFF_16),
//                 InkWell(
//                   onTap: () {
//                     print('그룹목록 보기');
//                   },
//                   child: InkWell(
//                     onTap: () async {
//                       var aa = GroupListSelect().getData();
//                     },
//                     child: Row(
//                       children: [
//                         Text('그룹목록 보기', style: DUTextStyle.white_FFFFFF_12),
//                         duGetIconWidget(DUIcons.svgNext,
//                             color: Colors.white, size: 20),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 40,
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             alignment: Alignment.centerLeft,
//             child: Row(
//               children: [
//                 Text(
//                   '회원그룹(선택 1) : ',
//                   style: DUTextStyle.black_2D2D2D_12,
//                 ),
//                 Text(
//                   '그룹을 선택해주세요',
//                   style: DUTextStyle.purple_7540EE_12,
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Divider(
//               height: 1,
//             ),
//           ),
//           Container(
//             height: 40,
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             alignment: Alignment.centerLeft,
//             child: Row(
//               children: [
//                 Text(
//                   '상품그룹(선택 2) : ',
//                   style: DUTextStyle.black_2D2D2D_12,
//                 ),
//                 Text(
//                   '상품을 선택해주세요',
//                   style: DUTextStyle.purple_7540EE_12,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
