// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/homeScreen.dart';
import 'package:spotify_clone/mylibraryScreen.dart';
import 'package:spotify_clone/searchScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _nomsScreen = ["Home", "Search", "My library"];
  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    MylibraryScreen()
  ];
  int _screen = 0;
  bool _isScreen0 = false;
  bool _isScreen1 = false;
  bool _isScreen2 = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isScreen0 = true;
    _isScreen1 = false;
    _isScreen2 = false;
  }

  void _screenChanger(int screen) {
    setState(() {
      _screen = screen;

      if (screen == 0) {
        _isScreen0 = true;
        _isScreen1 = false;
        _isScreen2 = false;
      } else if (screen == 1) {
        _isScreen1 = true;
        _isScreen0 = false;
        _isScreen2 = false;
      } else {
        _isScreen2 = true;
        _isScreen0 = false;
        _isScreen1 = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.8,
          backgroundColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 233, 30, 196),
                    radius: 30,
                  ),
                  title: Text(
                    "Name",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  subtitle: Text(
                    "View Profile",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                Divider()
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text(
            _nomsScreen[_screen],
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: _screens[_screen],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 13,
            selectedItemColor: Colors.white,
            unselectedFontSize: 13,
            unselectedItemColor: Colors.white,
            currentIndex: _screen,
            onTap: (value) {
              _screenChanger(value);
            },
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Image(
                  image: _isScreen0
                      ? AssetImage("assets/home_filled.png")
                      : AssetImage("assets/home.png"),
                  height: 25,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: _isScreen1
                      ? AssetImage("assets/search_filled.png")
                      : AssetImage("assets/search.png"),
                  height: 25,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                  icon: Image(
                    image: _isScreen2
                        ? AssetImage("assets/library_filled.png")
                        : AssetImage("assets/library.png"),
                    height: 25,
                  ),
                  label: "My library")
            ]),
      ),
    );
  }
}
