import 'package:flutter_common_app/index.dart';

class FirstMainScreen extends StatefulWidget {
  @override
  _FirstMainScreenState createState() => _FirstMainScreenState();
}

class _FirstMainScreenState extends State<FirstMainScreen>
    with AutomaticKeepAliveClientMixin {
  int number = 0;

  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 여부

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('FirstMainScreen');
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('FirstMainScreen:$number'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number += 1;
                });
              },
              child: Text('UP'),
            )
          ],
        ),
      ),
    );
  }
}
