import 'package:flutter_common_app/utilities/index.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    required this.photoUrl,
    required this.radius,
    this.borderColor,
    this.borderWidth,
  });

  final String photoUrl;
  final double radius;
  final Color? borderColor;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _borderDecoration(),
      child: _circleAvatar(),
    );
  }

  Decoration _borderDecoration() {
      return BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor!,
          width: borderWidth!,
        ),
      );
    }

  CircleAvatar _circleAvatar() {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.black12,
      backgroundImage: NetworkImage(photoUrl),
      child: Icon(Icons.camera_alt, size: radius),
    );
  }
}
