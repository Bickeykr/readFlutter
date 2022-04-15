import 'package:flutter/material.dart';
import 'package:read_flutter/utiles/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.HomeRoute);
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
                  height: 315,
                ),
                Text(
                  "Welcome to readFlutter",
                  style: TextStyle(
                    fontSize: 29,
                    color: Color.fromARGB(255, 22, 22, 22),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(60),
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
                        InkWell(
                          onTap: (() => moveToHome(context)),
                          child: Ink(
                            width: 164,
                            height: 40,
                            child: Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20),
                              ),
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
                      ],
                    ),
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
