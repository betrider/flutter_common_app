import 'package:flutter/material.dart';

class TestMethodClasses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build main');
    return Scaffold(
      appBar: AppBar(
        title: Text('method vs classes'),
        centerTitle: true,
      ),
      //body: ClassWidget(number: 5,),
      body: functionWidget(number: 5),
    );
  }
}

class ClassWidget extends StatelessWidget {
  const ClassWidget({Key? key, this.number}) : super(key: key);

  final int? number;

  @override
  Widget build(BuildContext context) {
    print('build class');
    List aa = [1, 2, 3];
    for (var i = 0; i < 5; i++) {
      print(aa[i]);
    }
    return Container(
      child: Text('classes : $number'),
    );
  }
}

Widget functionWidget({int? number}) {
  print('build method');
  List aa = [1, 2, 3];
    for (var i = 0; i < 5; i++) {
      print(aa[i]);
    }
  return Container(
    child: Text('method : $number'),
  );
}
