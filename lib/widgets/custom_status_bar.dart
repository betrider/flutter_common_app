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
class DUStatusBar extends StatelessWidget {

  ///프로필 상태
  DUStatusBar.profile({
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
        return _StatusBar(
          text: '가입',
          backgroundColor: Colors.yellow,
        );
      case ProfileStatus.READY:
        return _StatusBar(
          text: '미가입',
          backgroundColor: Colors.yellow,
        );
      case ProfileStatus.DENIED:
        return _StatusBar(
          text: '차단',
          backgroundColor: Colors.red,
        );
      case ProfileStatus.BLOCKED:
        return _StatusBar(
          text: '차단',
          backgroundColor: Colors.red,
        );
      case ProfileStatus.ENDED:
        return _StatusBar(
          text: '종료',
          backgroundColor: Colors.black,
        );
    }
  }
}

class _StatusBar extends StatelessWidget {
  const _StatusBar({
    required this.text,
    this.textColor = Colors.white,
    this.textSize = 12,
    this.backgroundColor = AppColor.mainColor,
  });

  /// 글자
  final String text;

  /// 글자 색상
  final Color textColor;

  /// 글자 사이즈
  final double textSize;

  /// 배경색상
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(2),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Center(
        widthFactor: 1,
        heightFactor: 1,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: textSize,
            fontWeight: FontWeight.w400,
          ),
          textScaleFactor: 1,
        ),
      ),
    );
  }
}
