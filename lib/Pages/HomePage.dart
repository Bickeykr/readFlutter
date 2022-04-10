// We could write this code in main.dart but that will become lenthery so we create a separate file for a seperate file.

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("readFlutter"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Text(
            "Choose a Topic 👆👆",
            style: TextStyle(
              fontSize: 29,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: Drawer(backgroundColor: Colors.red),
    );
  }
}
