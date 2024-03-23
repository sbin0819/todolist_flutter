import '../screen/main/home/todo_status.dart';

class Todo {
  int id;
  String content;
  DateTime createdTime;
  DateTime? modifyTime;
  DateTime dueDate;
  TodoStatus status;

  Todo({
    required this.id,
    required this.content,
    required this.dueDate,
    this.status = TodoStatus.incomplete,
    DateTime? modifyTime,
  }) : createdTime = DateTime.now();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'content': content,
      'createdTime': createdTime.millisecondsSinceEpoch,
      'modifyTime': modifyTime?.millisecondsSinceEpoch,
      'dueDate': dueDate.millisecondsSinceEpoch,
      'status': status.index,
    };
  }
}
