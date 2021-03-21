import 'package:flutter_common_app/utilities/index.dart';

class TestHive extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TestHive> {
  String localData = Hive.box('cache').get('pizza_key') ?? 'Data Not Found';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text('Hive'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Hive.box('cache').put('pizza_key', 'potato_pizza');
                setState(() {});
              },
              child: Text('로컬에 데이터 저장'),
            ),
            Container(
              child: Text('localData:$localData'),
            )
          ],
        ),
      ),
    );
  }
}

/*
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Hive.openBox('userInfo');
  await Hive.openBox('setting');
  runApp(MyApp());
}*/
