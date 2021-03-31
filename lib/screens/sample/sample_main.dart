import 'package:flutter_common_app/screens/sample/sample_screens/test_LayoutBuilder.dart';
import 'package:flutter_common_app/screens/sample/sample_screens/test_MediaQuery.dart';
import 'package:flutter_common_app/screens/sample/sample_screens/test_expanded_custom_scroll_view.dart';
import 'package:flutter_common_app/screens/sample/sample_screens/test_expanded_single_child_scroll_view.dart';
import 'package:flutter_common_app/screens/sample/sample_screens/test_hero.dart';
import 'package:flutter_common_app/screens/sample/sample_screens/test_hive.dart';
import 'package:flutter_common_app/screens/sample/sample_screens/test_notifications.dart';
import 'package:flutter_common_app/screens/sample/sample_screens/test.dart';
import 'package:flutter_common_app/screens/sample/sample_screens/test_overflow.dart';
import 'package:flutter_common_app/screens/sample/sample_screens/test_showdialog.dart';
import 'package:flutter_common_app/utilities/index.dart';

import 'sample_screens/test_todo_list.dart';

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text('Sample Page'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text('You have pushed the button this many times:',
                  style: TextStyle(fontFamily: 'NotoSans')),
              Text('You have pushed the button this many times:',
                  style: TextStyle(fontWeight: FontWeight.w700)),
              Text('You have pushed the button this many times:',
                  style: TextStyle(
                      fontFamily: 'NotoSans', fontWeight: FontWeight.w700)),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              ElevatedButton(
                child: Text('test'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Test(),
                      ));
                },
              ),
              ElevatedButton(
                child: Text('todo'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestTodoList(),
                      ));
                },
              ),
              ElevatedButton(
                child: Text('theme'),
                onPressed: () {
                  print('theme');
                  context.read<ThemeProvider>().toggleTheme();
                },
              ),
              ElevatedButton(
                child: Text('hive'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestHive(),
                      ));
                },
              ),
              ElevatedButton(
                child: Text('local_notification'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestNotifications(),
                      ));
                },
              ),
              ElevatedButton(
                child: Text('mediaquery'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestMediaQuery(),
                      ));
                },
              ),
              ElevatedButton(
                child: Text('layoutbuilder'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestLayoutBuilder(),
                      ));
                },
              ),
              ElevatedButton(
                child: Text('singlechildscrollview'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => TestExpandedSCSV()));
                },
              ),
              ElevatedButton(
                child: Text('customscrollview'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestExpandedCSV(),
                      ));
                },
              ),
              ElevatedButton(
                child: Text('testToast'),
                onPressed: () {
                  displayToast(
                    message: 'testToast',
                    fontSize: 16,
                    textColor: Colors.white,
                    backgroundColor: Colors.red,
                  );
                },
              ),
              ElevatedButton(
                child: Text('testSnackBar'),
                onPressed: () {
                  customSnackBar(
                    context: context,
                    content: 'testSnackBar',
                  );
                },
              ),
              ElevatedButton(
                child: Text('showDialog'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestShowDialog(),
                      ));
                },
              ),
              ElevatedButton(
                child: Text('showDatePicker'),
                onPressed: () async {
                  String selectedDate = await customDatePicker(context);
                  print(selectedDate);
                },
              ),
              ElevatedButton(
                child: Text('showTimePicker'),
                onPressed: () async {
                  String selectedTime = await customTimePicker(context);
                  print(selectedTime);
                },
              ),
              ElevatedButton(
                child: Text('testOverflow'),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestOverflow(),
                      ));
                },
              ),
              ElevatedButton(
                child: Text('testHero'),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestHero(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
