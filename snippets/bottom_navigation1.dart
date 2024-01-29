import 'package:flutter/material.dart';

class BottomNavigation1 extends StatefulWidget {
  const BottomNavigation1({super.key});

  @override
  State<BottomNavigation1> createState() => _BottomNavigation1State();
}

class _BottomNavigation1State extends State<BottomNavigation1> {
  int current_index = 0;
  // final List<Widget> pages = [Home(), SearchPage(), SettingsPage()];

  void OnTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  final List<Widget> _pages = [
    Center(child: Text('HomePage')),
    Center(child: Text('FavoritePage')),
    Center(child: Text('SettingsPage')),
    Center(child: Text('AccountsPage')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[current_index],
        bottomNavigationBar: BottomNavigationBar(
            onTap: OnTapped,
            currentIndex: current_index,
            type: BottomNavigationBarType.fixed,
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Accounts'),
        ]));
  }
}
