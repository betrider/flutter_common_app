
import 'package:flutter_common_app/index.dart';

class SampleTestPage extends StatelessWidget {
  const SampleTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: SampleIamport()
      ),
    );
  }
}