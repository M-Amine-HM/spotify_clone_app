import 'package:flutter/material.dart';
import 'package:spotify_clone/LoginScreen.dart';
import 'package:spotify_clone/SignupScreen.dart';
import 'package:spotify_clone/home.dart';
import 'package:spotify_clone/homeScreen.dart';
import 'package:spotify_clone/mPlayedScreen.dart';
import 'package:spotify_clone/textfield.dart';

//import 'package:spotify_clone/home.dart';
//import 'package:spotify_clone/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: SignupScreen(),
    );
  }
}
