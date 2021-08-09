import 'package:flutter_common_app/index.dart';

class DUImageSlider extends StatefulWidget {
  /// 이미지 슬라이더
  const DUImageSlider({
    required this.imageList,
    this.height = 200,
  });

  /// 이미지 리스트
  final List<String> imageList;

  /// 이미지 슬라이더 높이
  final double height;

  @override
  _DUImageSliderState createState() => _DUImageSliderState();
}

class _DUImageSliderState extends State<DUImageSlider> {

  int page = 0;
  late PageController controller;
  final int indicatorSize = 200;
  
  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          height: widget.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: widget.height,
                color: Colors.grey,
                child: PageView(
                  children: widget.imageList
                      .map((imagePath) =>
                          duGetImageWidget(imagePath, boxfit: BoxFit.fill))
                      .toList(),
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      page = value;
                    });
                  },
                ),
              ),
              Positioned(
                top: widget.height - 40,
                left: (constraints.maxWidth - indicatorSize) / 2 ,
                child: CarouselIndicator(
                  count: widget.imageList.length,
                  index: page,
                  width: indicatorSize / widget.imageList.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
