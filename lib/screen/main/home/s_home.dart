import 'package:flutter/material.dart';
import 'package:todolist/screen/main/home/const_data.dart';
import 'package:todolist/screen/main/home/f_todo_list.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        'Todo List'.text.xl4.makeCentered(),
        20.heightBox,
        TodoListFragment(todos: todos),
      ],
    );
  }
}
