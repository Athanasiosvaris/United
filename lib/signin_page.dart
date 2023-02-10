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
        backgroundColor: const Color.fromARGB(255, 202, 196, 208),
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
                  height: 35,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: PhysicalModel(
                    borderRadius: BorderRadius.circular(20.0),
                    elevation: 10,
                    color: const Color.fromARGB(255, 154, 130, 219),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 154, 130, 219),
                        hintText: 'Username or Email',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: PhysicalModel(
                    borderRadius: BorderRadius.circular(20.0),
                    elevation: 10,
                    color: Colors.white,
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled:
                            true, //Gia na parei to fillColor prepei filled == true
                        // ignore: prefer_const_constructors
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 10, 5),
                    child: const Text(
                      'Forgot your password?',
                      style: TextStyle(fontSize: 15),
                    )),
                Row(children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
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
                              builder: (context) => const SignUpPage()));
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
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerLeft,
                        height: 80,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 60),
                                elevation: 10,
                                shape: const StadiumBorder(),
                                backgroundColor:
                                    const Color.fromARGB(255, 89, 61, 167)),
                            child: const Text(
                              'Back',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      )),
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerRight,
                        height: 80,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 60),
                                elevation: 10,
                                shape:
                                    const StadiumBorder(), //Etsi kano to button rechtangle with circular
                                backgroundColor:
                                    const Color.fromARGB(255, 89, 61, 167)),
                            child: const Text(
                              'Next',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpPage()));
                            }),
                      ))
                    ],
                  ),
                )
              ],
            )));
  }
}
