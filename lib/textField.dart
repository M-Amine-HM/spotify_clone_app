import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldsScreen extends StatefulWidget {
  const TextFieldsScreen({super.key});

  @override
  State<TextFieldsScreen> createState() => _TextFieldsScreenState();
}

class _TextFieldsScreenState extends State<TextFieldsScreen> {
  bool _secureText = true;
  String _passwordError = "";

  TextEditingController _passwordController = TextEditingController();

  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "Your Name",
                    labelText: "Name",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Detailed Description",
                    labelText: "Description",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: UnderlineInputBorder()),
                obscureText: false,
                maxLines: 3,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _secureText ? Icons.remove_red_eye : Icons.security),
                    onPressed: () {
                      setState(() {
                        _secureText = !_secureText;
                      });
                    },
                  ),
                ),
                obscureText: _secureText,
              ),
              SizedBox(
                height: 16,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.length < 10) {
                            return "Enter at least 10 char";
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Name",
                            labelText: "Name",
                            labelStyle:
                                TextStyle(fontSize: 24, color: Colors.black),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length < 3) {
                            return "Enter at least 3 char";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Password",
                            labelText: "Password",
                            labelStyle:
                                TextStyle(fontSize: 24, color: Colors.black),
                            border: OutlineInputBorder()),
                        obscureText: true,
                      ),
                    ],
                  )),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: Text("submit"),
                onPressed: () {
                  print("password : " + _passwordController.text);
                  setState(() {
                    print("form validation : " +
                        _formKey.currentState.toString());
                    if (_passwordController.text.length < 3)
                      _passwordError = "enter at least 3 caracters";
                    else
                      _passwordError = "null";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
