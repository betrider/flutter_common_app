import 'package:flutter_common_app/index.dart';

/// 이미지 모양
enum ImageShape {
  ///사각형
  SQUARE,

  ///원형
  CIRCLE,
}

class CustomListTile extends StatelessWidget {
  CustomListTile({
    Key? key,
    required this.imagePath,
    this.imageShape = ImageShape.SQUARE,
    this.horizontalTitleGap = 8,
    required this.title,
    this.subTitle,
    required this.onTap,
    this.isEffect = true,
    this.padding = const EdgeInsets.all(8),
    this.trailing,
  }) : super(key: key);

  /// 이미지 경로
  final String imagePath;

  /// 이미지모양(사각형,원형)
  final ImageShape imageShape;

  /// 이미지 - 타이틀 간 간격
  final double horizontalTitleGap;

  /// 타이틀
  final Widget title;

  /// 서브 타이틀
  final String? subTitle;

  /// 클릭이벤트
  final VoidCallback onTap;

  /// 클릭 이펙트 여부
  final bool isEffect;

  /// 패딩
  final EdgeInsetsGeometry padding;

  /// 후열 위젯
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: isEffect ? null : Colors.transparent,
      highlightColor: isEffect ? null : Colors.transparent,
      splashColor: isEffect ? null : Colors.transparent,
      child: Padding(
        padding: padding,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: imageShape == ImageShape.CIRCLE
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(0),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: getImageWidget(imagePath),
                ),
              ),
              SizedBox(
                width: horizontalTitleGap,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title,
                    if (subTitle.isNullOrEmpty) ...[
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        subTitle ?? '',
                        style: AppTextStyle.grey_12_w400,
                      ),
                    ]
                  ],
                ),
              ),
              if (trailing != null) trailing!
            ],
          ),
        ),
      ),
    );
  }
}
