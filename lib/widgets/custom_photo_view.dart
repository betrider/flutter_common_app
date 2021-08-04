import 'package:flutter_common_app/index.dart';

class CustomPhotoView extends StatelessWidget {
  final String url;

  CustomPhotoView({required this.url});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Text(
          '이미지',
        ),
        centerTitle: true,
      ),
      body: Container(
        child: PhotoView(
          imageProvider: CachedNetworkImageProvider(url),
        ),
      ),
    );
  }
}
