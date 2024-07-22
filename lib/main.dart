import 'dart:html';

import 'package:flutter/material.dart';
import 'package:loginpage_to_bottombar_poup_tabbar_project/bottom_nevigetion_bar.dart';
import 'package:loginpage_to_bottombar_poup_tabbar_project/list.dart';
import 'package:loginpage_to_bottombar_poup_tabbar_project/poups.dart';

void main() => runApp(MaterialApp(
      title: 'Book Bus.com',
      debugShowCheckedModeBanner: false,
      home: homepage(),
    ));

class homepage extends StatelessWidget {
  homepage({super.key});

  TextEditingController emailcontroller = TextEditingController();
  // final mycontroller=TextEditingController();
  bool myemail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'login profile',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Color.fromARGB(255, 1, 140, 255),
        leading: IconButton(
          onPressed: () {
            showMenu(
                context: context,
                position: RelativeRect.fromLTRB(0, 45, 10, 10),
                items: [
                  const PopupMenuItem(
                      child: Row(
                    children: <Widget>[
                      Icon(Icons.menu_book_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text('brosher')
                    ],
                  )),
                  const PopupMenuItem(
                      child: Row(
                    children: <Widget>[
                      Icon(Icons.table_bar_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Table')
                    ],
                  )),
                  PopupMenuItem(
                    child: const Row(
                      children: <Widget>[
                        Icon(Icons.free_cancellation_sharp),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Bill')
                      ],
                    ),
                    onTap: () {},
                  )
                ]);
          },
          icon: Icon(Icons.menu),
          color: Colors.white,
          tooltip: 'menu',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home_outlined),
            color: Colors.white,
            tooltip: 'home Page',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.white,
            tooltip: 'Setting',
          ),
        ],
      ),

      //------------------------------------------------------image----------------------------------//
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 81, 169, 241),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  right: 100,
                  left: 100,
                ),
                child: Center(
                  child: Container(
                    child: Image.asset(
                      'asset/login.jpg',
                    ),
                  ),
                ),
              ),
              //-----------------------------------------------------email---------------------------------------//
              Padding(
                padding: EdgeInsets.only(right: 250, left: 250, top: 10),
                child: TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: "abc@gmail.com",
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ),
              //-------------------------------------------------password---------------------------------------//
              Padding(
                padding: EdgeInsets.only(right: 250, left: 250, top: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Your Password",
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ),
              //--------------------------------------------------------forget text----------------------//
              Container(
                margin: const EdgeInsets.fromLTRB(180, 0, 0, 0),
                child: const Text(
                  'Forget Password!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //----------------------------------------------------------------elevatedbutton----------------------//
              ElevatedButton(
                  onPressed: () {
                    String email = emailcontroller.text;
                    if (isEmail(email)) {
                      print('email is velid');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              bottombar(title: emailcontroller.text),
                        ),
                      );
                    } else {
                      print('email is not velid');
                    }
                  },
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

bool isEmail(String em) {
  String p = r'^[a-zA-Z0-9._%+-]+@gmail.com$';

  RegExp regExp = new RegExp(p);

  return regExp.hasMatch(em);
}
