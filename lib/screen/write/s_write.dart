import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WriteScreen extends StatelessWidget {
  static const String routeName = 'write';
  static const String routePath = 'write';
  const WriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              context.go('/');
            },
            child: const Text('Go to Home Screen')),
      ),
    );
  }
}
