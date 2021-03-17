import 'package:flutter_common_app/utilities/index.dart';

class CustomPhotoView extends StatelessWidget {
  final String url;

  CustomPhotoView({required this.url});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(
          '상세보기',
        ),
        centerTitle: true,
      ),
      body: Container(
          child: PhotoView(imageProvider: CachedNetworkImageProvider(url))),
    );
  }
}
