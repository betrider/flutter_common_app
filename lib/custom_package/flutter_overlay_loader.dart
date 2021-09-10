import 'package:flutter/material.dart';

const defaultValue = 56.0;

//flutter_overlay_loader
class Loader extends StatelessWidget {
  static OverlayEntry? _currentLoader;
  Loader._(this._progressIndicator, this._themeData);
  final Widget? _progressIndicator;
  final ThemeData? _themeData;

  static OverlayState? _overlayState;

  static void show(
    BuildContext context, {

    /// Define your custom progress indicator if you want [optional]
    Widget? progressIndicator,

    /// Define Theme [optional]
    ThemeData? themeData,

    /// Define Overlay color [optional]
    Color? overlayColor,

    /// overlayTop mean overlay start from Top margin. If you have custom appbar then will be custom appbar height here.
    double? overlayFromTop,

    /// overlayFromBottom mean overlay end from Bottom margin.If you have custom BottomAppBar then will be custom BottomAppBar height here.
    double? overlayFromBottom,
  }) {
    _overlayState = Overlay.of(context);
    if (_currentLoader == null) {
      ///Create current Loader Entry
      _currentLoader = new OverlayEntry(builder: (context) {
        return Stack(
          children: <Widget>[
            Container(
              color: overlayColor ?? Color(0x99ffffff),
            ),
            Center(
                child: Loader._(
              progressIndicator,
              themeData,
            )),
          ],
        );
      });
      try {
        WidgetsBinding.instance?.addPostFrameCallback(
            (_) => _overlayState?.insertAll([_currentLoader!]));
      } catch (e) {}
    }
  }

  static void hide() {
    if (_currentLoader != null) {
      try {
        _currentLoader?.remove();
      } catch (e) {
        print(e.toString());
      } finally {
        _currentLoader = null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Theme(
            data: _themeData ??
                Theme.of(context).copyWith(accentColor: Colors.blue),
            child: _progressIndicator ?? CircularProgressIndicator()));
  }
}
