import 'package:flutter/material.dart';
import 'package:uvix_flutter/login_screen.dart';
import 'package:uvix_flutter/second_screen.dart';

void main() {
  runApp(myHomePage());
}

class myHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: loginScreen()
    );
  }
}
