import 'package:flutter_common_app/index.dart';

class DUImageContainer2 extends StatefulWidget {
  DUImageContainer2.single({
    String? initImagePath,
    required void Function(String? filePath) onChanged,
  })  : _stateWidget = _Single(initImagePath,onChanged),
        this.imageMaxCount = 1;

  DUImageContainer2.multiple({
    List<String> initImagePath = const [],
    required void Function(List<String> filePath) onChanged,
    this.imageMaxCount = 5,
  }) : _stateWidget = _Multiple(initImagePath,onChanged);

  /// 이미지 개수
  final int imageMaxCount;

  /// 코멘트
  final String comment =
      '권장 크기 : 1000 X 1000\n장당 2M, Jpg, jpeg, png 형식의 이미지만 등록 가능합니다.\n미입력시에는 기본 이미지로 나타납니다.';

  /// common widget
  final State<DUImageContainer2> _stateWidget;

  @override
  State<DUImageContainer2> createState() => _stateWidget;
}

class _Single extends State<DUImageContainer2> {
  _Single(this.initImagePath, this.onChanged);

  final String? initImagePath;
  final void Function(String? filePath) onChanged;

  String? _imagePath;

  @override
  void initState() {
    super.initState();
    _imagePath = initImagePath;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              if (_imagePath != null) ...[
                getImageWidget(
                  _imagePath,
                  boxfit: BoxFit.fill,
                  width: 240,
                  height: 240,
                ),
              ] else ...[
                SizedBox(),
              ],
              Positioned(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _imagePath = null;
                    });
                    return onChanged(_imagePath);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(118, 116, 116, 1),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Color(0xFF000000).withOpacity(0.5),
                        )),
                    child: getIconWidget(AppIcons.svgDeleteGrey, size: 16),
                  ),
                ),
                top: 10,
                right: 10,
              ),
            ],
          ),
          SizedBox(height: 8),
          CustomIconButton(
            buttonSize: 60,
            icon: AppIcons.svgCameraBlue,
            onPressed: () async {
              String imagePath =
                  await getImagePath(imageSource: ImageSource.gallery);
              setState(() {
                _imagePath = imagePath;
              });
              return onChanged(_imagePath);
            },
            isDecoration: true,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.comment,
            style: AppTextStyle.grey_12_w400,
          ),
        ],
      ),
    );
  }
}

class _Multiple extends State<DUImageContainer2> {
  _Multiple(this.initImagePath, this.onChanged);

  final List<String> initImagePath;
  final void Function(List<String> filePath) onChanged;

  List<String> _imagePathList = [];

  @override
  void initState() {
    super.initState();
    _imagePathList.addAll(initImagePath);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if(_imagePathList.isNotEmpty)
            SizedBox(
              height: 240,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _imagePathList.length,
                itemBuilder: (context, index) {
                  if (index > widget.imageMaxCount - 1) return Container();
                  return Stack(
                    children: [
                      getImageWidget(
                        _imagePathList[index],
                        boxfit: BoxFit.fill,
                        width: 240,
                        height: 240,
                      ),
                      Positioned(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _imagePathList.removeAt(index);
                            });
                            return onChanged(_imagePathList);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(118, 116, 116, 1),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Color(0xFF000000).withOpacity(0.5),
                                )),
                            child:
                                getIconWidget(AppIcons.svgDeleteGrey, size: 16),
                          ),
                        ),
                        top: 10,
                        right: 10,
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 8,
                  );
                },
              ),
            ),
          SizedBox(height: 8),
          CustomIconButton(
            buttonSize: 60,
            icon: AppIcons.svgCameraBlue,
            title: (_imagePathList.length > widget.imageMaxCount - 1
                        ? widget.imageMaxCount
                        : _imagePathList.length.toString())
                    .toString() +
                '/' +
                widget.imageMaxCount.toString(),
            onPressed: () async {
              PickedFile? pickedFile = await ImagePicker().getImage(
                source: ImageSource.gallery,
                maxHeight: 240,
                maxWidth: 240,
                imageQuality: 100,
              );
              setState(() {
                _imagePathList.add(pickedFile!.path);
              });
              return onChanged(_imagePathList);
            },
            isDecoration: true,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.comment,
            style: AppTextStyle.grey_12_w400,
          ),
        ],
      ),
    );
  }
}
