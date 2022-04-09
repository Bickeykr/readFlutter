import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Text('MyQuiz'),
          centerTitle: true,
          leading: Icon(Icons.quiz),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Quizpage(),
          ),
        ),
      ),
    );
  }
}

class Quizpage extends StatefulWidget {
  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  List<String> questions = [
    'Flutter was created by Google',
    'Flutter uses JavaScript to build Apps',
    'Flutter is a Database Software',
    'Google was originally named BackRub',
    'Dart is Dynamically Typed Language',
    'Flutter uses SKIA to render Animation & Graphics',
    'BMW ans Toyoko uses Flutter',
    'In Flutter, developers can use each & every pixels of the entire screen',
    'We cannot make Linux Applications using Flutter',
    'Flutter is Close Source'
  ];
  List<bool> answers = [
    true,
    false,
    false,
    true,
    false,
    true,
    true,
    true,
    false,
    false
  ];

  int questionNumber = 0;
  List<Icon> scores = [];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  questions[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 252, 246, 246), fontSize: 30),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    setState(() {
                      if (questionNumber < questions.length - 1) {
                        if (answers[questionNumber] == true) {
                          scores.add(Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ));
                        } else {
                          scores.add(Icon(
                            Icons.cancel,
                            color: Colors.red,
                          ));
                        }
                        questionNumber++;
                      } else {
                        Alert(
                            style: AlertStyle(isOverlayTapDismiss: false),
                            context: context,
                            title: 'Quiz Completed',
                            desc: 'You have finished your quiz',
                            buttons: [
                              DialogButton(
                                  child: Text('Restart'),
                                  onPressed: () => Navigator.pop(context))
                            ]).show();
                        questionNumber = 0;
                        scores = [];
                      }
                    });
                  },
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    setState(() {
                      if (questionNumber < questions.length - 1) {
                        if (answers[questionNumber] == false) {
                          scores.add(Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ));
                        } else {
                          scores.add(Icon(
                            Icons.cancel,
                            color: Colors.red,
                          ));
                        }
                        questionNumber++;
                      } else {
                        Alert(
                            style: AlertStyle(isOverlayTapDismiss: false),
                            context: context,
                            title: 'Quiz Completed',
                            desc: 'You have finished your quiz',
                            buttons: [
                              DialogButton(
                                  child: Text('Restart'),
                                  onPressed: () => Navigator.pop(context))
                            ]).show();
                        questionNumber = 0;
                        scores = [];
                      }
                    });
                  },
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: scores,
          ),
          SizedBox(
            height: 20,
          )
        ]);
  }
}
