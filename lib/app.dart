import 'package:flutter_common_app/utilities/index.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: context.watch<ThemeProvider>().currentTheme,
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
            ],
          ),
        ),
      ),
    );
  }
}
