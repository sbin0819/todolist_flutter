import 'package:todolist/common/simple_result.dart';
import 'package:todolist/features/todo_model.dart';
import 'package:todolist/features/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository<Exception> {
  @override
  Future<SimpleResult<List<Todo>, Exception>> getTodoList() {
    return Future.value(SimpleResult.success([]));
  }

  @override
  Future<SimpleResult<void, Exception>> addTodo(Todo todo) {
    return Future.value(SimpleResult.success(null));
  }

  @override
  Future<SimpleResult<void, Exception>> updateTodo(Todo todo) {
    return Future.value(SimpleResult.success(null));
  }

  @override
  Future<SimpleResult<void, Exception>> removeTodo(int id) {
    return Future.value(SimpleResult.success(null));
  }
}
