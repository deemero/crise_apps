import 'package:crise_apps/auth/auth.dart';
import 'package:crise_apps/screen/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:crise_apps/screen/home_page%20copy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Auth auth = Auth();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController register = TextEditingController();
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
        // appBar: AppBar(title: Text("SING UP")),
        body: Form(
            key: keyForm,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(children: [
                  Icon(
                    Icons.sunny,
                    size: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Welcome! Please Sign in to Continue",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //fullname user
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextFormField(
                      validator: ((value) {
                        return email.value.text.isEmpty
                            ? "Cannot be empty"
                            : null;
                      }),
                      // controller: email,
                      decoration: InputDecoration(
                          // contentPadding: EdgeInsets.only(left: 35.0),
                          filled: true,
                          fillColor: Color.fromARGB(255, 225, 225, 218),
                          prefixIconColor: Colors.amberAccent,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          labelStyle: const TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          label: Text(
                            "Fullname",
                            style: TextStyle(fontSize: 18),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //email user
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextFormField(
                      validator: ((value) {
                        return email.value.text.isEmpty
                            ? "Cannot be empty"
                            : null;
                      }),
                      controller: email,
                      decoration: InputDecoration(
                          // contentPadding: EdgeInsets.only(left: 35.0),
                          filled: true,
                          fillColor: Color.fromARGB(255, 225, 225, 218),
                          prefixIconColor: Colors.amberAccent,
                          prefixIcon: const Icon(
                            Icons.mail,
                            color: Colors.grey,
                          ),
                          labelStyle: const TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          label: Text(
                            "Email",
                            style: TextStyle(fontSize: 18),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextFormField(
                      validator: ((value) {
                        return email.value.text.isEmpty
                            ? "Cannot be empty"
                            : null;
                      }),
                      controller: password,
                      decoration: InputDecoration(
                          // contentPadding: EdgeInsets.only(left: 35.0),
                          filled: true,
                          fillColor: Color.fromARGB(255, 225, 225, 218),
                          prefixIconColor: Colors.amberAccent,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          labelStyle: const TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          label: Text(
                            "Password",
                            style: TextStyle(fontSize: 18),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: MaterialButton(
                      onPressed: () {
                        if (keyForm.currentState!.validate()) {
                          auth.registerUser(email.text, password.text, context);
                        }
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (_) => SignInPage()),
                            (route) => false); //Inzilations untuk push
                      },
                      minWidth: double.infinity,
                      height: 55,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      color: Color.fromARGB(255, 60, 207, 65),
                      child: const Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (_) => SignInPage()),
                                (route) => false);
                          },
                          child: const Text(
                            "Already Have Account? Login",
                            style: TextStyle(color: Colors.blue),
                          )))
                ]),
              ),
            )));
  }
}
