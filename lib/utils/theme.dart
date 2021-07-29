import 'package:flutter_common_app/index.dart';
import 'package:flutter/material.dart';

MaterialColor _mainColor = createMaterialColor(AppColor.purple_7540EE); //Color(0xFF7540EE)

ThemeData lightTheme = ThemeData(
  primarySwatch: _mainColor, //메인색상
  accentColor: _mainColor, //floating 버튼 색상

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
    selectedItemColor: _mainColor, //선택한 아이콘 색상
    unselectedItemColor: Colors.grey, //선택안한 아이콘 색상
  ),

  //ElevatedButton 테마
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled))
            return AppColor.grey_EDEDED; //Color(0xFFEDEDED)
          else
            return _mainColor;
        },
      ),
    ),
  ),

  //OutlinedButtonThemeData 테마
  outlinedButtonTheme: OutlinedButtonThemeData(style: ButtonStyle(
    // side: MaterialStateProperty.all(BorderSide(color: _mainColor)),
    side: MaterialStateProperty.resolveWith<BorderSide>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled))
          return BorderSide(color: AppColor.grey_EFEFEF); //Color(0xFFEFEFEF)
        else
          return BorderSide(color: _mainColor);
      },
    ),
  )),
  
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return _mainColor;
      }else if (states.contains(MaterialState.disabled)) {
        return Colors.white;
      }
    }),
  ),

  // dialogTheme: DialogTheme(
  //   titleTextStyle: TextStyle.black_2D2D2D_20_w400,
  //   contentTextStyle: DUTextStyle.black_2D2D2D_14,
  // ),

  // snackBarTheme: SnackBarThemeData(actionTextColor: Colors.purple[200]),

  // scrollbarTheme: ScrollbarThemeData(
  //   thumbColor: MaterialStateProperty.all(_mainColor),
  // )

  // iconTheme: IconThemeData(
  //   color: Colors.black,
  //   size: 24
  // ),

  // popupMenuTheme: PopupMenuThemeData(color: Colors.white),

  // textTheme: TextTheme(
  //   headline1: TextStyle(fontSize: 20.0, color: Colors.black),
  //   headline2: TextStyle(fontSize: 20.0, color: Colors.black),
  //   headline3: TextStyle(fontSize: 20.0, color: Colors.black),
  //   headline4: TextStyle(fontSize: 20.0, color: Colors.black),
  //   headline5: TextStyle(fontSize: 20.0, color: Colors.black),
  //   bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
  //   bodyText2: TextStyle(fontSize: 14.0, color: Colors.black),
  //   button: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w600),
  //   headline6: TextStyle(fontSize: 16.0, color: Colors.black),
  //   subtitle1: TextStyle(fontSize: 16.0, color: Colors.black),
  //   subtitle2: TextStyle(fontSize: 16.0, color: Colors.black),
  //   caption: TextStyle(
  //     fontSize: 12.0,
  //     color: Colors.grey,
  //   ),
  // ),

  // buttonTheme: ButtonThemeData(
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(8),
  //   ),
  //   buttonColor: Colors.blue,
  //   textTheme: ButtonTextTheme.primary,
  // ),

  // inputDecorationTheme: InputDecorationTheme(
  //   //prefixStyle: TextStyle(color: _lightIconColor),
  //   border: OutlineInputBorder(
  //       borderSide: BorderSide(width: 1.0),
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(8.0),
  //       )),
  //   enabledBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: Colors.grey, width: 1.0),
  //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //   ),
  //   focusedBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: Colors.grey),
  //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //   ),
  //   errorBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: Colors.grey),
  //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //   ),
  //   focusedErrorBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: Colors.grey),
  //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //   ),
  //   fillColor: Colors.grey,
  //   //focusColor: _lightBorderActiveColor,
  // ),

);

ThemeData darkTheme = ThemeData.dark();

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
