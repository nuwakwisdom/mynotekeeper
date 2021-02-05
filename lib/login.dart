import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:notekeeper/form.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String text = "Welcome back";
  String subText = "Sign in contine";
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                "You have clicked the button " + count.toString() + " times",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.mail,
                      color: Colors.deepPurple,
                    ),
                    hintText: 'Enter email',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.remove_red_eye,
                    ),
                    hintText: 'Enter passwrod',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 280,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    print(text);
                    setState(() {
                      count = count + 1;
                      text = "Hello Wisdom!";
                      subText = "You have successfullly login";
                    });
                    print(text);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (_) => Home(),
                    //   ),
                    // );
                  },
                  color: Colors.deepPurple,
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('New User?',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => FormPage(),
                      ));
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
