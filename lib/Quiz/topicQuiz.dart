import 'package:flutter/material.dart';

//===================pubGet packages
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:page_transition/page_transition.dart';

//===================Google fonts
import 'package:google_fonts/google_fonts.dart';

//=============Pages
import 'package:read_flutter/utiles/routes.dart';

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

class topicQuiz extends StatefulWidget {
  @override
  State<topicQuiz> createState() => _topicQuizState();
}

class _topicQuizState extends State<topicQuiz> {
  List<String> questions = [
    'Flutter is developed by Google',
    'Flutter can only be used to build mobile apps.',
    'Flutter is closed-source.',
    'Flutter is managed by ECMA standard now.',
    'Flutter uses Swift programming language to build apps.',
    'Flutter was 1st introduced in 2015.',
    'Flutter uses WebView and OEM widgets.',
    'Google is also called Dart.',
    'Flutter doesn’t use JavaScript.',
    'Dart allows developers to read, change, replace or remove things easily.'
  ];
  List<bool> answers = [
    true,
    false,
    false,
    true,
    false,
    true,
    false,
    false,
    true,
    true
  ];

  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff246EE9),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 86,
                ),
                Center(
                    child: Text(
                  "Quiz",
                  style: TextStyle(
                    color: Color(0xff78CCDE),
                    fontSize: 70,
                    fontFamily: GoogleFonts.jost().fontFamily,
                  ),
                )),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        questions[questionNumber],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (() {
                    setState(() {
                      if (questionNumber < questions.length - 1) {
                        questionNumber++;
                      } else {
                        Alert(
                            style: alertStyle,
                            context: context,
                            title: ('Congrats + name + 🎉'),
                            desc:
                                'You have successfuly completeed the quiz. you scored 6/10.',
                            buttons: [
                              DialogButton(
                                height: 60,
                                width: 200,
                                child: Text(
                                  'Home',
                                  style: TextStyle(fontSize: 34),
                                ),
                                radius: BorderRadius.circular(17),
                                border: Border.all(
                                    color: Color.fromARGB(255, 10, 10, 10)),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, MyRoutes.HomeRoute);
                                },
                              )
                            ]).show();
                        questionNumber = 0;
                      }
                    });
                  }),
                  child: Ink(
                    width: 256,
                    height: 75,
                    child: Center(
                      child: Text(
                        "True",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 38),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff00EF60),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Color.fromARGB(255, 10, 10, 10))),
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                InkWell(
                  onTap: (() {
                    setState(() {
                      if (questionNumber < questions.length - 1) {
                        questionNumber++;
                      } else {
                        Alert(
                            style: alertStyle,
                            context: context,
                            title: ('Congrats Bickey 🎉'),
                            desc:
                                'You have successfuly completeed the quiz. you scored 6/10.',
                            buttons: [
                              DialogButton(
                                  height: 60,
                                  width: 200,
                                  child: Text(
                                    'Home',
                                    style: TextStyle(fontSize: 34),
                                  ),
                                  radius: BorderRadius.circular(17),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 10, 10, 10)),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.HomeRoute);
                                  })
                            ]).show();
                        questionNumber = 0;
                      }
                    });
                  }),
                  child: Ink(
                    width: 256,
                    height: 75,
                    child: Center(
                      child: Text(
                        "False",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 38),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffEA5252),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Color.fromARGB(255, 10, 10, 10))),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
