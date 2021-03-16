import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {

  const CustomScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.restorationId,
  });

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final List<Widget>? persistentFooterButtons;
  final Widget? drawer;
  final DrawerCallback? onDrawerChanged;
  final Widget? endDrawer;
  final DrawerCallback? onEndDrawerChanged;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final bool primary;
  final DragStartBehavior drawerDragStartBehavior;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final Color? drawerScrimColor;
  final double? drawerEdgeDragWidth;
  final bool drawerEnableOpenDragGesture;
  final bool endDrawerEnableOpenDragGesture;
  final String? restorationId;

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      appBar: appBar ?? null,
      body: (body != null) ? SafeArea(child: body!) : null,
      floatingActionButton : floatingActionButton ?? null,
      floatingActionButtonLocation : floatingActionButtonLocation ?? null,
      floatingActionButtonAnimator : floatingActionButtonAnimator ?? null,
      persistentFooterButtons : persistentFooterButtons ?? null,
      drawer : drawer ?? null,
      onDrawerChanged : onDrawerChanged ?? null,
      endDrawer : endDrawer ?? null,
      onEndDrawerChanged : onEndDrawerChanged ?? null,
      bottomNavigationBar : bottomNavigationBar ?? null,
      bottomSheet : bottomSheet ?? null,
      backgroundColor : backgroundColor ?? null,
      resizeToAvoidBottomInset : resizeToAvoidBottomInset ?? null,
      primary : primary,
      drawerDragStartBehavior : drawerDragStartBehavior,
      extendBody : extendBody,
      extendBodyBehindAppBar : extendBodyBehindAppBar,
      drawerScrimColor : drawerScrimColor ?? null,
      drawerEdgeDragWidth : drawerEdgeDragWidth ?? null,
      drawerEnableOpenDragGesture : drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture : endDrawerEnableOpenDragGesture,
      restorationId : restorationId ?? null,
    );
  }
}