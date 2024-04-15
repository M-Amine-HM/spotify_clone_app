// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/mPlayedScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _RecPlayedName = [
    "Dance Gavin Dance",
    "Carnival",
    "Tickets to my downfall",
    "Dirty Head",
    "Greta Van Fleet",
    "Tycho",
    "Song",
    "Song",
    "Song",
  ];
  List<String> _RecPlayedImage = [
    "rm1",
    "rm2",
    "rm3",
    "rm4",
    "rm5",
    "m6",
    "m2",
    "m3",
    "m4"
  ];
  List<String> _episodesTitle = [
    "Strawberry's Wake",
    "Dance Gavin Dance",
    "Greta Van Fleet",
    "Bryce Vin",
    "Irration",
    "Strawberry's Wake",
    "Dance Gavin Dance",
  ];
  List<String> _episodesSubTitle = [
    "Album-Afterburner",
    "Album-Mothership",
    "Album-After Burner",
    "Album-From the Fires",
    "Album-Coastin",
    "Album-Afterburner",
    "Album-Mothership",
  ];
  List<String> _episodesImage = [
    "ep1",
    "ep2",
    "ep3",
    "ep4",
    "ep5",
    "rm1",
    "rm4"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Good evening",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: songContainer(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => musicPlayedScreen(
                                    musicPlayedImage: _RecPlayedImage[0],
                                    musicPlayedName: _RecPlayedName[0])),
                          );
                        },
                        songImage: "m1",
                        songName: "Machine Gun Kelly",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: songContainer(
                        songImage: "m3",
                        songName: "The Oral History of The Office",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => musicPlayedScreen(
                                    musicPlayedImage: _RecPlayedImage[1],
                                    musicPlayedName: _RecPlayedName[1])),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: songContainer(
                        songImage: "m2",
                        songName: "Greta Van Fleet",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => musicPlayedScreen(
                                    musicPlayedImage: _RecPlayedImage[2],
                                    musicPlayedName: _RecPlayedName[2])),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: songContainer(
                        songImage: "m4",
                        songName: "Bryce Vine",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => musicPlayedScreen(
                                    musicPlayedImage: _RecPlayedImage[3],
                                    musicPlayedName: _RecPlayedName[3])),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: songContainer(
                        songImage: "m5",
                        songName: "Chon",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => musicPlayedScreen(
                                    musicPlayedImage: _RecPlayedImage[4],
                                    musicPlayedName: _RecPlayedName[4])),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: songContainer(
                        songImage: "m6",
                        songName: "Tycho",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => musicPlayedScreen(
                                    musicPlayedImage: _RecPlayedImage[5],
                                    musicPlayedName: _RecPlayedName[5])),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Recently Played",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                //RecentlyPlayedWidget(),
                SizedBox(
                  height: 160,
                  width: MediaQuery.of(context).size.width * 1,
                  child: ListView.separated(
                    //physics: NeverScrollableScrollPhysics(),
                    itemBuilder: ((context, index) => Container(
                          child: RecentlyPlayedWidget(
                            songImage: _RecPlayedImage[index],
                            songName: _RecPlayedName[index],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => musicPlayedScreen(
                                        musicPlayedImage:
                                            _RecPlayedImage[index],
                                        musicPlayedName:
                                            _RecPlayedName[index])),
                              );
                            },
                          ),
                        )),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemCount: _RecPlayedImage.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Text(
                  "Episodes for you",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 230,
                    width: MediaQuery.of(context).size.width * 1,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) => EpisodeWidget(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => musicPlayedScreen(
                                      musicPlayedImage: _episodesImage[index],
                                      musicPlayedName: _episodesTitle[index])),
                            );
                          },
                          epsisodeImage: _episodesImage[index],
                          epsisodeTitle: _episodesTitle[index],
                          epsisodeSubTitle: _episodesSubTitle[index])),
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        width: 12,
                      ),
                      itemCount: _episodesImage.length,
                    )),
                SizedBox(
                  height: 10,
                )
              ]),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class EpisodeWidget extends StatelessWidget {
  EpisodeWidget(
      {super.key,
      required this.epsisodeImage,
      required this.epsisodeTitle,
      required this.epsisodeSubTitle,
      required this.onTap});
  String epsisodeImage;
  String epsisodeTitle;
  String epsisodeSubTitle;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(8)),
            height: 150,
            width: 150,
            child: Image(
              image: AssetImage("assets/$epsisodeImage.png"),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            epsisodeTitle,
            softWrap: false,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            epsisodeSubTitle,
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

class RecentlyPlayedWidget extends StatelessWidget {
  const RecentlyPlayedWidget({
    super.key,
    required this.songImage,
    required this.songName,
    required this.onTap,
    // required this.nextpage(context,sName,sImage),
  });
  final String songName;
  final String songImage;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image(
                image: AssetImage("assets/$songImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              songName,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}

class songContainer extends StatelessWidget {
  const songContainer({
    super.key,
    required this.songImage,
    required this.songName,
    required this.onTap,
  });
  final String songName;
  final String songImage;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade800,
        ),
        // width: MediaQuery.of(context).size.width * 0.45,
        height: 70,
        //color: Colors.grey.shade800,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage("assets/$songImage.png"),
                fit: BoxFit.cover,
                height: 75,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  songName,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                  //softWrap: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
