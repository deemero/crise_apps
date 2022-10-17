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
              icon: Icon(Icons.safety_check),
              label: Text(
                "LAWS OF MOSES ",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 31, 120, 34)),
            ),
          ),
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
              icon: Icon(Icons.sunny),
              label: Text(
                "Keluaran Bahaian 1",
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
                String url = "https://youtu.be/3x-zHo7U_WE";
                await launch(url);
              },
              icon: Icon(Icons.sunny),
              label: Text(
                "Keluaran Bahaian 2",
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
                String url = "https://youtu.be/bguCNZvhUiQ";
                await launch(url);
              },
              icon: Icon(Icons.sunny),
              label: Text(
                "Imamat ",
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
                String url = "https://youtu.be/GlZpY2VJqPk";
                await launch(url);
              },
              icon: Icon(Icons.sunny),
              label: Text(
                "Bilangan ",
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
                String url = "https://youtu.be/kLwuBAFBNBg";
                await launch(url);
              },
              icon: Icon(Icons.sunny),
              label: Text(
                "Ulangan",
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
                String url = "https://youtu.be/TWMhcg83AWg";
                await launch(url);
              },
              icon: Icon(Icons.person),
              label: Text(
                "HISTORY",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 49, 30, 160)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/BraD9UPtWGw";
                await launch(url);
              },
              icon: Icon(Icons.history),
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
              icon: Icon(Icons.history),
              label: Text(
                "Hakim2 ",
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
                String url = "https://youtu.be/dHiRnlFu6yo";
                await launch(url);
              },
              icon: Icon(Icons.history),
              label: Text(
                "Rut",
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
                String url = "https://youtu.be/FkulFlha45c";
                await launch(url);
              },
              icon: Icon(Icons.history),
              label: Text(
                "1 Samuel",
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
                String url = "https://youtu.be/yxNy34ZS0xc";
                await launch(url);
              },
              icon: Icon(Icons.history),
              label: Text(
                "2 Samuel",
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
                String url = "https://youtu.be/f9CRYzJH7es";
                await launch(url);
              },
              icon: Icon(Icons.history),
              label: Text(
                "1/2 Raja2",
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
                String url = "https://youtu.be/_0Xuth1lw44";
                await launch(url);
              },
              icon: Icon(Icons.history),
              label: Text(
                "1/2 Tawarikh ",
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
                String url = "https://youtu.be/wWAZHTpSxYg";
                await launch(url);
              },
              icon: Icon(Icons.history),
              label: Text(
                "Ezra dan Nehemia",
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
                String url = "https://youtu.be/7gbN2TbmCaM";
                await launch(url);
              },
              icon: Icon(Icons.history),
              label: Text(
                "Ester",
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
                String url = "https://youtu.be/TWMhcg83AWg";
                await launch(url);
              },
              icon: Icon(Icons.wordpress),
              label: Text(
                "POETRY",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 207, 52, 52)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/6PhUHYInJO4";
                await launch(url);
              },
              icon: Icon(Icons.book),
              label: Text(
                "Ayub/Job",
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
                String url = "https://youtu.be/Gj2ZJSTXE1E";
                await launch(url);
              },
              icon: Icon(Icons.book),
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
              icon: Icon(Icons.book),
              label: Text(
                "Amsal",
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
                String url = "https://youtu.be/bzT7jzh2F58";
                await launch(url);
              },
              icon: Icon(Icons.book),
              label: Text(
                "Pengkhutbah",
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
                String url = "";
                await launch(url);
              },
              icon: Icon(Icons.book),
              label: Text(
                "Kidung Agung",
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
                String url = "https://youtu.be/TWMhcg83AWg";
                await launch(url);
              },
              icon: Icon(Icons.history),
              label: Text(
                "MAJOR PROPHETS",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 35, 133, 150)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/rMvwI5evHwk";
                await launch(url);
              },
              icon: Icon(Icons.person_add_alt_1_sharp),
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
                String url = "https://youtu.be/HJ6Fws_Kwzo";
                await launch(url);
              },
              icon: Icon(Icons.person_add_alt_1_sharp),
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
                String url = "https://youtu.be/FIE-3rb5dbk";
                await launch(url);
              },
              icon: Icon(Icons.person_add_alt_1_sharp),
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
                String url = "https://youtu.be/kq29NrX417Q";
                await launch(url);
              },
              icon: Icon(Icons.person_add_alt_1_sharp),
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
                String url = "https://youtu.be/KskRV6MWc7c";
                await launch(url);
              },
              icon: Icon(Icons.person_add_alt_1_sharp),
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
                String url = "https://youtu.be/jz_OxntlZHA";
                await launch(url);
              },
              icon: Icon(Icons.person_add_alt_1_sharp),
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
                String url = "https://youtu.be/TWMhcg83AWg";
                await launch(url);
              },
              icon: Icon(Icons.history),
              label: Text(
                "MINOR PROPHETS",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 125, 44, 196)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/O_1iFajwdZQ";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Yoel",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/DDzzwuKtutw";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Amos",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/kMf4WW1n5Pc";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Obaja",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/GFRXBZQGoPQ";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Yunus",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/-rfYJczXJcU";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Mikha",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/ffnM7hqVfrU";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Nahum",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/HHztlgmXoDU";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Habakuk",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/6c_zrjO6Vio";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Zefanya",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/kz62QTe4YAs";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Hagai",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/CclWiAKZsKI";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Zakharia",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/lOzQkLn2joM";
                await launch(url);
              },
              icon: Icon(Icons.male_outlined),
              label: Text(
                "Maleaki",
                style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 98, 25, 120)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "";
                await launch(url);
              },
              icon: Icon(Icons.book_online),
              label: Text(
                "NEW TASTEMENT/PERJANJIAN BARU",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "";
                await launch(url);
              },
              icon: Icon(Icons.dark_mode),
              label: Text(
                "GOSPELS",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 168, 157, 173)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/r7wxWUcgf1s";
                await launch(url);
              },
              icon: Icon(Icons.wb_sunny),
              label: Text(
                "Matius",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/UucekJFIQ58";
                await launch(url);
              },
              icon: Icon(Icons.wb_sunny),
              label: Text(
                "Markus",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/vHb9Uw3UzZA";
                await launch(url);
              },
              icon: Icon(Icons.wb_sunny),
              label: Text(
                "Lukas",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/U73HFzHSkdI";
                await launch(url);
              },
              icon: Icon(Icons.wb_sunny),
              label: Text(
                "Yohannes",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "";
                await launch(url);
              },
              icon: Icon(Icons.history_edu),
              label: Text(
                "HISTORY",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 168, 157, 173)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/S73ZmLcr_o8";
                await launch(url);
              },
              icon: Icon(Icons.person),
              label: Text(
                "Kisah Para Rasul",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "";
                await launch(url);
              },
              icon: Icon(Icons.work_history_rounded),
              label: Text(
                "PAUL LETTER",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 168, 157, 173)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/tAGdzk8N4H0";
                await launch(url);
              },
              icon: Icon(Icons.bookmark_added_rounded),
              label: Text(
                "Roma",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/y6NdqCPDC1U";
                await launch(url);
              },
              icon: Icon(Icons.bookmark_added_rounded),
              label: Text(
                "1/2 Korintus",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/jqBZFSfYI9E";
                await launch(url);
              },
              icon: Icon(Icons.bookmark_added_rounded),
              label: Text(
                "Galatia",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/qtw8IA7949E";
                await launch(url);
              },
              icon: Icon(Icons.bookmark_added_rounded),
              label: Text(
                "Efesus",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/VH8kBNeiiD0";
                await launch(url);
              },
              icon: Icon(Icons.bookmark_added_rounded),
              label: Text(
                "Filipi",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "";
                await launch(url);
              },
              icon: Icon(Icons.my_library_books_sharp),
              label: Text(
                "OTHER LETTER",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 168, 157, 173)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/Wg-jSyeleQE";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Kolose",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/vLYVfz-9x50";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "1/2 Telesonika",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/Og_ogcyWFLY";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "1/2 Timotius",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/sAcIQp5niYI";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Titus",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/J_zP6hz67zQ";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Felimon",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/mBdg2ienJSM";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Ibrani",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/x3KsWUO0NB8";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Yokubus",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/1Ww263guCqo";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "1/2 Petrus",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/UW7gulPRS9s";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "1/2/3 Yohannes",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/IgAF9wjpBoE";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Yudas",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
            ),
          ),
          Card(
            // color: Colors.grey,
            child: ElevatedButton.icon(
              onPressed: () async {
                String url = "https://youtu.be/f7Sv1sxmtDY";
                await launch(url);
              },
              icon: Icon(Icons.wallet),
              label: Text(
                "Wahyu",
                style: GoogleFonts.indieFlower(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 231, 235)),
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