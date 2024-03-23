import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todolist/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('ko'),
      path: 'assets/translations',
      child: const App(),
    ),
  );
}
