//===========Material.dart
import 'package:flutter/material.dart';
//===========Pub get pakeges
import 'package:google_fonts/google_fonts.dart';
//===========Pages
import 'package:read_flutter/utiles/routes.dart';
import 'Pages/HomePage.dart';
import 'package:read_flutter/Pages/StartingPage.dart';
//==========TopicPages
import 'TopicPages/topicPage01.dart';
import 'package:read_flutter/TopicPages/topicPage02.dart';
import 'package:read_flutter/TopicPages/topicPage03.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //================ThemeMode==========================//
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        //It adjust the color of button and other ements as per the given color
        fontFamily: GoogleFonts.jost().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //==========================routes==================//
      routes: {
        "/": (context) => StartingPage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.topicPage01: (context) => topicPage01(),
        MyRoutes.topicPage02: (context) => topicPage02(),
        MyRoutes.topicPage03: (context) => topicPage03(),
      },
    );
  }
}
