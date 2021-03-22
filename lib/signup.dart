import 'package:basic_signup/homePage.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autoValidate = false;
  String name, email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade200,
      body: Form(
        key: _key,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: TextFormField(
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Enter Name';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                  onSaved: (input) => name = input,
                ),
              ),
              ListTile(
                leading: Icon(Icons.email_rounded),
                title: TextFormField(
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Enter Email';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  onSaved: (input) => email = input,
                ),
              ),
              ButtonTheme(
                height: 50.0,
                minWidth: 200.0,
                buttonColor: Colors.red.shade200,
                child: ElevatedButton(
                  onPressed: _sendToNextTheme,
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _sendToNextTheme() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    name: name,
                    email: email,
                  )));
    }
  }
}
