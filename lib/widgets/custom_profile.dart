import 'package:flutter_common_app/index.dart';

void _initOnClosed(){}

class CustomProfile extends StatelessWidget {
  const CustomProfile({
    required this.title,
    required this.imagePath,
    this.isSelected = false,
    this.showCloseIcon = false,
    this.onClosed = _initOnClosed
  });

  /// 프로필 선택 여부
  final bool isSelected;

  /// 프로필 타이틀
  final String title;

  /// 프로필 이미지 경로
  final String imagePath;

  /// 삭제버튼 사용여부
  final bool showCloseIcon;

  /// 삭제버튼 클릭 이벤트
  final void Function() onClosed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 8,
              ),
              Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                        width: 2,
                        color: isSelected
                            ? AppColor.mainColor
                            : Colors.transparent),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: SizedBox(
                        width: 54,
                        height: 54,
                        child: getImageWidget(imagePath)),
                  )),
              SizedBox(
                height: 4,
              ),
              Text(
                title,
                style: AppTextStyle.black_12_w400,
              ),
            ],
          ),
        ),
        if(showCloseIcon)
          Positioned(
            child: InkWell(
              onTap: () {
                return onClosed();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(118, 116, 116, 1),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Color(0xFF000000).withOpacity(0.5),
                    )),
                child: getIconWidget(Icons.delete, size: 16),
              ),
            ),
            top: 17,
            right: 10,
        ),
      ],
    );
  }
}
