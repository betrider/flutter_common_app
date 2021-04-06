import 'package:flutter_common_app/index.dart';

class TodoModel extends Equatable {
  final String? title;
  final bool isDone;

  TodoModel({this.title, this.isDone = false});

  @override
  List<Object> get props => [title!, isDone];

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isDone': isDone,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      title: map['title'],
      isDone: map['isDone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoModel.fromJson(String source) => TodoModel.fromMap(json.decode(source));

  factory TodoModel.fromFireStore(DocumentSnapshot doc) {
    Map map = doc.data()!;
    return TodoModel(
      title: map['title'],
      isDone: map['isDone'],
    );
  }
}
