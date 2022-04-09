import 'package:flutter/material.dart';

import 'main.dart'; //imported while solving error

class startingPage extends StatelessWidget {
  const startingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text("Welcome to readFlutter"),
        ),
      ),
    );
  }
}
