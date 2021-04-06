import 'package:flutter_common_app/index.dart';

class TestExpandedCSV extends StatefulWidget {
  @override
  _TestExpandedCSVState createState() => _TestExpandedCSVState();
}

class _TestExpandedCSVState extends State<TestExpandedCSV> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: AppBar(
          title: Text('CustomScrollView'),
          centerTitle: true,
        ),
        body: Container(
            child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  const Text('Header'),
                  Expanded(child: Container(color: Colors.red)),
                  const Text('Footer'),
                ],
              ),
            ),
          ],
        )));
  }
}
