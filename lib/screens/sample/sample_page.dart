import 'package:flutter_common_app/index.dart';

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('샘플 페이지'),
        centerTitle: true,
      ),
      body: CustomTabBar(
        tabList: [
          TabBarModel(
            tabName: 'Widget',
            tabWidget: SampleWidgetPage(
              key: GlobalKey(),
            ),
          ),
          TabBarModel(
            tabName: 'Utility',
            tabWidget: SampleUtilityPage(
              key: GlobalKey(),
            ),
          ),
          TabBarModel(
            tabName: 'Test Page',
            tabWidget: SampleTestPage(
              key: GlobalKey(),
            ),
          ),
        ],
        showLine: true,
        // initialIndex: 0,
      ),
    );
  }
}
