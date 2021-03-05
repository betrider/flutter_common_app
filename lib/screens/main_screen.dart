import 'package:flutter_common_app/utilities/index.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('메인타이틀'),
        ),
        body: Container(
          child: Text('body'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                label: '1',
                icon: Icon(Icons.home_outlined),
              ),
              BottomNavigationBarItem(
                label: '2',
                icon: Icon(Icons.developer_board_outlined),
              ),
              BottomNavigationBarItem(
                label: '3',
                icon: Icon(Icons.access_alarms),
              ),
              BottomNavigationBarItem(
                label: '4',
                icon: Icon(Icons.accessibility_sharp),
                ),
              BottomNavigationBarItem(
                label: '5',
                icon: Icon(Icons.add_alert),
                ),
            ],
          ),
      ),
    );
  }
}
