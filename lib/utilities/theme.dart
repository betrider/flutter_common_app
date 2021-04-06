import 'package:flutter_common_app/index.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: AppColor.primarySwatch, //메인 위젯(버튼,슬라이더,라이너로딩,Input 라인) 색상
  accentColor: AppColor.accentColor, //이펙트(스크롤,스위치,체크박스,로딩,라디오) 색상 + floatingActionButton 버튼

  //앱바 테마
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.barBackgroundColor, //앱바 백그라운드
    iconTheme: IconThemeData(color: AppColor.barForegroundColor), //앱바 아이콘
  ),
  //텍스트 테마
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: AppColor.barForegroundColor, fontWeight: FontWeight.bold), //앱바 타이틀
  ),

  //기본 바디 테마
  canvasColor: AppColor.bodyColor,

  //기본 바텀 테마
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColor.barBackgroundColor, //바텀 백그라운드 색상
    selectedItemColor: AppColor.barForegroundColor, //선택한 아이콘 색상
    unselectedItemColor: Colors.grey, //선택안한 아이콘 색상
  ),
);

ThemeData darkTheme = ThemeData.dark();
