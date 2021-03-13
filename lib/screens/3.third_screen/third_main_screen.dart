import 'package:flutter_common_app/utilities/index.dart';

class ThirdMainScreen extends StatefulWidget {
  @override
  _ThirdMainScreenState createState() => _ThirdMainScreenState();
}

class _ThirdMainScreenState extends State<ThirdMainScreen> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 true
  
  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    logger.i('ThirdMainScreen');
    return Center(
      child: Container(
        child: Text('ThirdMainScreen'),
      ),
    );
  }
}