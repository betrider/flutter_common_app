import 'package:flutter_common_app/utilities/index.dart';

class SecondMainScreen extends StatefulWidget {
  @override
  _SecondMainScreenState createState() => _SecondMainScreenState();
}

class _SecondMainScreenState extends State<SecondMainScreen> with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 true
  
  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    logger.i('SecondMainScreen');
    return Center(
      child: Container(
        child: Text('SecondMainScreen'),
      ),
    );
  }
}