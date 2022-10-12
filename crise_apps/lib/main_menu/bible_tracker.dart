import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BibleTracker extends StatefulWidget {
  const BibleTracker({super.key});

  @override
  State<BibleTracker> createState() => _BibleTrackerState();
}

class _BibleTrackerState extends State<BibleTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Bible Tracker",
            style: GoogleFonts.indieFlower(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }
}
