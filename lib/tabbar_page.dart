import 'dart:async';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:loginpage_to_bottombar_poup_tabbar_project/list.dart';


class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

 @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tab Bar',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.flight,
                  ),
                  text: 'Flight',
                ),
                Tab(
                  icon: Icon(Icons.bathroom_outlined),
                  text: 'Bathing',
                ),
                Tab(
                  icon: Icon(
                    Icons.campaign_rounded,
                  ),
                  text: 'Voice',
                ),
              ],
              indicatorColor: Colors.black,
              dividerColor: Colors.brown,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.amber,
              onTap: _handleTabTap, // Handle tab clicks
            ),
            Expanded(
              child: TabBarView(children: [
                Icon(
                  Icons.flight_rounded,
                  size: 100,
                ),
                Icon(
                  Icons.bathroom_outlined,
                  size: 100,
                ),
                Icon(
                  Icons.campaign_rounded,
                  size: 100,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

void _handleTabTap(int index) {
  // You can handle tab clicks here
  print("Tab $index clicked");
  // Add your custom logic based on the index
  switch (index) {
    case 0:
      // Handle tab 0 click
            Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (context) =>
                          ListDemoPage()), // Replace NewPage() with the actual page you want to navigate to
                );
      break;
    case 1:
      // Handle tab 1 click
        Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (context) =>
                          ListDemoPage()), // Replace NewPage() with the actual page you want to navigate to
                );
      break;
    case 2:
      // Handle tab 2 click
      break;
  }
}
