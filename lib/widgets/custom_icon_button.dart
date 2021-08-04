import 'package:flutter_common_app/index.dart';
import 'package:flutter/rendering.dart';

///필수위젯으로 사용하기위해 du_button이랑 별개로 관리함 ex: DUScaffold - actions
class CustomIconButton extends StatelessWidget {
  
  /// 이미지 버튼
  const CustomIconButton({
    required this.icon,
    this.title,
    required this.onPressed,
    this.buttonSize = 40,
    this.iconSize = 24,
    this.iconColor,
    this.isDecoration = false,
    this.isHandCursor = false,
    this.isEffect = false,
  });

  /// 아이콘
  /// 
  /// Example:
  /// ```dart
  ///  icon: Icon(Icons.more_vert_sharp)
  ///  icon: Icons.more_vert_sharp
  ///  icon: DUIcons.avatarDefault
  ///  icon: 'assets/icons/information.png'
  /// ```
  /// 
  final dynamic icon;

  /// 아이콘 제목
  final String? title;

  /// 아이콘 사이즈(기본:40)
  final double buttonSize;

  /// 아이콘 사이즈(기본:24)
  final double iconSize;

  /// 아이콘 색상
  final Color? iconColor;

  /// 가장자리 표시 여부
  final bool isDecoration;

  /// 버튼 클릭 이벤트
  final VoidCallback onPressed;

  /// 핸드커서 여부
  final bool isHandCursor;

  /// 클릭 이펙트 여부
  final bool isEffect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: isHandCursor ? SystemMouseCursors.click : SystemMouseCursors.basic,
      hoverColor: isEffect ? null : Colors.transparent,
      highlightColor: isEffect ? null : Colors.transparent,
      splashColor: isEffect ? null : Colors.transparent,
      onTap: onPressed,
      onDoubleTap: () {},
      child: Container(
        constraints: BoxConstraints(
          minWidth: buttonSize,
          minHeight: buttonSize,
        ),
        decoration: isDecoration
            ? BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1))
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            getIconWidget(
              icon,
              size: iconSize,
              color: iconColor
            ),
            if (title != null) ...[
              SizedBox(
                height: 1,
              ),
              Text(title.toString(), style: AppTextStyle.grey_12_w400),
            ]
          ],
        ),
      ),
    );
  }
}
