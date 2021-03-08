import 'package:flutter_common_app/utilities/index.dart';

class TodoModel {
  String? title;
  bool isDone;

  TodoModel({this.title, this.isDone = false});

  factory TodoModel.fromMap(Map map) {
    return TodoModel(
      title: map['title'],
      isDone: map['id'],
    );
  }

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      title: json['title'],
      isDone: json['id'],
    );
  }

  factory TodoModel.fromFireStore(DocumentSnapshot doc) {
    Map map = doc.data()!;
    return TodoModel(
      title: map['title'],
      isDone: map['isDone'],
    );
  }
}