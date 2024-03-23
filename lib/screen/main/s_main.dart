import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/screen/main/home/s_home.dart';
import 'package:todolist/screen/main/settings/s_settings.dart';

class MainScreen extends StatefulWidget {
  static const String routePath = '/';
  static const String routeName = 'main';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _screens.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onWritePressed,
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: tr('home'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: tr('settings'),
          ),
        ],
      ),
    );
  }

  // bottom navigation bar 수정
  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  void _onWritePressed() {
    context.go('/write');
  }
}
