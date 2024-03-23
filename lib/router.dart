import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/screen/main/s_main.dart';
import 'package:todolist/screen/write/s_write.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: MainScreen.routeName,
      path: MainScreen.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const MainScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          name: WriteScreen.routeName,
          path: WriteScreen.routePath,
          builder: (BuildContext context, GoRouterState state) {
            return const WriteScreen();
          },
        ),
      ],
    ),
  ],
);
