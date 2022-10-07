import 'package:crise_apps/auth/auth.dart';
import 'package:crise_apps/screen/home_page%20copy.dart';
import 'package:crise_apps/screen/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Auth auth = Auth();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // TextEditingController login = TextEditingController();
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
                      "Welcome! Please Login to Continue",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(builder: (_) => HomePage()),
                          //     (route) => false); //Inzilations untuk push
                        }
                      },
                      minWidth: double.infinity,
                      height: 55,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      color: Color.fromARGB(255, 60, 207, 65),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: Text("Dont Have Account? ")),
                  Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => RegisterScreen()),
                                (route) => false);
                          },
                          child: const Text(
                            "Click here to Sign Up",
                            style: TextStyle(color: Colors.blue),
                          )))
                ]),
              ),
            )));

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         // key: keyForm,
//         child: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           //Images logo
//           children: [
//             Icon(
//               Icons.sunny,
//               size: 200,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             //Welome Text to user
//             Text(
//               "Welcome! Please Sign in to Continue",
//               style: GoogleFonts.bebasNeue(
//                 fontSize: 30,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             //Email Textfield
//             // TextFormField(
//             //   validator: ((value) {
//             //     return email.value.text.isEmpty ? "Cannot be Empty" : null;
//             //   }),
//             // ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 225, 225, 218),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.only(left: 20.0),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         prefixIcon: Icon(
//                           Icons.email,
//                           color: Colors.blueGrey,
//                         ),
//                         border: InputBorder.none,
//                         hintText: "Email"),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             //Password TextField
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 234, 230, 230),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.only(left: 20.0),
//                   child: TextField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                         prefixIcon: Icon(
//                           Icons.lock,
//                           color: Colors.blueGrey,
//                         ),
//                         border: InputBorder.none,
//                         hintText: "Password"),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: MaterialButton(
//                 onPressed: () {
//                   Navigator.pushAndRemoveUntil(
//                       context,
//                       MaterialPageRoute(builder: (_) => const HomePage()),
//                       (route) => false);
//                 },
//                 child: Container(
//                   padding: EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 60, 207, 65),
//                       borderRadius: BorderRadius.circular(20)),
//                   child: Center(
//                       child: Text(
//                     "Sign In",
//                     style: TextStyle(
//                         color: Color.fromARGB(221, 255, 255, 255),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20),
//                   )),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text("Don't have Account? "),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushAndRemoveUntil(
//                     context,
//                     MaterialPageRoute(builder: (_) => RegisterScreen()),
//                     (route) => false);
//               },
//               child: Text("Click here to sign up",
//                   style: TextStyle(
//                       color: Colors.blue, fontWeight: FontWeight.bold)),
//             )
//           ],
//         )),
//       ),
//     );
//     ;
//   }
// }
// //safe area
  }
}
