//=============material.dar
import 'package:flutter/material.dart';
import 'package:read_flutter/TopicPages/topicPage02.dart';
//=============pages
import 'package:read_flutter/utiles/routes.dart';
import 'package:google_fonts/google_fonts.dart';
//============Packages
import 'package:page_transition/page_transition.dart';

class topicPage01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  "Introduction 1.1",
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
                    "Flutter is a UI toolkit for creating fast, beautiful, natively compiled applications for mobile, web, and desktop with one programing language and single codebase. It is free and open-source. It was initially developed from Google and now manages by an ECMA standard. Flutter apps use Dart programming language for creating an app. The dart programming shares several same features as other programming languages, such as Kotlin and Swift, and can be trans-compiled into JavaScript code.\n\nWe can also use it to build full-featured apps, including camera, storage, geolocation, network, third-party SDKs, and more.",
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
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: topicPage02()));
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
