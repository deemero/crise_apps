import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'sign_in_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Center(
          child: MaterialButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => SignInPage()),
              (route) => false);
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(12)),
          child: Text("Logout"),
        ),
      )),
    );
  }
}
