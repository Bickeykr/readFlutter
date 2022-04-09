// We could write this code in main.dart but that will become lenthery so we create a separate file for a seperate file.

import 'package:flutter/material.dart';

class startingPage extends StatelessWidget {
  const startingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to readFlutter"),
        ),
      ),
      drawer: Drawer(backgroundColor: Colors.red),
    );
  }
}
