

import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../home_screen/home-screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text("Search"),
    Text("Watch list")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: primaryText,
        selectedItemColor: tintColor,
        backgroundColor: secondaryBackground,
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() { _selectedIndex = index; });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Watch list',
          )
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
