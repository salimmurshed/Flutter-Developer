import 'package:flutter/material.dart' hide BottomNavigationBar;

import 'home.dart';
import 'navbar.dart' as b;

/// This is the stateful widget that the main application instantiates.
class bottomNav extends StatefulWidget {
  @override
  _bottomNavState createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text('text'),
    Home(),
    Home(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: b.BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(null),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purpleAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
