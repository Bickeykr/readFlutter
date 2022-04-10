import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

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
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter you name",
                    labelText: "Username",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: Text("Submit"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print("Hello there");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
