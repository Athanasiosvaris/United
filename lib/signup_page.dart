import 'package:flutter/material.dart';
import 'package:united/signin_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPage createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final linkedinController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final uniController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 220, 220),
        body: Padding(
            padding: const EdgeInsets.all(5),
            child: ListView(
              children: <Widget>[
                const SizedBox(
                  //Etsi vazo empty space
                  height: 50,
                ),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    // padding: const EdgeInsets.all(5),
                    child: const Text(
                      'Become Part of the community!',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    // padding: const EdgeInsets.all(5),
                    child: const Text(
                      'But First...',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    // padding: const EdgeInsets.all(5),
                    child: const Text(
                      'Tell Us Something About Yourself',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      filled:
                          true, //Gia na parei to fillColor prepei filled == true
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      hintText: 'Enter your full name',
                      hintStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled:
                          true, //Gia na parei to fillColor prepei filled == true
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: linkedinController,
                    decoration: InputDecoration(
                      filled:
                          true, //Gia na parei to fillColor prepei filled == true
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      hintText: 'Enter your Linkedin link',
                      hintStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      filled:
                          true, //Gia na parei to fillColor prepei filled == true
                      // ignore: prefer_const_constructors
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      hintText: 'Enter your username',
                      hintStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      filled:
                          true, //Gia na parei to fillColor prepei filled == true
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      hintText: 'Enter your password',
                      hintStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: uniController,
                    decoration: InputDecoration(
                      filled:
                          true, //Gia na parei to fillColor prepei filled == true
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      hintText: 'Enter your university and department',
                      hintStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        height: 50,
                        width: 200,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape:
                                    const StadiumBorder(), //Etsi kano to button rechtangle with circular
                                backgroundColor:
                                    const Color.fromARGB(238, 157, 61, 206)),
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignInPage())); // Etsi pao piso
                            })),
                    Container(
                      height: 50,
                      width: 100,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      // ignore: prefer_const_constructors
                      color: Color.fromARGB(255, 240, 220, 220),
                    ),
                    Container(
                        height: 50,
                        width: 200,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape:
                                    const StadiumBorder(), //Etsi kano to button rechtangle with circular
                                backgroundColor:
                                    const Color.fromARGB(238, 157, 61, 206)),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpPage()));
                            }))
                  ],
                )
              ],
            )));
  }
}
