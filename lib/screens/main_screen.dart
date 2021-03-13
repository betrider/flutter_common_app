import 'package:flutter_common_app/utilities/index.dart';

DateTime? _firstTouchTime; //뒤로가기 버튼 첫번째 누른 시간
DateTime? _secondTouchTime; //뒤로가기 버튼 두번째 누른 시간
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.i('MainScreen build');
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: MainAppBar(),
        body: SafeArea(child: MainBody()),
        bottomNavigationBar: MainBottomNavigationBar(),
      ),
    );
  }
}

Future<bool> _onBackPressed() async{
  if(_firstTouchTime == null){
    Fluttertoast.showToast(msg: AppString.APP_CLOSE_MESSAGE1);
    _firstTouchTime = DateTime.now();
  }else{
    _secondTouchTime = DateTime.now();
    if(_secondTouchTime!.difference(_firstTouchTime!).inSeconds <= 2){
      SystemNavigator.pop();
    }else{
      Fluttertoast.showToast(msg: AppString.APP_CLOSE_MESSAGE1);
      _firstTouchTime = DateTime.now();
    }
  }
  return false;
}

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: InkWell(
        onTap: () {
          if (kDebugMode) {
            Navigator.pushNamed(context, '/sample');
          } else {
            context.read<BottomNavigationBarProvider>().currentIndex = 0;
          }
        },
        child: Text('메인타이틀'),
      ),
      centerTitle: true,
    );
  }
}

var currentTab = [
  FirstMainScreen(),
  SecondMainScreen(),
  ThirdMainScreen(),
  FourthMainScreen(),
  FifthMainScreen(),
];

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.i('build MainBody');
    return currentTab[context.watch<BottomNavigationBarProvider>().currentIndex];
  }
}

class MainBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.i('build MainBottom');
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: context.watch<BottomNavigationBarProvider>().currentIndex,
      backgroundColor: Colors.white,
      onTap: (index) {
        context.read<BottomNavigationBarProvider>().currentIndex = index;
      },
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          label: '1',
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          label: '2',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '3',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarms_sharp),
          label: '4',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplanemode_inactive),
          label: '5',
        ),
      ],
    );
  }
}
