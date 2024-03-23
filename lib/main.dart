import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todolist/app.dart';
import 'package:todolist/data/preference/app_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('ko'),
      path: 'assets/translations',
      child: const App(),
    ),
  );
}
