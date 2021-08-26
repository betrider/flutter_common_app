import 'package:flutter_common_app/index.dart';
import 'package:flutter/services.dart';

///DU전용 앱바(높이:56)
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56);

  const CustomAppBar({
    Key? key,
    this.title = '',
    this.leading,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.shadowColor = Colors.transparent,
    this.shape,
    this.backgroundColor,
    this.foregroundColor,
    this.brightness,
    this.iconTheme,
    this.actionsIconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.backwardsCompatibility,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
  });

  final dynamic title;
  final CustomIconButton? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Color? shadowColor;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Brightness? brightness;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final TextTheme? textTheme;
  final bool primary;
  final bool? centerTitle;
  final bool excludeHeaderSemantics;
  final double? titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  final double? toolbarHeight;
  final double? leadingWidth;
  final bool? backwardsCompatibility;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final SystemUiOverlayStyle? systemOverlayStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: key,
      title: _getTitleWidget(title),
      leading: leading ?? null,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: _addRightSizedBox8(actions),
      flexibleSpace: flexibleSpace ?? null,
      bottom: bottom ?? null,
      elevation: elevation ?? null,
      shadowColor: shadowColor,
      shape: shape ?? null,
      backgroundColor: backgroundColor ?? null,
      foregroundColor: foregroundColor ?? null,
      brightness: brightness ?? null,
      iconTheme: iconTheme ?? null,
      actionsIconTheme: actionsIconTheme ?? null,
      textTheme: textTheme ?? null,
      primary: primary,
      centerTitle: centerTitle ?? false,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing ?? (
        leading == null
              ? 16
              : 0
        ),
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight ?? null,
      leadingWidth: leadingWidth ?? null,
      backwardsCompatibility: backwardsCompatibility ?? null,
      toolbarTextStyle: toolbarTextStyle ?? null,
      titleTextStyle: titleTextStyle ?? null,
      systemOverlayStyle: systemOverlayStyle,
    );
  }

  Widget _getTitleWidget(dynamic title) {
    if (title is String) {
      return Text(title);
    } else {
      return title;
    }
  }

  List<Widget>? _addRightSizedBox8(List<Widget>? actions) {
    if (actions != null) {
      return [
        ...actions,
        SizedBox(
          width: 8,
        )
      ];
    } else {
      return null;
    }
  }
}
