import 'package:flutter_common_app/index.dart';

class TestMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Device Information:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              ),
              Text(
                "Orientation : " + MediaQuery.of(context).orientation.toString(),
              ),
              Text(
                "Size(w,h) : " + MediaQuery.of(context).size.toString(),
              ),
              Text(
                "Pixel Ratio : " +
                    MediaQuery.of(context).devicePixelRatio.toString(),
              ),
              Text(
                "Platform Brightness : " +
                    MediaQuery.of(context).platformBrightness.toString(),
              ),
              Text(
                "Device padding : " + MediaQuery.of(context).padding.toString(),
              ),
              Text(
                "Navigation Mode : " +
                    MediaQuery.of(context).navigationMode.toString(),
              ),
              Text(
                "Navigation Mode : " +
                    MediaQuery.of(context).navigationMode.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}