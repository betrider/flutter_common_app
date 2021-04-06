import 'package:flutter_common_app/index.dart';

class FourthMainScreen extends StatefulWidget {
  @override
  _FourthMainScreenState createState() => _FourthMainScreenState();
}

class _FourthMainScreenState extends State<FourthMainScreen>
    with AutomaticKeepAliveClientMixin {
  int number = 0;

  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 여부

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('FourthMainScreen');
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('FourthMainScreen:$number'),
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
