import 'package:flutter_common_app/utilities/index.dart';

class TestTodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Todo(),
    );
  }
}

class _Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<_Todo> {
  var _todoController = TextEditingController();

  String currentUserId = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _todoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text('남은 할 일'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _todoController,
                  ),
                ),
                ElevatedButton(
                  child: Text('추가'),
                  onPressed: () => context
                      .read<FirestoreDatabase>()
                      .addTodo(TodoModel(title: _todoController.text)),
                )
              ],
            ),
            StreamBuilder<QuerySnapshot>(
                stream: context.read<FirestoreDatabase>().getTodo,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }
                  final documents = snapshot.data!.docs;
                  return Expanded(
                    child: ListView(
                      children: documents
                          .map((doc) => _buildItemWidget(doc))
                          .toList(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  //할 일 객체를 ListTitle 형태로 변경하는 메서드
  Widget _buildItemWidget(DocumentSnapshot doc) {
    final todo = TodoModel.fromFireStore(doc);
    return ListTile(
      onTap: () => context.read<FirestoreDatabase>().toggleTodo(doc),
      title: Text(
        '${todo.title} ',
        style: todo.isDone
            ? TextStyle(
                decoration: TextDecoration.lineThrough,
                fontStyle: FontStyle.italic,
              )
            : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever_outlined),
        onPressed: () => context.read<FirestoreDatabase>().deleteTodo(doc),
      ),
    );
  }
}
