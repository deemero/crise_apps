import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        title: Text("hELLPO"),
      ),
    );
  }
}
