import 'package:flutter_common_app/utilities/index.dart';

class TestArgument extends StatelessWidget {
  final Object? args;

  TestArgument(this.args);

  //model argument
  @override
  Widget build(BuildContext context) {
    //model argument
    String todoString = args.toString();
    TodoModel todoModel = args as TodoModel;
    String todoJson = jsonEncode(args);
    Object todoObject = jsonDecode(todoJson);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Text('todoString:$todoString'),
          ),
          Container(
            child: Text('todoModel:$todoModel'),
          ),
          Container(
            child: Text('todoJson:$todoJson'),
          ),
          Container(
            child: Text('todoObject:$todoObject'),
          ),
        ],
      ),
    );
  }

  /* //map argument
  @override
  Widget build(BuildContext context) {
    //map argument
    Map<String, dynamic> todoMap = args as Map<String, dynamic>;
    TodoModel todoModel = TodoModel.fromMap(todoMap);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Text('todoMap:$todoMap'),
          ),
          Container(
            child: Text('todoModel:$todoModel'),
          ),
        ],
      ),
    );
  } */
}
