// We could write this code in main.dart but that will become lenthery so we create a separate file for a seperate file.

import 'package:flutter/material.dart';
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
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Text(
            "Choose a Topic",
            style: TextStyle(
              fontSize: 36,
              color: Color(0xff78CCDE),
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
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 36),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xff78CCDE),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(255, 10, 10, 10))),
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
                  "Introduction",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 36),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xff78CCDE),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(255, 10, 10, 10))),
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
                  "Introduction",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 36),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xff78CCDE),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(255, 10, 10, 10))),
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
                  "Introduction",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 36),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xff78CCDE),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(255, 10, 10, 10))),
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
                  "Introduction",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 36),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xff78CCDE),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(255, 10, 10, 10))),
            ),
          ),
        ],
      ),
    );
  }
}
