import 'package:flutter_common_app/index.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    this.leftWidget,
    this.centerWidget,
    this.rightWidget,
    this.onTap,
    this.padding,
    this.showLine = false,
    this.showEffect = false,
    this.centerAlign = Alignment.center,
  }) : super(key: key);

  final Widget? leftWidget;
  final Widget? centerWidget;
  final AlignmentGeometry centerAlign;
  final Widget? rightWidget;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final bool showLine;
  final bool showEffect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: showEffect ? null : Colors.transparent,
      highlightColor: showEffect ? null : Colors.transparent,
      splashColor: showEffect ? null : Colors.transparent,
      child: Column(
        children: [
          Container(
            padding: padding,
            constraints: BoxConstraints(minHeight: 40),
            child: Row(
              children: [
                leftWidget ?? SizedBox(),
                Expanded(
                  child: Align(
                    alignment: centerAlign,
                    child: centerWidget ?? SizedBox(),
                  ),
                ),
                rightWidget ?? SizedBox(),
              ],
            ),
          ),
          if (showLine) Divider(),
        ],
      ),
    );
  }
}
