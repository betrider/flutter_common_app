import 'package:flutter_common_app/utilities/index.dart';

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

class FirestoreDatabase {
  // FirestoreDatabase._();
  // static final instance = FirestoreDatabase._();

  final _service = FirebaseFirestore.instance;

  //할 일 검색
  Stream<QuerySnapshot> get getTodo => _service.collection(FirestorePath.todo()).snapshots();

  //할 일 추가 메서드
  void addTodo(TodoModel todo){
    FirebaseFirestore.instance.collection(FirestorePath.todo()).add({
      'title': todo.title,
      'isDone': todo.isDone,
      'authorUid': 'currentUserId'
    });
  }

  //할 일 삭제 메서드
  void deleteTodo(DocumentSnapshot doc){
    FirebaseFirestore.instance.collection(FirestorePath.todo()).doc(doc.id).delete();
  }

  //할 일 완료/미완료 메서드
  void toggleTodo(DocumentSnapshot doc){
    FirebaseFirestore.instance.collection(FirestorePath.todo()).doc(doc.id).update({
      'isDone': !doc['isDone'],
    });
  }
}
