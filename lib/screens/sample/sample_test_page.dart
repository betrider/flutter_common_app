import 'package:flutter_common_app/index.dart';

class SampleTestPage extends StatelessWidget {
  const SampleTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(16),
          child: ElevatedButton(
            child: Text('11'),
            onPressed: () {
            },
          )),
    );
  }
}

class Parent {
  void createdAt() {}
}

// class A extends Parent {
//   @override
//   void createdAt() {
//     // TODO: implement createdAt
//     super.createdAt();
//   }
// }

// class B extends Parent {
//   @override
//   void createdAt() {
//     // TODO: implement createdAt
//     super.createdAt();
//   }
// }

// void main() {
//   List<A> aList = [];
//   List<B> bList = [];

//   List<Parent> childs = [...aList, ...bList];
// }