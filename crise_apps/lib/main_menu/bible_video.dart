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
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/TWMhcg83AWg";
                await launch(url);
              },
              icon: Icon(Icons.sunny),
              label: Text(
                "Kejadian Bahagian 1",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 65, 212, 70)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/AMvbbGitx3Q";
                await launch(url);
              },
              icon: Icon(Icons.sunny),
              label: Text(
                "Kejadian Bahagian 2",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 65, 212, 70)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/BlEk0x7Q8uY";
                await launch(url);
              },
              icon: Icon(Icons.person),
              label: Text(
                "Keluaran Bahaian 1",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 198, 194, 79)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/3x-zHo7U_WE";
                await launch(url);
              },
              icon: Icon(Icons.person),
              label: Text(
                "Keluaran Bahaian 2",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 198, 194, 79)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/bguCNZvhUiQ";
                await launch(url);
              },
              icon: Icon(Icons.book),
              label: Text(
                "Imamat ",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 79, 178, 198)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/GlZpY2VJqPk";
                await launch(url);
              },
              icon: Icon(Icons.numbers),
              label: Text(
                "Bilangan ",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 51, 65, 64)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/kLwuBAFBNBg";
                await launch(url);
              },
              icon: Icon(Icons.replay),
              label: Text(
                "Ulangan",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 172, 5, 255)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/BraD9UPtWGw";
                await launch(url);
              },
              icon: Icon(Icons.male),
              label: Text(
                "Yoshua",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 5, 113, 255)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/0xoJlaPfOiM";
                await launch(url);
              },
              icon: Icon(Icons.rule),
              label: Text(
                "Hakim2 ",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 153, 174, 203)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/dHiRnlFu6yo";
                await launch(url);
              },
              icon: Icon(Icons.female),
              label: Text(
                "Rut",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 204, 65, 123)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/FkulFlha45c";
                await launch(url);
              },
              icon: Icon(Icons.abc),
              label: Text(
                "1 Samuel",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 107, 184, 105)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/yxNy34ZS0xc";
                await launch(url);
              },
              icon: Icon(Icons.abc),
              label: Text(
                "2 Samuel",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 107, 184, 105)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/f9CRYzJH7es";
                await launch(url);
              },
              icon: Icon(Icons.money),
              label: Text(
                "1/2 Raja2",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 149, 116, 33)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/_0Xuth1lw44";
                await launch(url);
              },
              icon: Icon(Icons.password),
              label: Text(
                "1/2 Tawarikh ",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 158, 146, 116)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/wWAZHTpSxYg";
                await launch(url);
              },
              icon: Icon(Icons.book_rounded),
              label: Text(
                "Ezra dan Nehemia",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 164, 115, 115)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/7gbN2TbmCaM";
                await launch(url);
              },
              icon: Icon(Icons.female_rounded),
              label: Text(
                "Ester",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 90, 55, 122)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/6PhUHYInJO4";
                await launch(url);
              },
              icon: Icon(Icons.person_add_disabled),
              label: Text(
                "Ayub/Job",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 146, 188, 56)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/Gj2ZJSTXE1E";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Psalms/Mazmur",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 243, 110, 110)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/He75ZssdAN0";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Amsal",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 217, 4)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/bzT7jzh2F58";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Pengkhutbah",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 8, 255)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Kidung Agung",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Yesaya",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Yeremia",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Ratapan",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Yehezkial",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Daniel",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Hosea",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Yoel",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Amos",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Obaja",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Yunus",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Mikha",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Nahum",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Yunus",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Mikha",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Nahum",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Habakuk",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Zefanya",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Hagai",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Zakharia",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VfhaM-OESHU";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Maleaki",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 110, 212, 243)),
            ),
          ),
        ],
      ),
    );
  }
}


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