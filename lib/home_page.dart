import 'package:flutter/material.dart';
import 'package:paradigmshift/Constants/constants.dart';
import 'package:paradigmshift/AR Tab/ar_screen.dart';
import 'package:paradigmshift/History Tab/history_screen.dart';


class HomePage extends StatefulWidget {
  static const routeName = "/bottom-navigation";
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HistoryScreen(),
        'title': 'History',
      },
      {
        'page': ARScreen(),
        'title': 'Meet with Kalpana',
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        unselectedItemColor: Colors.black,
        selectedItemColor: kblueMain,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("History"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text("AR Camera"),
          ),
        ],
      ),
    );
  }
}
