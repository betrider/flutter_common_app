import 'package:flutter_common_app/index.dart';
import 'package:flutter_common_app/widgets/custom_stepper.dart';

class SampleTestPage extends StatelessWidget {
  const SampleTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomStepper(
      listStepModel: [
        StepModel(
            title: '첫번째',
            content: Center(
              child: Text('첫번째'),
            )),
            StepModel(
            title: '두번째F',
            content: Center(
              child: Text('두번째F'),
            )),
        StepModel(
            title: '세번째',
            content: Center(
              child: Text('세번째'),
            )),
        StepModel(
            title: '네번째',
            content: Center(
              child: Text('네번째'),
            )),
        StepModel(
            title: '다섯번째',
            content: Center(
              child: Text('다섯번째'),
            )),
      ],
      onComplete: () {},
    ));
  }
}