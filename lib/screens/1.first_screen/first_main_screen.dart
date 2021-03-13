import 'package:flutter_common_app/utilities/index.dart';

class FirstMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.i('FirstMainScreen');
    return Center(
      child: Container(
        child: Text('FirstMainScreen'),
      ),
    );
  }
}
