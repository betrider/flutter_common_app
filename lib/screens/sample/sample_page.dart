import 'package:flutter_common_app/utilities/index.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontFamily: 'NotoSans')
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontWeight: FontWeight.w700)
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontFamily: 'NotoSans', fontWeight: FontWeight.w700)
            ),
            Text(
              'You have pushed the button this many times:',
              style: MyStyle.kSubtitleTextStyle
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => TodoList(),
                    ));
              },
              child: Text('todo test'),
            ),
            ElevatedButton(
              onPressed: () {
                print('theme');
                context.read<ThemeProvider>().toggleTheme();
              },
              child: Text('theme'),
            ),
            ElevatedButton(
              onPressed: () {
                print('admob');
              },
              child: Text('admob'),
            )
          ],
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
