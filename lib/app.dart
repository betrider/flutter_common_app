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
              // ElevatedButton(
              //   child: Text('55'),
              //   onPressed: () => customShowDialogYN(
              //     context: context,
              //     contentText: '11',
              //     leftButtonText: '123',
              //     leftButtonFunction: () { print('123'); },
              //     rightButtonText: '234',
              //     rightButtonFunction: () { print('234');},
              //     ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}