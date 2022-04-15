// We could write this code in main.dart but that will become lenthery so we create a separate file for a seperate file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//===========Pages
import 'package:read_flutter/utiles/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        //It adjust the color of button and other ements as per the given color
        fontFamily: GoogleFonts.jost().fontFamily,
      ),
      home: Scaffold(
        backgroundColor: Color(0xff246EE9),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 140,
              ),
              Text(
                "Choose a Topic",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff78CCDE),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, MyRoutes.topicPage01);
                }),
                child: Ink(
                  width: 304,
                  height: 74,
                  child: Center(
                    child: Text(
                      "Introduction",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 36),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff78CCDE),
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: Color.fromARGB(255, 10, 10, 10))),
                ),
              ),
              SizedBox(
                height: 37,
              ),
              InkWell(
                onTap: (() {}),
                child: Ink(
                  width: 304,
                  height: 74,
                  child: Center(
                    child: Text(
                      "Why Flutter",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 36),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff78CCDE),
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: Color.fromARGB(255, 10, 10, 10))),
                ),
              ),
              SizedBox(
                height: 37,
              ),
              InkWell(
                onTap: (() {}),
                child: Ink(
                  width: 304,
                  height: 74,
                  child: Center(
                    child: Text(
                      " Features",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 36),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff78CCDE),
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: Color.fromARGB(255, 10, 10, 10))),
                ),
              ),
              SizedBox(
                height: 37,
              ),
              InkWell(
                onTap: (() {}),
                child: Ink(
                  width: 304,
                  height: 74,
                  child: Center(
                    child: Text(
                      "Widgets",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 36),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff78CCDE),
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: Color.fromARGB(255, 10, 10, 10))),
                ),
              ),
              SizedBox(
                height: 37,
              ),
              InkWell(
                onTap: (() {}),
                child: Ink(
                  width: 304,
                  height: 74,
                  child: Center(
                    child: Text(
                      "Widget Tree",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 36),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff78CCDE),
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: Color.fromARGB(255, 10, 10, 10))),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Inspired by Flutter 5 days bootcamp.",
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: GoogleFonts.averiaLibre().fontFamily,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
