import 'package:flutter_common_app/index.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({
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
