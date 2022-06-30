import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Codepur";
  var myName = "Abhishek";
  final pi = 3.14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CodePur'),
      ),
      body: Center(
        child: Container(
          child: Center(
              child: Text('My name is $myName. \nWelcome to $days days of Flutter.\nWelcome to '+name+'.')
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
