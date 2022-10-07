import 'dart:developer';

import 'package:crise_apps/screen/home_page%20copy.dart';
import 'package:crise_apps/screen/sign_in_page.dart';
import 'package:crise_apps/utils/my_alert.dart';
import 'package:crise_apps/utils/my_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:last_project_firebase/utils/my_snakebar.dart';

class Auth {
  //mysnackbar
  MySnackbar snackbar = MySnackbar();

  //AlertBox
  MyAlertDialog alert = MyAlertDialog();

  // firebase instace
  FirebaseAuth auth = FirebaseAuth.instance;

  //share user
  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  //sign up user
  void registerUser(String email, String password, BuildContext context) async {
    try {
      UserCredential myUser = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (myUser.user!.emailVerified) {
        ///
        ScaffoldMessenger.of(context).showSnackBar(
            snackbar.mySnackbar("Register Success", Colors.green));
        //
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const HomePage()),
            (route) => false);
      }
      await myUser.user?.sendEmailVerification();
      alert.myAlertDialog(
          context,
          "Email Verification has to $email",
          TextButton(
              onPressed: (() => Navigator.pop(context)),
              child: const Text("Ok I will ceck")));

//
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

// login funcions
  void loginUser(String email, String password, BuildContext context) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      //showsnackbar
      ScaffoldMessenger.of(context)
          .showSnackBar(snackbar.mySnackbar("User Not Found", Colors.red));
      log('Wrong password provided for that user.');
//go to home
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
          (route) => false);
      //
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
        ScaffoldMessenger.of(context)
            .showSnackBar(snackbar.mySnackbar("User Not Found", Colors.red));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context)
            .showSnackBar(snackbar.mySnackbar("User Not Found", Colors.red));
        log('Wrong password provided for that user.');
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(snackbar.mySnackbar(e.toString(), Colors.red));
      }
    }
  }

//logout functions

  void logoutUser(BuildContext context) async {
    await auth.signOut();

    //loginscreeen
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_) => SignInPage()), (route) => false);
  }

  //reset password
  void resetPassword(String email, BuildContext context) async {
    await auth.sendPasswordResetEmail(email: email);
    snackbar.mySnackbar("Password have beeen reset to $email", Colors.green);
  }
}
