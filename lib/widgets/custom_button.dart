import 'package:flutter_common_app/index.dart';

enum CustomButtonStyle {
  ///사각형
  Text,

  ///원형
  Elevated,

  ///원형
  Outlined,
}

class CustomButton extends StatelessWidget {
  const CustomButton.text({
    this.width,
    this.height = 40,
    required this.child,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
  }) : this.customButtonStyle = CustomButtonStyle.Text;

  const CustomButton.elevated({
    this.width,
    this.height = 40,
    required this.child,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
  }) : this.customButtonStyle = CustomButtonStyle.Elevated;

  const CustomButton.outlined({
    this.width,
    this.height = 40,
    required this.child,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
  }) : this.customButtonStyle = CustomButtonStyle.Outlined;

  final CustomButtonStyle customButtonStyle;
  final double? width;
  final double? height;
  final Widget child;
  final VoidCallback? onPressed;

  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: (() {
        if (customButtonStyle == CustomButtonStyle.Text) {
          return TextButton(
            child: child,
            onPressed: onPressed,
            style: _getButtonStyle()
          );
        } else if (customButtonStyle == CustomButtonStyle.Elevated) {
          return ElevatedButton(
            child: child,
            onPressed: onPressed,
            style: _getButtonStyle()
          );
        } else {
          //CustomButtonStyle.Outlined
          return OutlinedButton(
            child: child,
            onPressed: onPressed,
            style: _getButtonStyle(),
          );
        }
      }()),
    );
  }

  ButtonStyle _getButtonStyle() {
    return ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            foregroundColor: textColor == null ? null : MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (!states.contains(MaterialState.disabled))
                  return Colors.grey;
                else
                  return textColor!;
              },
            ),
            backgroundColor: backgroundColor == null
                ? null
                : MaterialStateProperty.all(backgroundColor),
          );
  }
}
