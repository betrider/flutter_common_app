import 'package:flutter_common_app/utilities/index.dart';

class FirstMainScreen extends StatefulWidget{
  @override
  _FirstMainScreenState createState() => _FirstMainScreenState();
}

class _FirstMainScreenState extends State<FirstMainScreen> with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 true

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    logger.i('FirstMainScreen');
    return Center(
      child: Container(
        child: Text('FirstMainScreen'),
      ),
    );
  }
}
