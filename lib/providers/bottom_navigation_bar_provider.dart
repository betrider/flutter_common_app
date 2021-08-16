import 'package:flutter_common_app/index.dart';

class BottomNavigationBarProvider2 extends GetxController {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    print('currentIndex : $index');
    _currentIndex = index;
    update();
  }
}
