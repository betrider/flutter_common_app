import 'package:flutter_common_app/utilities/index.dart';

class TestLayoutBuilder extends StatelessWidget {
  const TestLayoutBuilder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final orientation=mediaQuery.orientation;
    final size=mediaQuery.size;

    return Scaffold(
        appBar: AppBar(
          title: Text('LayoutBuilder'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
              children: [
                Text('Orientation: $orientation'),
                Text('Size: $size'),
                Container(
                  color:Colors.black26,
                  width:250,
                  height:300,
                  child:LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      final localWidgetSize=Size(constraints.maxWidth, constraints.maxHeight);
                      return Center(
                          child: Text('this is container: $localWidgetSize')
                      );
                    },
                  ),
                )
              ],
            )
        )
    );
  }
}