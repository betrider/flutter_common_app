// import 'package:du_mobile/index.dart';

// enum HintColor {
//   ///연회색
//   lightGrey,

//   ///연하늘색
//   lightBlue,
// }

// class MenuModel {
//   /// 제목
//   String title;

//   /// 내용
//   String content;

//   /// 클릭 이벤트
//   void Function() onTap;

//   MenuModel({
//     required this.title,
//     required this.content,
//     required this.onTap,
//   });
// }

// class DUTextContainer extends StatelessWidget {
//   /// 컨텐츠메뉴 전용 텍스트 컨테이너
//   DUTextContainer.contentMenu({
//     List<MenuModel> menuList = const [],
//   }) : this._widget = _MenuListWidget(menuList: menuList);

//   /// 힌트 전용 텍스트 컨테이너
//   DUTextContainer.hint({
//     required String text,
//     HintColor hintColor = HintColor.lightGrey,
//   }) : this._widget = _HintWidget(hintColor: hintColor, text: text);

//   /// common Widget
//   final Widget _widget;

//   @override
//   Widget build(BuildContext context) {
//     return _widget;
//   }
// }

// class _MenuListWidget extends StatelessWidget {
//   const _MenuListWidget({
//     required this.menuList,
//   });

//   final List<MenuModel> menuList;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: menuList.map(
//         (menuModel) {
//           var index = menuList.indexOf(menuModel);

//           if (index == 0) {
//             return _getMenuWidget(menuModel);
//           } else {
//             return Column(
//               children: [
//                 SizedBox(
//                   height: 8,
//                 ),
//                 _getMenuWidget(menuModel),
//               ],
//             );
//           }
//         },
//       ).toList(),
//     );
//   }

//   Widget _getMenuWidget(MenuModel menuModel) {
//     return InkWell(
//       onTap: menuModel.onTap,
//       child: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           border: Border.all(color: DUColors.grey_EFEFEF, width: 1),
//           borderRadius: BorderRadius.all(Radius.circular(8)),
//         ),
//         constraints: BoxConstraints(minHeight: 72),
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               menuModel.title,
//               style: DUTextStyle.black_2D2D2D_16,
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             Text(
//               menuModel.content,
//               style: DUTextStyle.grey_8F8F8F_12,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _HintWidget extends StatelessWidget {
//   const _HintWidget({
//     required this.hintColor,
//     required this.text,
//   });

//   final HintColor hintColor;
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: hintColor == HintColor.lightGrey
//           ? DUColors.grey_F8F8F8
//           : DUColors.white_F6F7FF,
//       padding: EdgeInsets.all(8),
//       child: Text(
//         text,
//         style: DUTextStyle.black_2D2D2D_12,
//       ),
//     );
//   }
// }
