import 'package:flutter_common_app/utilities/index.dart';

class TestExpandedSCSV extends StatefulWidget {
  @override
  _TestExpandedSCSVState createState() => _TestExpandedSCSVState();
}

class _TestExpandedSCSVState extends State<TestExpandedSCSV> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: AppBar(
          title: Text('SingleChildScrollView'),
          centerTitle: true,
        ),
        body: Container(
          child: LayoutBuilder(
            builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: <Widget>[
                        Text("Header"),
                        Expanded(
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                        Text("Footer"),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
