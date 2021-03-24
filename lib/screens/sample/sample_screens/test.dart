import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  buildExpanded(),
                  buildFlexible(),
                ],
              ),
              Row(
                children: <Widget>[
                  buildExpanded(),
                  buildExpanded(),
                ],
              ),
              Row(
                children: <Widget>[
                  buildFlexible(),
                  buildFlexible(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildExpanded() {
  return Expanded(
      child: Container(
      color: Colors.blue,
      child: Text('Expanded'),
    ),
  );
}

Widget buildFlexible() {
  return Flexible(
      child: Container(
      color: Colors.red,
      child: Text('Flexible'),
    ),
  );
}
