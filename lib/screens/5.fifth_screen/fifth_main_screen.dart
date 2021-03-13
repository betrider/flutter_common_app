import 'package:flutter_common_app/utilities/index.dart';

class FifthMainScreen extends StatefulWidget {
  @override
  _FifthMainScreenState createState() => _FifthMainScreenState();
}

class _FifthMainScreenState extends State<FifthMainScreen>  with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 true

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    logger.i('FifthMainScreen');
    return Center(
      child: Container(
        child: Text('FifthMainScreen'),
      ),
    );
  }
}