import 'package:flutter/material.dart';
import 'package:loginpage_to_bottombar_poup_tabbar_project/list.dart';
import 'package:loginpage_to_bottombar_poup_tabbar_project/tabbar_page.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _selectedTab = 0;

  final _pages = [
    const Center(
      child: Icon(
        Icons.home,
        size: 100,
      ),
    ),
    const Center(
      child: Icon(
        Icons.settings,
        size: 100,
      ),
    ),
    const Center(
      child: Icon(
        Icons.person,
        size: 100,
      ),
    ),
    const Center(
      child: Icon(
        Icons.call_outlined,
        size: 100,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Bar',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.deepPurpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications_outlined),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'call'),
        ],
        onTap: (index) {
          setState(
            () {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListDemoPage()),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListDemoPage()),
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListDemoPage()),
                );
              } else if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListDemoPage()),
                );
              }

              _selectedTab = index;
            },
          );
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 20,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, color: Colors.black),
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TabBarPage(),
                ));
          }),
    );
  }
}
