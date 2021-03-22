import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name, email;

  HomePage({Key key, @required this.name, this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.shade200,
        body: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Text("Name: $name")),
              Center(child: Text("Email: $email")),
            ],
          ),
        ));
  }
}
