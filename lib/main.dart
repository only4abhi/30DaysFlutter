import 'package:codepur/pages/about_page.dart';
import 'package:codepur/pages/home_page.dart';
import 'package:codepur/pages/login_page.dart';
import 'package:codepur/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:codepur/utils/MyRouter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '30Days of Flutter',
      //home: HomePage(),
      /*
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      */
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRouter.homeRoute: (context) => HomePage(),
        MyRouter.aboutRoute: (context) => AboutPage(),
        MyRouter.loginPageRoute: (context) => LoginPage()
      },
    );
  }
}



