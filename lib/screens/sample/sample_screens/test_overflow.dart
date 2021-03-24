import 'package:flutter/material.dart';

class TestOverflow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 200,
            color: Colors.grey,
            child: Wrap(
              children: [
                myContainer(Colors.green),
                myContainer(Colors.red),
                myContainer(Colors.blue),
                myContainer(Colors.green),
                myContainer(Colors.red),
                myContainer(Colors.blue),
                myContainer(Colors.green),
                myContainer(Colors.red),
                myContainer(Colors.blue),
              ],
            ),
            /* child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                myContainer(Colors.green),
                myContainer(Colors.red),
                myContainer(Colors.blue),
                myContainer(Colors.green),
                myContainer(Colors.red),
                myContainer(Colors.blue),
                myContainer(Colors.green),
                myContainer(Colors.red),
                myContainer(Colors.blue),
              ],
            ),
          ), */
            /* child: SingleChildScrollView(
            child: Column(
              children: [
                myContainer(Colors.green),
                myContainer(Colors.red),
                myContainer(Colors.blue),
                myContainer(Colors.green),
                myContainer(Colors.red),
                myContainer(Colors.blue),
                myContainer(Colors.green),
                myContainer(Colors.red),
                myContainer(Colors.blue),
              ],
            ),
          ), */
            ),
      ),
    );
  }
}

Widget myContainer(Color color) {
  return Container(
    width: 100,
    height: 100,
    color: color,
  );
}
