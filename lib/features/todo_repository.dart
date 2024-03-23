import 'package:todolist/common/simple_result.dart';
import 'package:todolist/features/todo_model.dart';

abstract interface class TodoRepository<Error> {
  Future<SimpleResult<List<Todo>, Error>> getTodoList();
  Future<SimpleResult<void, Error>> addTodo(Todo todo);
  Future<SimpleResult<void, Error>> updateTodo(Todo todo);
  Future<SimpleResult<void, Error>> removeTodo(int id);
}
