import 'package:flutter_common_app/utilities/index.dart';

class FourthMainScreen extends StatefulWidget {
  @override
  _FourthMainScreenState createState() => _FourthMainScreenState();
}

class _FourthMainScreenState extends State<FourthMainScreen>  with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 true

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    logger.i('FourthMainScreen');
    return Center(
      child: Container(
        child: Text('FourthMainScreen'),
      ),
    );
  }
}