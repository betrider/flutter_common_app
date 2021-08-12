import 'package:flutter_common_app/index.dart';

/// 사진 업로드 변경 후 이벤트(파일경로)
typedef OnChanged = void Function(String filePath)?;

class CustomProfileImage extends StatelessWidget {
  /// 프로필 이미지 원형 104사이즈
  CustomProfileImage.circle104({
    required String imagePath,
    required OnChanged onChanged,
    bool showCameraIcon = true,
    String? name,
  }) : _widget = _Circle104(
          imagePath: imagePath,
          onChanged: onChanged!,
          showCameraIcon: showCameraIcon,
          name: name,
        );

  /// 프로필 이미지 사각형 96사이즈
  CustomProfileImage.square96({
    required String imagePath,
    required OnChanged onChanged,
    BorderRadius borderRadius = BorderRadius.zero,
    bool showCameraIcon = true,
  }) : _widget = _Square96(
          imagePath: imagePath,
          onChanged: onChanged!,
          showCameraIcon: showCameraIcon,
          borderRadius: borderRadius,
        );

  /// common widget
  final Widget _widget;

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}

class _Circle104 extends StatelessWidget {
  const _Circle104({
    required this.imagePath,
    required this.onChanged,
    required this.showCameraIcon,
    required this.name,
  });

  final String imagePath;
  final void Function(String filePath) onChanged;
  final bool showCameraIcon;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 110,
          height: 110,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 104,
                height: 104,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: imagePath.isEmpty
                      ? SvgPicture.asset(AppIcons.svgDefaultPeopleBlue)
                      : getImageWidget(
                          imagePath,
                          boxfit: BoxFit.fill,
                        ),
                ),
              ),
              if (showCameraIcon)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () async {
                      String imagePath =
                          await getImagePath(imageSource: ImageSource.gallery);
                      return onChanged(imagePath);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: SvgPicture.asset(AppIcons.svgEditThumbnail),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        if (name != null) ...[
          SizedBox(
            height: 8,
          ),
          Text(
            name!,
            style: AppTextStyle.black_20_w400,
          ),
        ],
      ],
    );
  }
}

class _Square96 extends StatelessWidget {
  const _Square96({
    required this.imagePath,
    required this.onChanged,
    required this.showCameraIcon,
    required this.borderRadius,
  });

  final String imagePath;
  final void Function(String filePath) onChanged;
  final bool showCameraIcon;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    print('boderRadius : $borderRadius');
    return SizedBox(
      width: 122,
      height: 122,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 102,
            height: 102,
            child: ClipRRect(
              borderRadius: borderRadius,
              child: getImageWidget(
                imagePath,
                boxfit: BoxFit.fill,
              ),
            ),
          ),
          if (showCameraIcon)
            Positioned(
              right: 0,
              bottom: 0,
              child: InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () async {
                  print('test');
                  String imagePath =
                      await getImagePath(imageSource: ImageSource.gallery);
                  return onChanged(imagePath);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: SvgPicture.asset(AppIcons.svgEditThumbnail),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
