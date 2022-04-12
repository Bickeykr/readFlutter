//=============material.dar
import 'package:flutter/material.dart';
//=============pages
import 'package:read_flutter/utiles/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class topicPage02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Color(0xff246EE9),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Introduction 1.2",
                  style: TextStyle(
                    color: Color(0xff78CCDE),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: GoogleFonts.jost().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(39, 0, 39, 0),
                  child: Text(
                    "The first version of Flutter was announced in the year 2015 at the Dart Developer Summit. Called codename Sky and can run on the Android OS. After the announcement of Flutter, the first Flutter Alpha version (v-0.06) was released in May 2017.\n\nLater, Google launched the second preview of Flutter in September 2018 that was the last big release before Flutter 1.0 version. On December 4, 2018, the first stable version of the Flutter framework was released at the Flutter Live event, denoting Flutter 1.0. The current stable release of the framework is Flutter v1.9.1+hotfix.6 on October 24, 2019.",
                    style: TextStyle(
                      fontFamily: GoogleFonts.jost().fontFamily,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(211, 0, 0, 0),
                  child: InkWell(
                    onTap: (() {
                      Navigator.pushNamed(context, MyRoutes.topicPage03);
                    }),
                    child: Ink(
                      width: 108,
                      height: 50,
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 24),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 174, 210),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromARGB(255, 10, 10, 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
