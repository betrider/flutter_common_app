// import 'package:du_mobile/index.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// ///body를 기본적으로 SafeArea와 Padding으로 감싸주는 DU전용 Scaffold
// class DUScaffold extends StatelessWidget {
//   const DUScaffold({
//     Key? key,
//     this.appBar,
//     this.bodyPadding = EdgeInsets.zero,
//     this.body,
//     this.safeArea = true,
//     this.floatingActionButton,
//     this.floatingActionButtonLocation,
//     this.floatingActionButtonAnimator,
//     this.persistentFooterButtons,
//     this.drawer,
//     this.onDrawerChanged,
//     this.endDrawer,
//     this.onEndDrawerChanged,
//     this.bottomNavigationBar,
//     this.bottomSheet,
//     this.backgroundColor,
//     this.resizeToAvoidBottomInset,
//     this.primary = true,
//     this.drawerDragStartBehavior = DragStartBehavior.start,
//     this.extendBody = false,
//     this.extendBodyBehindAppBar = false,
//     this.drawerScrimColor,
//     this.drawerEdgeDragWidth,
//     this.drawerEnableOpenDragGesture = true,
//     this.endDrawerEnableOpenDragGesture = true,
//     this.restorationId,
//   });

//   final DUAppBar? appBar;
//   final EdgeInsetsGeometry bodyPadding;
//   final Widget? body;
//   final bool safeArea;
//   final Widget? floatingActionButton;
//   final FloatingActionButtonLocation? floatingActionButtonLocation;
//   final FloatingActionButtonAnimator? floatingActionButtonAnimator;
//   final List<Widget>? persistentFooterButtons;
//   final Widget? drawer;
//   final DrawerCallback? onDrawerChanged;
//   final Widget? endDrawer;
//   final DrawerCallback? onEndDrawerChanged;
//   final Widget? bottomNavigationBar;
//   final Widget? bottomSheet;
//   final Color? backgroundColor;
//   final bool? resizeToAvoidBottomInset;
//   final bool primary;
//   final DragStartBehavior drawerDragStartBehavior;
//   final bool extendBody;
//   final bool extendBodyBehindAppBar;
//   final Color? drawerScrimColor;
//   final double? drawerEdgeDragWidth;
//   final bool drawerEnableOpenDragGesture;
//   final bool endDrawerEnableOpenDragGesture;
//   final String? restorationId;

//   @override
//   Scaffold build(BuildContext context) {
//     return Scaffold(
//       appBar: appBar ?? null,
//       body: (body != null)
//           ? safeArea
//               ? SafeArea(
//                   child: Padding(
//                   padding: bodyPadding,
//                   child: body!,
//                 ))
//               : Padding(
//                   padding: bodyPadding,
//                   child: body!,
//                 )
//           : null,
//       floatingActionButton: floatingActionButton ?? null,
//       floatingActionButtonLocation: floatingActionButtonLocation ?? null,
//       floatingActionButtonAnimator: floatingActionButtonAnimator ?? null,
//       persistentFooterButtons: persistentFooterButtons ?? null,
//       drawer: drawer ?? null,
//       onDrawerChanged: onDrawerChanged ?? null,
//       endDrawer: endDrawer ?? null,
//       onEndDrawerChanged: onEndDrawerChanged ?? null,
//       bottomNavigationBar: bottomNavigationBar ?? null,
//       bottomSheet: bottomSheet ?? null,
//       backgroundColor: backgroundColor ?? null,
//       resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? null,
//       primary: primary,
//       drawerDragStartBehavior: drawerDragStartBehavior,
//       extendBody: extendBody,
//       extendBodyBehindAppBar: extendBodyBehindAppBar,
//       drawerScrimColor: drawerScrimColor ?? null,
//       drawerEdgeDragWidth: drawerEdgeDragWidth ?? null,
//       drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
//       endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
//       restorationId: restorationId ?? null,
//     );
//   }
// }
