import 'package:isar/isar.dart';
import 'package:todolist/features/todo_model.dart';
import 'package:todolist/screen/main/home/todo_status.dart';

part 'todo_db_model.g.dart';

@collection
class TodoDbModel {
  Id id;

  @Index(type: IndexType.value)
  final DateTime? createdTime;

  @Index(type: IndexType.value)
  DateTime? modifyTime;

  @Index(type: IndexType.value)
  String content;

  DateTime dueDate;

  @enumerated
  TodoStatus status;

  TodoDbModel(
    this.id,
    this.createdTime,
    this.modifyTime,
    this.content,
    this.dueDate,
    this.status,
  );

  Todo createTodo() {
    return Todo(
      id: id,
      createdTime: createdTime!,
      content: content,
      modifyTime: modifyTime,
      dueDate: dueDate,
      status: status,
    );
  }
}
