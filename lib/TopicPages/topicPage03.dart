//=============material.dar
import 'package:flutter/material.dart';
//=============pages
import 'package:read_flutter/utiles/routes.dart';
import 'package:google_fonts/google_fonts.dart';

//============packages
import 'package:rflutter_alert/rflutter_alert.dart';

class topicPage03 extends StatelessWidget {
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
                  "Introduction 1.3",
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
                    "What makes flutter unique?\n\n"
                    "Flutter is different from other frameworks because it neither uses WebView nor the OEM widgets that shipped with the device. Instead, it uses its own high-performance rendering engine to draw widgets. It also implements most of its systems such as animation, gesture, and widgets in Dart programing language that allows developers to read, change, replace, or remove things easily. It gives excellent control to the developers over the system.",
                    style: TextStyle(
                      fontFamily: GoogleFonts.jost().fontFamily,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 140,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(211, 0, 0, 0),
                  child: InkWell(
                    onTap: (() {
                      Alert(
                          style: AlertStyle(isOverlayTapDismiss: false),
                          context: context,
                          title: ('Topic completed'),
                          desc:
                              'Start Quiz to check your comprehension of the topic',
                          buttons: [
                            DialogButton(
                                child: Text('Start Quiz'),
                                onPressed: () => Navigator.pop(context))
                          ]).show();
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
