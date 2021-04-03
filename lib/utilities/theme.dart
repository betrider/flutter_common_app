import 'package:flutter_common_app/utilities/index.dart';

// ThemeData lightTheme = ThemeData.light();
// ThemeData darkTheme = ThemeData.dark();

MaterialColor mainColor = Utils.createMaterialColor(Color(0xFFC5E1A5));
//MaterialColor mainColor = Utils.createMaterialColor(Color.fromRGBO(250, 246, 243, 1));
MaterialColor barBackgroundColor = Utils.createMaterialColor(Color.fromRGBO(249, 248, 235, 1));
MaterialColor barForegroundColor = Utils.createMaterialColor(Color.fromRGBO(113, 101, 103, 1));
MaterialColor bodyColor = Utils.createMaterialColor(Color.fromRGBO(248, 248, 235, 1));

ThemeData lightTheme = ThemeData(
  primarySwatch: mainColor, //메인 위젯(버튼,슬라이더,라이너로딩,Input 라인) 색상
  accentColor: mainColor, //이펙트(스크롤,스위치,체크박스,로딩,라디오) 색상 + floatingActionButton 버튼

  //앱바 테마
  appBarTheme: AppBarTheme(
    backgroundColor: barBackgroundColor, //앱바 백그라운드
    iconTheme: IconThemeData(color: barForegroundColor), //앱바 아이콘
  ),
  //텍스트 테마
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: barForegroundColor, fontWeight: FontWeight.bold), //앱바 타이틀
  ),

  //기본 바디 테마
  canvasColor: bodyColor,

  //기본 바텀 테마
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: barBackgroundColor, //바텀 백그라운드 색상
    selectedItemColor: barForegroundColor, //선택한 아이콘 색상
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
