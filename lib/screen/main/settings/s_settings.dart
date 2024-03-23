import 'package:flutter/material.dart';
import 'package:todolist/features/todo_data.dart';
import 'package:velocity_x/velocity_x.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> with TodoDataProvider {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            'Settings Screen'.text.xl4.make(),
            ElevatedButton(
                onPressed: () {
                  todoData.addTodo('New Todo');
                },
                child: "Add".text.make())
          ],
        ),
      ],
    );
  }
}
