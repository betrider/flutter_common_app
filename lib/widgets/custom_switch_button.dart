import 'package:flutter/material.dart';
import 'package:flutter_common_app/index.dart';

class CustomSwitchButton extends StatefulWidget {
  const CustomSwitchButton({required this.value, required this.onChanged});

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  _CustomSwitchButtonState createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  late bool value;

  late EdgeInsetsGeometry _padding;

  EdgeInsetsGeometry _getPadding() {
    if (value) {
      return EdgeInsets.only(left: 33);
    } else {
      return EdgeInsets.only(right: 33);
    }
  }

  @override
  void initState() {
    super.initState();
    value = widget.value;
    _padding = _getPadding();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          value = !value;
          _padding = _getPadding();
        });

        return widget.onChanged(value);
      },
      child: Container(
        width: 72,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: value ? AppColor.mainColor : AppColor.grey_8F8F8F,
        ),
        padding: EdgeInsets.all(3),
        child: LayoutBuilder(
          builder: (context, constraints) {
            print(constraints.maxWidth);
            return Row(
              children: [
                AnimatedPadding(
                  padding: _padding,
                  curve: Curves.ease,
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    width: constraints.maxWidth / 2,
                    height: double.infinity,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
