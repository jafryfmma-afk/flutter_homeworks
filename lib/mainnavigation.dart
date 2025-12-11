import 'package:flutter/material.dart';
import 'homepage.dart';
import 'searchpage.dart';
import 'settingspage.dart';


class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    SettingsScreen(),

  ];

  String _pageTitle(int index) {
    switch (index) {
      case 0:
        return "الصفحة الرئيسية";
      case 1:
        return "صفحة البحث";
      case 2:
        return "صفحة الإعدادات";

      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitle(_currentIndex)),
        backgroundColor: Colors.indigo,
      ),

      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'البحث',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'الإعدادات',
          ),

        ],
      ),
    );
  }
}
