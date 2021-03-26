import 'package:flutter_common_app/utilities/index.dart';

class FifthMainScreen extends StatefulWidget {
  @override
  _FifthMainScreenState createState() => _FifthMainScreenState();
}

class _FifthMainScreenState extends State<FifthMainScreen>
    with AutomaticKeepAliveClientMixin {
  int number = 0;

  @override
  bool get wantKeepAlive => false; //화면 최초 호출 후 데이터 보존 여부

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('FifthMainScreen');
    return Container(
      color: Colors.purple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('FifthMainScreen:$number'),
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
