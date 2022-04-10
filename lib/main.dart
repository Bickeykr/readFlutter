import 'package:flutter/material.dart';
import 'package:read_flutter/Pages/StartingPage.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/": (context) => HomePage(),
        "/StartingPage": (context) => StartingPage(),
      },
    );
  }
}
