import 'dart:developer';

// import 'package:crise_apps/screen/home_page%20copy.dart';
import 'package:crise_apps/screen/home_page%20copy.dart';
import 'package:crise_apps/screen/login_page.dart';

import 'package:crise_apps/utils/my_alert.dart';
import 'package:crise_apps/utils/my_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:last_project_firebase/utils/my_snakebar.dart';

class Auth {
  // MySnackbar snackbar = MySnackbar();
  // alert class
  MyAlertDialog alert = MyAlertDialog();

  // firebase instance
  FirebaseAuth auth = FirebaseAuth.instance;

  // Stream user status
  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  // sign up/ register function
  void registerUser(String email, String password, BuildContext context) async {
    try {
      UserCredential myUser = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // send email verification
      await myUser.user!.sendEmailVerification();
      // show alert dialog
      alert.myAlertDialog(
        context,
        "Email verification has send to $email",
        TextButton(
          onPressed: () {
            // show snackbar
            ScaffoldMessenger.of(context)
                .showSnackBar(mySnackbar("Register Success", Colors.green));
            // go to login
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => LoginScreen()),
                (route) => false);
          },
          child: const Text("Ok, I'll check it"),
        ),
      );

      // catch an error
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
        // show snackbar
        ScaffoldMessenger.of(context).showSnackBar(
            mySnackbar("The password provided is too weak", Colors.red));
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
        // show snackbar
        ScaffoldMessenger.of(context).showSnackBar(mySnackbar(
            "The account already exists for that email", Colors.red));
      }
    } catch (e) {
      log(e.toString());
      ScaffoldMessenger.of(context).showSnackBar(mySnackbar("$e", Colors.red));
    }
  }

  // login function
  void loginUser(String email, String password, BuildContext context) async {
    try {
      UserCredential myUser = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (myUser.user!.emailVerified) {
        // show snackbar
        ScaffoldMessenger.of(context)
            .showSnackBar(mySnackbar("Login Success", Colors.green));
        // go to home
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => HomePage()), (route) => false);
      } else {
        // show alert
        alert.myAlertDialog(
            context,
            "Your email has not been verified, please check your mail box",
            TextButton(
                onPressed: () async {
                  await myUser.user!.sendEmailVerification();
                  // back
                  Navigator.pop(context);
                  // show snackbar
                  ScaffoldMessenger.of(context).showSnackBar(mySnackbar(
                      "Email verification has been send", Colors.green));
                },
                child: const Text(
                  "Resend email verification",
                  style: TextStyle(color: Colors.black),
                )));
      }

      // catch an error
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
        // show snackbar
        ScaffoldMessenger.of(context).showSnackBar(
            mySnackbar("No user found for that email", Colors.red));
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
        // show snackbar
        ScaffoldMessenger.of(context).showSnackBar(
            mySnackbar("Wrong password provided for that user", Colors.red));
      } else {
        // show snackbar
        ScaffoldMessenger.of(context)
            .showSnackBar(mySnackbar(e.toString(), Colors.red));
      }
    }
  }

  // logout function
  void logoutUser(BuildContext context) async {
    await auth.signOut();
    // go to login screen
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_) => LoginScreen()), (route) => false);
  }

  // reset password
  void resetPassword(String email, BuildContext context) async {
    await auth.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context).showSnackBar(mySnackbar(
        "Reset password email has been send to $email", Colors.green));
  }
}

// class Auth {
//   //mysnackbar
//   MySnackbar snackbar = MySnackbar();

//   //AlertBox
//   MyAlertDialog alert = MyAlertDialog();

//   // firebase instace
//   FirebaseAuth auth = FirebaseAuth.instance;

//   //share user
//   Stream<User?> get streamAuthStatus => auth.authStateChanges();

//   //sign up user
//   void registerUser(String email, String password, BuildContext context) async {
//     try {
//       UserCredential myUser = await auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       if (myUser.user!.emailVerified) {
//         ///
//         ScaffoldMessenger.of(context).showSnackBar(
//             snackbar.mySnackbar("Register Success", Colors.green));
//         //
//         Navigator.pushAndRemoveUntil(
//             context,
//             MaterialPageRoute(builder: (_) => const HomePage()),
//             (route) => false);
//       }
//       await myUser.user?.sendEmailVerification();
//       alert.myAlertDialog(
//           context,
//           "Email Verification has to $email",
//           TextButton(
//               onPressed: (() => Navigator.pop(context)),
//               child: const Text("Ok I will check")));

// //
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

// // login funcions
//   void loginUser(String email, String password, BuildContext context) async {
//     try {
//       await auth.signInWithEmailAndPassword(email: email, password: password);
//       //showsnackbar
//       ScaffoldMessenger.of(context)
//           .showSnackBar(snackbar.mySnackbar("User Not Found", Colors.red));
//       log('Wrong password provided for that user.');
// //go to home
//       Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (_) => const HomePage()),
//           (route) => false);
//       //
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         log('No user found for that email.');
//         ScaffoldMessenger.of(context)
//             .showSnackBar(snackbar.mySnackbar("User Not Found", Colors.red));
//       } else if (e.code == 'wrong-password') {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(snackbar.mySnackbar("User Not Found", Colors.red));
//         log('Wrong password provided for that user.');
//       } else {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(snackbar.mySnackbar(e.toString(), Colors.red));
//       }
//     }
//   }

// //logout functions

//   void logoutUser(BuildContext context) async {
//     await auth.signOut();

//     //loginscreeen
//     Navigator.pushAndRemoveUntil(context,
//         MaterialPageRoute(builder: (_) => SignInPage()), (route) => false);
//   }

//   //reset password
//   void resetPassword(String email, BuildContext context) async {
//     await auth.sendPasswordResetEmail(email: email);
//     snackbar.mySnackbar("Password have beeen reset to $email", Colors.green);
//   }
// }
