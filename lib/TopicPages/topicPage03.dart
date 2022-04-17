//=============material.dar
import 'package:flutter/material.dart';
//=============pages
import 'package:read_flutter/utiles/routes.dart';
import 'package:google_fonts/google_fonts.dart';

//============packages
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:page_transition/page_transition.dart';

var alertStyle = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(
    fontFamily: GoogleFonts.jost().fontFamily,
    fontSize: 28,
  ),
  descTextAlign: TextAlign.center,
  animationDuration: Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
    side: BorderSide(
      color: Color.fromARGB(255, 0, 0, 0),
    ),
  ),
  titleStyle: TextStyle(
    color: Color.fromARGB(255, 247, 38, 23),
    fontSize: 32,
  ),
  alertAlignment: Alignment.center,
);

class topicPage03 extends StatelessWidget {
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
                          style: alertStyle,
                          context: context,
                          title: ('Topic completed'),
                          desc:
                              'Start Quiz to check your comprehension of the topic.\n1 ✅ ans = 1 point',
                          buttons: [
                            DialogButton(
                                height: 60,
                                width: 200,
                                child: Text(
                                  'Start Quiz',
                                  style: TextStyle(fontSize: 34),
                                ),
                                radius: BorderRadius.circular(17),
                                border: Border.all(
                                    color: Color.fromARGB(255, 10, 10, 10)),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, MyRoutes.topicQuiz);
                                })
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
