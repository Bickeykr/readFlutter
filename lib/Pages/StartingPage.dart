import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Welcome to readFlutter"),
      ),
    );
  }
}