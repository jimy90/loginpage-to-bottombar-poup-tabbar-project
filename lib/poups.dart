import 'package:flutter/material.dart';
import 'package:loginpage_to_bottombar_poup_tabbar_project/main.dart';
import 'package:loginpage_to_bottombar_poup_tabbar_project/tabbar_page.dart';

class poupsDemo extends StatefulWidget {
   poupsDemo({super.key});

  @override
  State<poupsDemo> createState() => _poupsDemoState();
}

class _poupsDemoState extends State<poupsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popup Bar',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext) {
                  return  AlertDialog(
                    title: Text('Alert Box'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Text('yor data turn on'),
                          Text('app is not proper redy to turn on data'),
                          
                        ],
                        
                      ),
                      
                    ),
                    
actions: [TextButton(onPressed: (){
  Navigator.push(
                 context,
                MaterialPageRoute(
                  builder: (context) =>
                  TabBarPage()), // Replace NewPage() with the actual page you want to navigate to
                );

}, child: Text('SUBMIT')),

TextButton(onPressed: (){
Navigator.push(
                 context,
                MaterialPageRoute(
                  builder: (context) =>
                  homepage()), // Replace NewPage() with the actual page you want to navigate to
                );
  
}, child: Text('CENCAL'))],
                  );
                }
                );
          },
          child: Text(
            'SUBMIT',
            style: TextStyle(color: Colors.black),
            selectionColor: Colors.amber,
          ),
        ),
      ),
    );
  }
}
