// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BibleVideo extends StatefulWidget {
  const BibleVideo({super.key});

  @override
  State<BibleVideo> createState() => _BibleVideoState();
}

class _BibleVideoState extends State<BibleVideo> {
  // String? get url => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.purple,
          backgroundColor: Colors.blue,
          title: Text("Bible Video",
              style: GoogleFonts.indieFlower(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))),
      body: ListView(
        children: [
          Card(
            color: Colors.grey,
            child: ElevatedButton(
              child: Text("Kejadian"),
              onPressed: () async {
                String url = "https://www.youtube.com/watch?v=piOWD-z95x4&t=0s";
                await launch(url);
                // if (await canLaunch(url)) {

                //   await launch(
                //     url,
                //     // forceSafariVC: true,
                //     forceWebView: false,

                //     // enableJavaScript: true,
                //     // enableDomStorage: true,
                //     // webOnlyWindowName: '_self',
                //   );
                // } else {
                //   print("invalid");
                // }

                // final Uri launchUri = Uri(
                //   scheme: 'tel',
                //   path: "+601129530841",
                // );
                // if (await canLaunch(launchUri.toString())) {
                //   await launch(launchUri.toString());
                // } else {
                //   print("object");
                // }
              },
            ),
          )
        ],
      ),
    );
  }
}
