import 'package:flutter_common_app/utilities/index.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      // theme: context.watch<ThemeProvider>().currentTheme,
      //home: SplashScreen(),
      home: Test(),
    );
  }
}

void test() {
  print('1112');
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('테스트 페이지'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('44'),
                onPressed: () => customShowDialogOK(context: context),
              ),
              ElevatedButton(
                child: Text('55'),
                onPressed: () => customShowDialogYN(
                    context: context, yesButtonFunction: test),
              ),
              ElevatedButton(
                child: Text('66'),
                onPressed: () {
                  customSnackBar(context: context, content: '성공했습니다.');
                },
              ),
              ElevatedButton(
                child: Text('77'),
                onPressed: () {
                  customActionSnackBar(
                      context: context,
                      content: 'content',
                      actionLabel: 'actionLabel',
                      action: () {
                        print('action');
                      });
                },
              ),
              ElevatedButton(
                child: Text('88'),
                onPressed: () {
                  //Fluttertoast.showToast(msg: "삭제되었습니다.",backgroundColor: Colors.red);
                  Fluttertoast.showToast(
                      msg: "개발 중 상태입니다.111",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.red,
                      textColor: Colors.red,
                      fontSize: 16.0);
                },
              ),
              ElevatedButton(
                child: Text('99'),
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
