import 'package:flutter/material.dart';

import 'startingPage.dart';

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: startingPage(),
    );
  }
}
