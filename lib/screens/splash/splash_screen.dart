import 'package:flutter_common_app/index.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    print('splash');
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/main');
    });
    return CustomScaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Image(
            image: AssetImage('assets/images/splash_image.png'),
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
