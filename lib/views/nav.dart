import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'categories_view.dart';
import 'movies_view.dart';

class Nav extends StatefulWidget {
  static String id = "nav";
  @override
  State<Nav> createState() => Nav_State();
}

class Nav_State extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    MoviesView(),
    CategoriesView(),
  ];
  void _onItemTap(int index) {
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
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        unselectedFontSize: 14,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.tableCells, color: Colors.black),
            label: 'Category',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}
