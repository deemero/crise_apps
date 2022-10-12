import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BibleVideo extends StatefulWidget {
  const BibleVideo({super.key});

  @override
  State<BibleVideo> createState() => _BibleVideoState();
}

class _BibleVideoState extends State<BibleVideo> {
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
            child: ListTile(
              title: Text("List Item 1"),
            ),
          )
        ],
      ),
    );
  }
}
