import 'package:flutter/material.dart';
import 'package:read_flutter/Pages/StartingPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:read_flutter/utiles/routes.dart';
import 'Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        //It adjust the color of button and other ements as per the given color
        fontFamily: GoogleFonts.jost().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => StartingPage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
      },
    );
  }
}
