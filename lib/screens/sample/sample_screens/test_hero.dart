import 'package:flutter_common_app/index.dart';

class TestHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
        centerTitle: true,
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => TestDetailHero(),
            ),
          );
        },
        child: Hero(
          tag: 'image',
          child: Image.asset(
            'assets/images/drawer_background.jpg',
            width: 100,
            height: 100,
          ),
        ),
      )),
    );
  }
}

class TestDetailHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              width: double.infinity,
              height: 100,
            ),
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: 100,
            ),
            Hero(
              tag: 'image',
              child: Image.asset('assets/images/drawer_background.jpg'),
            ),
            Container(
              color: Colors.brown,
              width: double.infinity,
              height: 100,
            ),
            Container(
              color: Colors.amber,
              width: double.infinity,
              height: 100,
            ),
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              width: double.infinity,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
