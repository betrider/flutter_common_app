import 'package:flutter_common_app/utilities/index.dart';

class SecondMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.i('SecondMainScreen');
    return Center(
      child: Container(
        child: Text('SecondMainScreen'),
      ),
    );
  }
}