// import 'package:du_mobile/utils/cache/extended_image_cache_provider.dart';
// import 'package:extended_image/extended_image.dart';
// import 'package:flutter/material.dart';

// class DUNetworkImage extends StatelessWidget {
  
//   const DUNetworkImage(
//     this.url, {
//     Key? key,
//     this.width,
//     this.height,
//     this.fit,
//     this.mode = ExtendedImageMode.none,
//     this.initGestureConfigHandler,
//     this.constraints,
//     this.loadStateChanged = _defaultLoadStateChanged,
//     this.borderRadius,
//     this.failedImage,
//     this.extendedImageGestureKey,
//   }) : super(key: key);

//   final String url;
//   final LoadStateChanged loadStateChanged;
//   final double? width;
//   final double? height;
//   final BoxFit? fit;
//   final ExtendedImageMode mode;
//   final InitGestureConfigHandler? initGestureConfigHandler;
//   final BoxConstraints? constraints;
//   final BorderRadius? borderRadius;
//   final Image? failedImage;
//   final Key? extendedImageGestureKey;

//   @override
//   Widget build(BuildContext context) {
//     return ExtendedImage(
//       image: ExtendedResizeImage.resizeIfNeeded(
//         provider: DUNetworkImageProvider(
//           url.replaceAll("https", "http"),
//           cache: true,
//         ),
//       ),
//       loadStateChanged: loadStateChanged,
//       width: width,
//       height: height,
//       fit: fit,
//       mode: mode,
//       initGestureConfigHandler: initGestureConfigHandler,
//       constraints: constraints,
//       shape: BoxShape.rectangle,
//       borderRadius: borderRadius,
//       clearMemoryCacheWhenDispose: true,
//     );
//   }
// }

// Widget? _defaultLoadStateChanged(ExtendedImageState state) {
//   switch (state.extendedImageLoadState) {
//     case LoadState.loading:
//       return Center(
//         child: SizedBox(
//           width: 24,
//           height: 24,
//           child: CircularProgressIndicator(),
//         ),
//       );
//     case LoadState.completed:
//       return null;
//     case LoadState.failed:
//       return Icon(Icons.error);
//   }
// }
