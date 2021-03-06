import 'package:codepur/pages/home_page.dart';
import 'package:codepur/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme:
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => LoginPage(),
        "/login" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
      },
    );
  }
}



