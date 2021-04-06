import 'package:flutter_common_app/index.dart';

class SecondMainScreen extends StatefulWidget {
  @override
  _SecondMainScreenState createState() => _SecondMainScreenState();
}

class _SecondMainScreenState extends State<SecondMainScreen>
    with AutomaticKeepAliveClientMixin {
  int number = 0;

  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 여부

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('SecondMainScreen');
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('SecondMainScreen:$number'),
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
