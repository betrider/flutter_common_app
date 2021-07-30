// import 'package:du_mobile/index.dart';

// enum ProfileStatus {
//   ///가입
//   JOINED,

//   ///미가입
//   READY,

//   ///미가입
//   DROPPED,

//   ///차단
//   DENIED,

//   ///차단
//   BLOCKED,

//   ///종료
//   ENDED,
// }

// enum LiveStatus {
//   ///온라인
//   ONLINE,

//   ///오프라인
//   OFFLINE
// }

// enum AttendanceStatus {
//   ///출석
//   ATTENDANCE,

//   ///조퇴
//   SICKNESS,

//   ///병결
//   TARDY,

//   ///지각
//   ABSENT,

//   ///조퇴
//   EARLY_LEAVE,

//   ///미수강
//   NOT_TAKEN,

//   ///미수강
//   NONE,
// }
// enum MemberStatus {
//   ///등록회원
//   REGISTRATION,

//   ///행정회원
//   ADMINISTRATION,

//   ///거래회원
//   DEAL,

//   ///연관회원
//   RELATION,

//   ///운영회원
//   OPERATION,
// }

// ///상태바 위젯
// class DUStatusBar extends StatelessWidget {
//   ///프로필 상태
//   DUStatusBar.profile({required ProfileStatus profileStatus})
//       : widget = _Profile(profileStatus: profileStatus);

//   ///실시간 스트리밍 상태
//   DUStatusBar.live({required LiveStatus liveStatus})
//       : widget = _Product(liveStatus: liveStatus);

//   ///출석 상태
//   DUStatusBar.attendance({required AttendanceStatus attendanceStatus})
//       : widget = _Attendance(attendanceStatus: attendanceStatus);

//   ///회원 상태
//   DUStatusBar.member({required MemberStatus memberStatus})
//       : widget = _Member(memberStatus: memberStatus);

//   final Widget widget;

//   @override
//   Widget build(BuildContext context) {
//     return widget;
//   }
// }

// class _Profile extends StatelessWidget {
//   const _Profile({required this.profileStatus});

//   final ProfileStatus profileStatus;

//   @override
//   Widget build(BuildContext context) {
//     switch (profileStatus) {
//       case ProfileStatus.JOINED:
//         return DUStatusContainer(
//           text: '가입',
//           backgroundColor: DUColors.yellow_FFD04E,
//         );
//       case ProfileStatus.READY:
//         return DUStatusContainer(
//           text: '미가입',
//           backgroundColor: DUColors.yellow_FFD04E,
//         );
//       case ProfileStatus.DROPPED:
//         return DUStatusContainer(
//           text: '미가입',
//           backgroundColor: DUColors.yellow_FFD04E,
//         );
//       case ProfileStatus.DENIED:
//         return DUStatusContainer(
//           text: '차단',
//           backgroundColor: DUColors.red_E02020,
//         );
//       case ProfileStatus.BLOCKED:
//         return DUStatusContainer(
//           text: '차단',
//           backgroundColor: DUColors.red_E02020,
//         );
//       case ProfileStatus.ENDED:
//         return DUStatusContainer(
//           text: '종료',
//           backgroundColor: DUColors.black_2D2D2D,
//         );
//     }
//   }
// }

// class _Product extends StatelessWidget {
//   const _Product({required this.liveStatus});

//   final LiveStatus liveStatus;

//   @override
//   Widget build(BuildContext context) {
//     switch (liveStatus) {
//       case LiveStatus.ONLINE:
//         return DUStatusContainer(
//           text: 'ONLINE',
//           backgroundColor: DUColors.blue_0191FF,
//         );
//       case LiveStatus.OFFLINE:
//         return DUStatusContainer(
//           text: 'OFFLINE',
//           backgroundColor: DUColors.red_E02020,
//         );
//     }
//   }
// }

// class _Attendance extends StatelessWidget {
//   const _Attendance({required this.attendanceStatus});

//   final AttendanceStatus attendanceStatus;

//   @override
//   Widget build(BuildContext context) {
//     switch (attendanceStatus) {
//       case AttendanceStatus.ATTENDANCE:
//         return DUStatusContainer(
//           text: '출석',
//           backgroundColor: DUColors.grey_8F8F8F,
//         );
//       case AttendanceStatus.EARLY_LEAVE:
//         return DUStatusContainer(
//           text: '조퇴',
//           backgroundColor: DUColors.grey_8F8F8F,
//         );
//       case AttendanceStatus.SICKNESS:
//         return DUStatusContainer(
//           text: '병결',
//           backgroundColor: DUColors.grey_8F8F8F,
//         );
//       case AttendanceStatus.TARDY:
//         return DUStatusContainer(
//           text: '지각',
//           backgroundColor: DUColors.grey_8F8F8F,
//         );
//       case AttendanceStatus.ABSENT:
//         return DUStatusContainer(
//           text: '미출석',
//           backgroundColor: DUColors.grey_8F8F8F,
//         );
//       case AttendanceStatus.NOT_TAKEN:
//         return DUStatusContainer(
//           text: '미수강',
//           backgroundColor: DUColors.grey_8F8F8F,
//         );
//       case AttendanceStatus.NONE:
//         return DUStatusContainer(
//           text: '미수강',
//           backgroundColor: DUColors.grey_8F8F8F,
//         );
//     }
//   }
// }

// class _Member extends StatelessWidget {
//   const _Member({required this.memberStatus});

//   final MemberStatus memberStatus;

//   @override
//   Widget build(BuildContext context) {
//     switch (memberStatus) {
//       case MemberStatus.REGISTRATION:
//         return DUStatusContainer(
//           text: '출석',
//           backgroundColor: DUColors.purple_7540EE,
//         );
//       case MemberStatus.ADMINISTRATION:
//         return DUStatusContainer(
//           text: '출석',
//           backgroundColor: DUColors.yellow_FFD04E,
//         );
//       case MemberStatus.DEAL:
//         return DUStatusContainer(
//           text: '출석',
//           backgroundColor: DUColors.green_6DD400,
//         );
//       case MemberStatus.RELATION:
//         return DUStatusContainer(
//           text: '출석',
//           backgroundColor: DUColors.blue_0191FF,
//         );
//       case MemberStatus.OPERATION:
//         return DUStatusContainer(
//           text: '출석',
//           backgroundColor: DUColors.red_E02020,
//         );
//     }
//   }
// }