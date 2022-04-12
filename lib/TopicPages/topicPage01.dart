//=============material.dar
import 'package:flutter/material.dart';
//=============pages
import 'package:read_flutter/utiles/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class topicPage01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff246EE9),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 92,
                ),
                Text(
                  "Introduction",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(39, 0, 39, 0),
                  child: Text(
                    "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web , and desktop from a single codebase. Coming from another platform? Docs: iOS , Android , Web , React Native , Xamarin .",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
