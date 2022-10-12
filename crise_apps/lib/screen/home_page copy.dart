// ignore_for_file: unnecessary_const

import 'package:crise_apps/auth/auth.dart';
import 'package:crise_apps/main_menu/bible_tracker.dart';
import 'package:crise_apps/main_menu/bible_video.dart';
import 'package:crise_apps/screen/login_page.dart';
import 'package:crise_apps/utils/my_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  Auth auth = Auth();

  // controller get data
  MyAlertDialog alert = MyAlertDialog();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Main Menu",
          style: GoogleFonts.indieFlower(fontSize: 22),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.black,
                  child: Image.asset("assets/images/criss.png"),

                  // child: Center(
                  //     child: Column(mainAxisSize: MainAxisSize.min, children: [
                  //   // Icon(
                  //   //   Icons.home,
                  //   //   size: 70.0,
                  //   // ),
                  //   Text(
                  //     "Home",
                  //     style: GoogleFonts.indieFlower(fontSize: 22),
                  //   )
                  // ])),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const BibleTracker())),
                  splashColor: Colors.blue,
                  child: Center(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                      Icons.track_changes_outlined,
                      size: 70.0,
                      color: Colors.grey,
                    ),
                    Text(
                      "Bible Tracker",
                      style: GoogleFonts.indieFlower(fontSize: 22),
                    )
                  ])),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const BibleVideo())),
                  splashColor: Colors.blue,
                  child: Center(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                      Icons.book,
                      size: 70.0,
                      color: Colors.lightBlue,
                    ),
                    Text(
                      "Bible Video",
                      style: GoogleFonts.indieFlower(fontSize: 22),
                    )
                  ])),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 13, 224, 20),
                  child: Center(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                      Icons.help_center_rounded,
                      size: 70.0,
                      color: Color.fromARGB(255, 13, 224, 20),
                    ),
                    Text(
                      "Bible Guideline",
                      style: GoogleFonts.indieFlower(fontSize: 22),
                    )
                  ])),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.yellow,
                  child: Center(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                      Icons.event,
                      size: 70.0,
                      color: Colors.yellow,
                    ),
                    Text(
                      "Event",
                      style: GoogleFonts.indieFlower(fontSize: 22),
                    )
                  ])),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                        (route) => false);
                  },
                  splashColor: Colors.redAccent,
                  child: Center(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                      Icons.logout_outlined,
                      size: 70.0,
                      color: Colors.redAccent,
                    ),
                    Text(
                      "Logout",
                      style: GoogleFonts.indieFlower(fontSize: 22),
                    )
                  ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
