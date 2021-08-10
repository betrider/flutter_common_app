import 'package:flutter_common_app/index.dart';

class CustomTextContainer extends StatelessWidget {
  const CustomTextContainer({
    required this.hintColor,
    required this.text,
  });

  final Color hintColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hintColor,
      padding: EdgeInsets.all(8),
      child: Text(
        text,
        style: AppTextStyle.black_12_w400,
      ),
    );
  }
}