import 'package:flutter_common_app/index.dart';
import 'package:flutter_common_app/screens/sample/sample.dart';

class SamplePackagePage extends StatefulWidget {
  const SamplePackagePage({Key? key}) : super(key: key);

  @override
  _SamplePackagePageState createState() => _SamplePackagePageState();
}

class _SamplePackagePageState extends State<SamplePackagePage> {
  late String _title;
  late Widget _widget;

  late List<WidgetModel> listWidget;

  @override
  void initState() {
    super.initState();
    listWidget = [
      WidgetModel(title: 'Getx', widget: SampleGetX()),
      WidgetModel(title: 'Iamport', widget: SampleIamport()),
      WidgetModel(title: 'WorkManager', widget: SampleWorkManager()),
      WidgetModel(title: 'LocalNotification', widget: SampleLocalNotification()),
    ];
    _title = listWidget[0].title;
    _widget = listWidget[0].widget;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bodyPadding: EdgeInsets.symmetric(horizontal: 16),
      body: Column(
        children: <Widget>[
          Wrap(
            runSpacing: -10,
            spacing: 2,
            children: [
              ...listWidget
                  .mapWithIndex((widgetModel, index) => InkWell(
                        onTap: () {
                          setState(() {
                            _title = widgetModel.title;
                            _widget = widgetModel.widget;
                          });
                        },
                        child: Chip(
                          backgroundColor: Colors.amber[100],
                          label: Text(widgetModel.title),
                        ),
                      ).isEffectOff())
                  .toList()
            ],
          ),
          Divider(),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomTitle.size24(
              _title,
            ),
          ),
          SizedBox(height: 16,),
          Expanded(child: Container(child: _widget),)
        ],
      ),
    );
  }
}
