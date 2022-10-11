import 'dart:developer';

import 'package:crise_apps/auth/auth.dart';
import 'package:crise_apps/screen/home_page%20copy.dart';
import 'package:crise_apps/screen/register_page.dart';
import 'package:crise_apps/screen/sign_in_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Auth auth = Auth();
    return StreamBuilder<User?>(
        stream: auth.streamAuthStatus,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            log(snapshot.data.toString());
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: snapshot.data != null ? HomePage() : HomePage());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
