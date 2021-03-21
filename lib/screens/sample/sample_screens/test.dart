import 'package:flutter_common_app/utilities/index.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  child: Text('11'),
                  ),
                Container(
                  color: Colors.orange,
                  child: Text('11'),
                  ),
                Container(
                  color: Colors.grey,
                  child: Text('11'),
                  ),
                Container(
                  color: Colors.amberAccent,
                  child: Text('11'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
