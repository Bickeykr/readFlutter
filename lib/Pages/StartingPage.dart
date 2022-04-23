import 'package:flutter/material.dart';
import 'package:read_flutter/Pages/HomePage.dart';
import 'package:read_flutter/utiles/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  String username = "";
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.leftToRight, child: HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        //It adjust the color of button and other ements as per the given color
        fontFamily: GoogleFonts.jost().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        backgroundColor: Color(0xff246EE9),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 280,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hello, " + username,
                      style: TextStyle(
                        fontSize: 29,
                        color: Color.fromARGB(255, 22, 22, 22),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Welcome to",
                        style: TextStyle(
                          fontSize: 29,
                          color: Color.fromARGB(255, 22, 22, 22),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " readFlutter",
                        style: TextStyle(
                          fontSize: 29,
                          color: Color(0xff78CCDE),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(55, 40, 55, 60),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontSize: 15.0,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            hintText: "Enter your name",
                          ),
                          onChanged: (value) {
                            username = value;
                            setState(() {});
                          },
                          maxLength: 12,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be empty";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 115),
                          child: InkWell(
                            onTap: (() => moveToHome(context)),
                            child: Ink(
                              width: 164,
                              height: 40,
                              child: Center(
                                child: Text("Submit",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 20,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    )),
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 14, 174, 210),
                                borderRadius: BorderRadius.circular(7),
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
                Padding(
                  padding: const EdgeInsets.only(top: 213),
                  child: Text(
                    "Made with ❤️ by Bickey.",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: GoogleFonts.averiaLibre().fontFamily,
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
