import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todolist/data/local/collection/todo_db_model.dart';

import '../screen/main/home/todo_status.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@unfreezed
class Todo with _$Todo {
  Todo._();

  factory Todo({
    required final int id,
    required final DateTime createdTime,
    required String content,
    DateTime? modifyTime,
    required DateTime dueDate,
    @Default(TodoStatus.unknown) TodoStatus status,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  TodoDbModel get dbModel =>
      TodoDbModel(id, createdTime, modifyTime, content, dueDate, status);
}
