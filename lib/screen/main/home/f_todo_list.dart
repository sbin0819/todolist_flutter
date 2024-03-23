import 'package:flutter/material.dart';
import 'package:todolist/features/todo_model.dart';
import 'package:velocity_x/velocity_x.dart';

class TodoListFragment extends StatelessWidget {
  final List<Todo> todos;

  const TodoListFragment({
    super.key,
    required this.todos,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for (final todo in todos)
              ListTile(
                title: todo.content.text.make(),
                subtitle: todo.dueDate.toString().text.make(),
              ),
          ],
        ),
      ),
    );
  }
}
