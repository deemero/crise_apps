import 'package:crise_apps/auth/auth.dart';
import 'package:crise_apps/screen/login_page.dart';

import 'package:flutter/material.dart';
import 'package:crise_apps/screen/home_page%20copy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

import '../auth/auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // calll auth class
  Auth auth = Auth();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  "Welcome! Register To Continue",
                  style: GoogleFonts.indieFlower(
                      fontSize: 23, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 22,
                ),
                TextFormField(
                  validator: (value) {
                    // return email.value.text.isEmpty
                    //     ? "Name cannot be empty"
                    //     : null;
                  },
                  // controller: email,
                  decoration: InputDecoration(
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.person_add_alt_1_outlined,
                        color: Colors.black12,
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                      label: Text("Fullname", style: GoogleFonts.indieFlower()),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    return email.value.text.isEmpty ? "Cannot be empty" : null;
                  },
                  controller: email,
                  decoration: InputDecoration(
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colors.black12,
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                      label: Text("Email", style: GoogleFonts.indieFlower()),
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
                  controller: password,
                  decoration: InputDecoration(
                      fillColor: Colors.black.withOpacity(0.1),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.security_outlined,
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
                MaterialButton(
                  onPressed: () {
                    if (keyForm.currentState!.validate()) {
                      auth.registerUser(email.text, password.text, context);
                    }
                  },
                  minWidth: double.infinity,
                  height: 55,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromARGB(255, 51, 212, 78),
                  child: const Text(
                    "REGISTER",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                      (route) => false),
                  child: Center(
                    child: Text("Already have an account? login here",
                        style: GoogleFonts.indieFlower(
                            color: Colors.blueAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
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
