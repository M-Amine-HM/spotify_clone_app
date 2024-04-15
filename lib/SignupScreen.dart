// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/LoginScreen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Spacer(),
            Image(
              image: AssetImage("assets/spotify_icon.png"),
              height: 150,
            ),
            Spacer(
              flex: 2,
            ),
            Column(
              children: [
                Text(
                  "Millions of songs.",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  "Free on spotify.",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 65, 255, 71)),
                    onPressed: () {},
                    child: Text(
                      "Sign up free",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ),
                mediaButton(
                  theImage: "smartphone",
                  theText: "Continue with phone number",
                ),
                mediaButton(
                  theImage: "google",
                  theText: "Continue with Google",
                ),
                mediaButton(
                  theImage: "facebook",
                  theText: "Continue with Facebook",
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ))
              ],
            ),
            Spacer(),
          ],
        ),
      )),
    );
  }
}

class mediaButton extends StatelessWidget {
  const mediaButton({
    super.key,
    required this.theImage,
    required this.theText,
  });
  final String theImage;
  final String theText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        width: 330,
        height: 50,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2.0, color: Colors.white)),
          onPressed: () {},
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage("assets/$theImage.png"),
                width: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                theText,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
