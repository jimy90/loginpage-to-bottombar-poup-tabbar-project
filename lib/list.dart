import 'package:flutter/material.dart';
import 'package:loginpage_to_bottombar_poup_tabbar_project/poups.dart';

class ListDemoPage extends StatefulWidget {
  const ListDemoPage({super.key});

  @override
  State<ListDemoPage> createState() => _ListDemoPageState();
}

class _ListDemoPageState extends State<ListDemoPage> {
  var name = [
    'jay',
    'jigar',
    'jasmin',
    'kalo',
    'rahu',
    'nanu',
    'rakesh',
    'jigo',
  ];
  void _onItemPressed(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _onItemPressed(index) {}
                ;
              },
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(name[index]),
                subtitle: Text('call time now'),
                trailing: Icon(
                  Icons.call,
                ),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => poupsDemo()),
                //   );
                // },
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(height: 30, thickness: 2);
          },
          itemCount: name.length),
      floatingActionButton: FloatingActionButton(
          child:  Icon(Icons.add, color: Colors.black),
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => poupsDemo()),
              ),
            );
          }),
    );
  }
}
