import 'package:flutter/material.dart';
import 'package:read_flutter/utiles/routes.dart';

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
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 350,
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
                      hintText: "Enter you name",
                      labelText: "Username",
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
                  ElevatedButton(
                    child: Text("Submit"),
                    style: TextButton.styleFrom(minimumSize: Size(170, 40)),
                    onPressed: () => moveToHome(context),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
