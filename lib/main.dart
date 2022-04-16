//===========Material.dart
import 'dart:math';

import 'package:flutter/material.dart';
//===========Pub get pakeges
import 'package:google_fonts/google_fonts.dart';
 import 'package:page_transition/page_transition.dart';
 //===========Pages
import 'package:read_flutter/utiles/routes.dart';
import 'Pages/HomePage.dart';

import 'package:read_flutter/Pages/StartingPage.dart';
//==========TopicPages
import 'TopicPages/topicPage01.dart';
import 'package:read_flutter/TopicPages/topicPage02.dart';
import 'package:read_flutter/TopicPages/topicPage03.dart';
import 'package:read_flutter/Quiz/topicQuiz.dart';

void main() {
  runApp(MyApp());
}

//============= MaterialColor to get generateMaterialColor Coder start from here
MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

class Palette {
  static const Color primary = Color(0xFF67E4C6);
}

//============= MaterialColor to get generateMaterialColor Coder Ends from here
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //================ThemeMode==========================//
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: generateMaterialColor(Palette.primary),

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
        MyRoutes.topicQuiz: (context) => topicQuiz(),
      },
    );
  }
}
