import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class musicPlayedScreen extends StatefulWidget {
  musicPlayedScreen(
      {super.key,
      required this.musicPlayedImage,
      required this.musicPlayedName});
  String musicPlayedName;
  String musicPlayedImage;

  @override
  State<musicPlayedScreen> createState() => _musicPlayedScreenState();
}

class _musicPlayedScreenState extends State<musicPlayedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          "Music",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "Music Played :",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            Spacer(),
            Text(widget.musicPlayedName,
                style: TextStyle(fontSize: 30, color: Colors.white)),
            Spacer(),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Image(
                  image: AssetImage("assets/${widget.musicPlayedImage}.png"),
                  fit: BoxFit.contain,
                )),
            Spacer(
              flex: 5,
            ),
          ],
        ),
      )),
    );
  }
}
