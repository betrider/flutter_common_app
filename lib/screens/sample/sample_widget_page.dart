import 'package:flutter_common_app/index.dart';

class SampleWidgetPage extends StatefulWidget {
  const SampleWidgetPage({Key? key}) : super(key: key);

  @override
  _SampleWidgetPageState createState() => _SampleWidgetPageState();
}

class _SampleWidgetPageState extends State<SampleWidgetPage> {
  late Widget _widget;

  late List<WidgetModel> listWidget;

  @override
  void initState() {
    super.initState();
    listWidget = [
      WidgetModel(title: '타이틀', widget: Text('33')),
      WidgetModel(title: '타이틀', widget: Text('44')),
      WidgetModel(title: '타이틀', widget: Text('55')),
      WidgetModel(title: '타이틀', widget: Text('66')),
      WidgetModel(title: '타이틀', widget: Text('77')),
      WidgetModel(title: '타이틀', widget: Text('88')),
      WidgetModel(title: '타이틀', widget: Text('99')),
    ];
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
          Expanded(child: _widget)
        ],
      ),
    );
  }
}
