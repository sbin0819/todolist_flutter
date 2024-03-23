import 'package:get/get.dart';
import 'package:todolist/data/local/local_db.dart';
import 'package:todolist/features/todo_model.dart';
import 'package:todolist/features/todo_repository.dart';

class TodoData extends GetxController {
  final RxList<Todo> todoList = <Todo>[].obs;
  final TodoRepository todoRepository = LocalDB.instance;

  @override
  void onInit() async {
    final getTodoResult = await todoRepository.getTodoList();
    getTodoResult.runIfSuccess((data) {
      todoList.addAll(data);
    });

    super.onInit();
  }

  int get newId {
    return DateTime.now().millisecondsSinceEpoch;
  }

  void addTodo(String content) async {
    final newTodo = Todo(
      id: newId,
      createdTime: DateTime.now(),
      content: content,
      dueDate: DateTime.now(),
    );

    final addTodoResult = await todoRepository.addTodo(newTodo);
    addTodoResult.runIfSuccess((_) {
      todoList.add(newTodo);
    });
  }

  void updateTodo(Todo todo) {
    todoRepository.updateTodo(todo);
    notify(todo);
  }

  void notify(Todo todo) {
    final index = todoList.indexOf(todo);
    todoList[index] = todo;
  }

  void removeTodo(Todo todo) {
    todoList.remove(todo);
    todoRepository.removeTodo(todo.id);
  }
}

mixin class TodoDataProvider {
  late final TodoData todoData = Get.find();
}
