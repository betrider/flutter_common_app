import 'package:flutter_common_app/utilities/index.dart';

// ThemeData lightTheme = ThemeData.light();
// ThemeData darkTheme = ThemeData.dark();

MaterialColor mainColor = Utils.createMaterialColor(Color(0xFFC5E1A5));

ThemeData lightTheme = ThemeData(
  primarySwatch: mainColor, //메인색상
  accentColor: mainColor, //floating 버튼 색상

  //앱바 테마
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
  ),
  //텍스트 테마
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: Colors.black), //앱바 타이틀
  ),

  //기본 배경화면 테마
  canvasColor: Colors.white,

  //기본 바텀 테마
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white, //바텀 백그라운드 색상
    selectedItemColor: Colors.blue, //선택한 아이콘 색상
    unselectedItemColor: Colors.grey, //선택안한 아이콘 색상
  ),
);

ThemeData darkTheme = ThemeData(
  accentColor: mainColor, //floating 버튼 색상
  primaryColor: mainColor, //bottom app bar item 색상
  primarySwatch: mainColor, //기본 버튼 색상 or 전체

  //앱바 테마
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  //텍스트 테마
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: Colors.white), //앱바 타이틀
  ),

  //기본 배경화면 테마
  canvasColor: Colors.black,

  //기본 바텀 테마
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black, //바텀 백그라운드 색상
    selectedItemColor: Colors.blue, //선택한 아이콘 색상
    unselectedItemColor: Colors.grey, //선택안한 아이콘 색상
  ),
);
