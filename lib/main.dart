import 'package:basic_signup/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User details',
      theme: ThemeData.dark(),
      home: SignUp(),
    );
  }
}
