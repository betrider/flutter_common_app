import 'package:flutter_common_app/index.dart';

enum ProfileStatus {
  ///가입
  JOINED,

  ///미가입
  READY,

  ///차단
  DENIED,

  ///차단
  BLOCKED,

  ///종료
  ENDED,
}

///상태바 위젯
class CustomStatusBar extends StatelessWidget {

  ///프로필 상태
  CustomStatusBar.profile({
    required ProfileStatus profileStatus,
  }) : widget = _Profile(
          profileStatus: profileStatus,
        );

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return widget;
  }
}

class _Profile extends StatelessWidget {
  const _Profile({required this.profileStatus});

  final ProfileStatus profileStatus;

  @override
  Widget build(BuildContext context) {
    switch (profileStatus) {
      case ProfileStatus.JOINED:
        return CustomBar(
          text: '가입',
          backgroundColor: Colors.yellow,
        );
      case ProfileStatus.READY:
        return CustomBar(
          text: '미가입',
          backgroundColor: Colors.yellow,
        );
      case ProfileStatus.DENIED:
        return CustomBar(
          text: '차단',
          backgroundColor: Colors.red,
        );
      case ProfileStatus.BLOCKED:
        return CustomBar(
          text: '차단',
          backgroundColor: Colors.red,
        );
      case ProfileStatus.ENDED:
        return CustomBar(
          text: '종료',
          backgroundColor: Colors.black,
        );
    }
  }
}