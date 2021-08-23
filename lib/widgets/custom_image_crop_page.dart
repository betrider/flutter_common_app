import 'dart:io';
import 'package:flutter_common_app/index.dart';
import 'package:image_crop/image_crop.dart';

class ImageCropPage extends StatefulWidget {
  ImageCropPage({this.file, this.aspectRatio});

  final File? file;
  final double? aspectRatio;

  @override
  _ImageCropPageState createState() => new _ImageCropPageState();
}

class _ImageCropPageState extends State<ImageCropPage> {
  final cropKey = GlobalKey<CropState>();
  File? _file;
  File? _lastCropped;

  String imagePath = '';

  @override
  void initState() {
    super.initState();
    _file = widget.file;
  }

  @override
  void dispose() {
    super.dispose();
    _file?.delete();
    _lastCropped?.delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: _buildCroppingImage(),
      ),
    );
  }

  Widget _buildCroppingImage() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Crop.file(
            _file!,
            key: cropKey,
            aspectRatio: widget.aspectRatio,
            alwaysShowGrid: true,
            onImageError: (exception, stackTrace) {
              return Get.back<String>(result: _file!.path);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          alignment: AlignmentDirectional.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextButton(
                child: Text(
                  '확인',
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: Colors.white),
                ),
                onPressed: () async{
                  await _cropImage();
                  Get.back<String>(result: _lastCropped!.path);
                } 
              ),
              TextButton(
                child: Text(
                  '취소',
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: Colors.white),
                ),
                onPressed: () {
                  Get.back<String>(result: '');
                },
              ),
            ],
          ),
        )
      ],
    );
  }

  Future<void> _cropImage() async {
    final scale = cropKey.currentState!.scale;
    final area = cropKey.currentState!.area;
    if (area == null) {
      // cannot crop, widget is not setup
      return;
    }

    // scale up to use maximum possible number of pixels
    // this will sample image in higher resolution to make cropped image larger
    final sample = await ImageCrop.sampleImage(
      file: _file!,
      preferredSize: (2000 / scale).round(),
    );

    final file = await ImageCrop.cropImage(
      file: sample,
      area: area,
    );

    sample.delete();

    _lastCropped?.delete();
    _lastCropped = file;
  }
}
