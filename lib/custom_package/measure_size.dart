import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

typedef void OnWidgetSizeChange(Size size);

//build된 위젯 사이즈 체크용
class MeasuredSize extends StatefulWidget {
  /// Widget to calculate it's size.
  final Widget child;

  /// [onChange] will be called when the [Size] changes.
  /// [onChange] will return the value ONLY once if it didn't change, and it will NOT return a value if it's equals to [Size.zero]
  final OnWidgetSizeChange onChange;

  const MeasuredSize({
    Key? key,
    required this.onChange,
    required this.child,
  }) : super(key: key);

  @override
  _MeasuredSizeState createState() => _MeasuredSizeState();
}

class _MeasuredSizeState extends State<MeasuredSize> {
  @override
  void initState() {
    SchedulerBinding.instance!.addPostFrameCallback(postFrameCallback);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance!.addPostFrameCallback(postFrameCallback);
    return Container(
      key: widgetKey,
      child: widget.child,
    );
  }

  var widgetKey = GlobalKey();
  var oldSize;

  void postFrameCallback(_) async {
    var context = widgetKey.currentContext!;

    await Future.delayed(
        Duration(milliseconds: 100)); // wait till the image is drawn
    Size newSize = context.size!;
    if (newSize == Size.zero) return;
    if (oldSize == newSize) return;
    oldSize = newSize;
    widget.onChange(newSize);
  }
}

class Measurer extends SingleChildRenderObjectWidget {
  /// Create a new measurer.
  ///
  /// The given [onMeasure] callback is called after each new rendering of its
  /// child and provides its layout size.
  ///
  /// The given [onPaintBoundsChanged] callback is called after each new rendering of its
  /// child and provides its paint bounds on the screen.
  const Measurer({
    Key? key,
    this.onMeasure,
    this.onPaintBoundsChanged,
    this.onConstraintsChanged,
    required Widget child,
  }) : super(key: key, child: child);

  /// A callback that is called after each new rendering of its child and provides
  /// its layout size.
  final OnMeasure? onMeasure;

  /// A callback that is called after each new rendering of its child and provides
  /// its paint bounds on the screen.
  final OnPaintBoundsChanged? onPaintBoundsChanged;

  /// A callback that is called whenever the current constraints changed.
  final OnConstraintsChanged? onConstraintsChanged;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MeasureSizeRenderObject(
      onMeasure: onMeasure,
      onPaintBoundsChanged: onPaintBoundsChanged,
      onConstraintsChanged: onConstraintsChanged,
    );
  }
}

/// When a [size] or its associated [constraints] changed.
typedef OnMeasure = void Function(
  Size size,
  BoxConstraints? constraints,
);

/// When [constraints] changed.
typedef OnConstraintsChanged = void Function(
  BoxConstraints? constraints,
);

/// When the onscreen [paintBounds] changed.
typedef OnPaintBoundsChanged = void Function(
  Rect paintBounds,
);

/// An element that notifies whenever its size changes.
class _MeasureSizeRenderObject extends RenderProxyBox {
  _MeasureSizeRenderObject({
    required this.onMeasure,
    required this.onPaintBoundsChanged,
    required this.onConstraintsChanged,
  });

  final OnMeasure? onMeasure;
  final OnPaintBoundsChanged? onPaintBoundsChanged;
  final OnConstraintsChanged? onConstraintsChanged;

  Size? _size;
  BoxConstraints? _constraints;
  Rect? _paintBounds;

  @override
  void performLayout() {
    super.performLayout();

    var measureChanged = false;
    var constraintsChanged = false;
    var paintBoundsChanged = false;

    final newSize = child?.size ?? Size.zero;
    if (_size != newSize) {
      _size = newSize;
      measureChanged = true;
    }

    final newConstraints = child?.constraints;
    if (_constraints != newConstraints) {
      _constraints = newConstraints;
      measureChanged = true;
      constraintsChanged = true;
    }

    final newPaintBounds = child?.paintBounds ?? Rect.zero;
    if (_paintBounds != newPaintBounds) {
      _paintBounds = newPaintBounds;
      paintBoundsChanged = true;
    }

    measureChanged = onMeasure != null && measureChanged;
    paintBoundsChanged = onPaintBoundsChanged != null && paintBoundsChanged;

    if (measureChanged || paintBoundsChanged || constraintsChanged) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        if (measureChanged) {
          onMeasure?.call(
            _size!,
            _constraints,
          );
        }
        if (constraintsChanged) {
          onConstraintsChanged?.call(
            _constraints,
          );
        }
        if (paintBoundsChanged) {
          onPaintBoundsChanged?.call(
            _paintBounds!,
          );
        }
      });
    }
  }
}