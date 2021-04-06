import 'package:flutter_common_app/index.dart';

class ThirdMainScreen extends StatefulWidget {
  @override
  _ThirdMainScreenState createState() => _ThirdMainScreenState();
}

class _ThirdMainScreenState extends State<ThirdMainScreen>
    with AutomaticKeepAliveClientMixin {
  int number = 0;

  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 여부

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('ThirdMainScreen');
    return Container(
      color: Colors.green,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('ThirdMainScreen:$number'),
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
