import 'package:crise_apps/auth/auth.dart';
import 'package:crise_apps/screen/home_page%20copy.dart';
import 'package:crise_apps/screen/register_page.dart';
import 'package:crise_apps/utils/my_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // calll auth class
  Auth auth = Auth();
  bool isLoading = false;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void login() {
    setState(() {
      isLoading = true;
    });
    auth.loginUser(email.text, password.text, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      //   title: const Text(
      //     "LOGIN",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: Form(
        key: keyForm,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: ListView(
              children: [
                SizedBox(
                  height: 200,
                  child: Image.asset("assets/images/criss.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  "Welcome! Login To Continue",
                  style: GoogleFonts.indieFlower(
                      fontSize: 23, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    return email.value.text.isEmpty ? "Cannot be empty" : null;
                  },
                  controller: email,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.1),
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colors.black12,
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                      label: Text(
                        "Email",
                        style: GoogleFonts.indieFlower(),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    return password.value.text.isEmpty
                        ? "Cannot be empty"
                        : null;
                  },
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.1),
                      prefixIcon: const Icon(
                        Icons.lock_clock,
                        color: Colors.black12,
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                      label: Text(
                        "Password",
                        style: GoogleFonts.indieFlower(),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 20,
                ),
                isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : MaterialButton(
                        onPressed: () {
                          if (keyForm.currentState!.validate()) {
                            login();
                            setState(() {
                              isLoading = false;
                            });
                          }
                        },
                        minWidth: double.infinity,
                        height: 55,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color.fromARGB(255, 236, 200, 16),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    if (email.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          mySnackbar("Please fill your email", Colors.red));
                    }
                    auth.resetPassword(email.text, context);
                  },
                  child: Center(
                      child: Text(
                    "Forgot Password? click here",
                    style: GoogleFonts.indieFlower(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  )),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const RegisterScreen())),
                  child: Center(
                    child: Text(
                      "Dont have any account? sign up here",
                      style: GoogleFonts.indieFlower(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
