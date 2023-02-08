import 'package:flutter/material.dart';
import 'package:united/signup_page.dart';

TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInPage createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 220, 220),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                const SizedBox(
                  //Etsi vazo empty space
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //Center Row contents horizontally
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'UNI-TED',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ),
                    const Icon(
                      Icons.school_outlined,
                      size: 40,
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Designed by students for students!',
                      style: TextStyle(fontSize: 20),
                    )),
                const SizedBox(
                  //Etsi vazo empty space
                  height: 35,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Welcome Back!',
                      style: TextStyle(fontSize: 40),
                    )),
                const SizedBox(
                  //Etsi vazo empty space
                  height: 35,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      filled:
                          true, //Gia na parei to fillColor prepei filled == true
                      fillColor: const Color.fromARGB(238, 157, 61, 206),
                      hintText: 'Username',
                      hintStyle: const TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(238, 157, 61, 206)),
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
                      // ignore: prefer_const_constructors
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black),
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
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      'Forgot your password?',
                      style: TextStyle(fontSize: 15),
                    )),
                Row(children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      'Don`t have an account? Click',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(238, 157, 61, 206),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                    child: const Text('here'),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: const Text(
                      'to sign up.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ]),
                const SizedBox(
                  //Etsi vazo empty space
                  height: 70,
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
                                    // ignore: prefer_const_constructors
                                    StadiumBorder(), //Etsi kano to button rechtangle with circular
                                backgroundColor:
                                    const Color.fromARGB(238, 157, 61, 206)),
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context); // Etsi pao piso
                            })),
                    Container(
                      height: 50,
                      width: 100,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      color: const Color.fromARGB(255, 240, 220, 220),
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
                                      builder: (context) => SignUpPage()));
                            }))
                  ],
                )
              ],
            )));
  }
}
