import 'package:flutter_common_app/index.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/gifs/start_image.gif'),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: FractionalOffset(0.5, 0.10),
              child: Container(
                width: 300,
                height: 100,
                child: Image(
                  image: AssetImage('assets/logos/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset(0.5, 0.95),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  style: ButtonStyle(
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(
                        fontWeight: FontWeight.bold
                      )
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)
                      )
                    ),
                  ),
                  child: Text('시작하기'),
                  onPressed: () {
                    Hive.box('cache').put('isFirst', false);
                    //Navigator.pushReplacementNamed(context, '/main');
                    context.read<LoginProvider>().loginPass();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}