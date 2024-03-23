import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todolist/common/simple_result.dart';
import 'package:todolist/data/local/collection/todo_db_model.dart';
import 'package:todolist/features/todo_model.dart';
import 'package:todolist/features/todo_repository.dart';

class LocalDB implements TodoRepository<Exception> {
  static late final Isar _isar;

  LocalDB._();

  static LocalDB instance = LocalDB._();

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open([TodoDbModelSchema],
        maxSizeMiB: 512, directory: dir.path);
  }

  @override
  Future<SimpleResult<List<Todo>, Exception>> getTodoList() async {
    final todos = await _isar.todoDbModels.where().findAll();
    return SimpleResult.success(todos.map((e) => e.createTodo()).toList());
  }

  @override
  Future<SimpleResult<void, Exception>> addTodo(Todo todo) async {
    await _isar.writeTxn(() async {
      await _isar.todoDbModels.put(todo.dbModel);
    });
    return SimpleResult.success();
  }

  @override
  Future<SimpleResult<void, Exception>> updateTodo(Todo todo) async {
    await _isar.writeTxn(() async {
      await _isar.todoDbModels.put(todo.dbModel);
    });
    return SimpleResult.success();
  }

  @override
  Future<SimpleResult<void, Exception>> removeTodo(Id id) async {
    await _isar.writeTxn(() async {
      await _isar.todoDbModels.delete(id);
    });
    return SimpleResult.success();
  }
}
