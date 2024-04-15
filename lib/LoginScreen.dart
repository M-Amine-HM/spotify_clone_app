// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/home.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _secureText = true;
  String _errorTextPassword = "the password should be at least 5 caracters";
  String _errorTextEmail = "Email or username shouldn't be empty";
  late TextEditingController _email;
  bool _textVerifyPassword = false;
  bool _textVerifyEmail = false;

  TextEditingController _password = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    _email = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email or username",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  TextFormField(
                    onTap: () {
                      setState(() {
                        if (_email.text.toString().length == 0) {
                          _textVerifyEmail = true;
                        } else {
                          _textVerifyEmail = false;
                        }
                      });
                    },
                    controller: _email,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(129, 116, 116, 116),
                      filled: true,
                      border: InputBorder.none,
                      errorText: _textVerifyEmail ? _errorTextEmail : null,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    onTap: () {
                      setState(() {
                        if (_password.text.toString().length < 5) {
                          _textVerifyPassword = true;
                        } else {
                          _textVerifyPassword = false;
                        }
                      });
                    },
                    controller: _password,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    obscureText: _secureText,
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(129, 116, 116, 116),
                        filled: true,
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(_secureText
                              ? CupertinoIcons.eye_fill
                              : CupertinoIcons.eye_slash_fill),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        ),
                        errorText:
                            _textVerifyPassword ? _errorTextPassword : null),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_email.text.toString());
                      setState(() {
                        if (_password.text.toString().length < 5) {
                          _textVerifyPassword = true;
                        } else {
                          _textVerifyPassword = false;
                        }
                        if (_email.text.toString().length < 5) {
                          _textVerifyEmail = true;
                        } else {
                          _textVerifyEmail = false;
                        }
                        if (!_textVerifyEmail && !_textVerifyPassword) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                          //(route) => false;
                        }
                      });
                      print(_password.text.toString());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 116, 116, 116)),
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Log in without password",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
