// import 'package:du_mobile/index.dart';

// class ProfileModel {
//   /// 프로필 타이틀
//   final String? title;

//   /// 프로필 서브타이틀
//   final String? subTitle;

//   /// 프로필 이미지 경로
//   final String? imagePath;

//   ProfileModel({
//     this.title,
//     this.subTitle,
//     this.imagePath,
//   });
// }

// class DUProfileBar extends StatefulWidget {

//   DUProfileBar.typeA({
//     int initSelectedIndex = 0,
//     required this.profileList,
//     required this.onChanged,
//   }) : _widget = _DUProfileBarTypeA(
//     initSelectedIndex: initSelectedIndex
//   );

//   DUProfileBar.typeB({
//     required this.profileList,
//     required this.onChanged,
//   }) : _widget = _DUProfileBarTypeB();

//   /// 프로필 리스트
//   final List<ProfileModel> profileList;
//   /// 변경 이벤트
//   final void Function(int index) onChanged;
//   /// 출력 위젯
//   final State _widget;

//   @override
//   State createState() => _widget;
// }

// class _DUProfileBarTypeA extends State<DUProfileBar> {

//   _DUProfileBarTypeA({required this.initSelectedIndex});
  
//   final int initSelectedIndex;

//   late int isSelectedIndex;

//   @override
//   void initState() {
//     super.initState();
//     isSelectedIndex = initSelectedIndex;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//           children: widget.profileList.mapWithIndex(
//         (profileModel, index) => InkWell(
//           child: DUProfile(
//             title: profileModel.title!,
//             imagePath: profileModel.imagePath!,
//             isSelected: isSelectedIndex == index,
//           ),
//           onTap: () {
//             setState(() {
//               isSelectedIndex = index;
//             });
//             return widget.onChanged(index);
//           },
//         ),
//       )),
//     );
//   }
// }

// class _DUProfileBarTypeB extends State<DUProfileBar> {

//   late List<ProfileModel> _profileList;

//   @override
//   void initState() { 
//     super.initState();
//     _profileList = widget.profileList;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//           children: _profileList.mapWithIndex(
//         (profileModel, index) => DUProfile(
//           title: profileModel.title!,
//           imagePath: profileModel.imagePath!,
//           showCloseIcon: true,
//           onClosed: () {
//             setState(() {
//               _profileList.removeAt(index);
//             });
//             return widget.onChanged(index);
//           },
//         ),
//       )),
//     );
//   }
// }
