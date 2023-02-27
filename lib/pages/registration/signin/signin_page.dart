import 'package:flutter/material.dart';
import 'package:united/routes.dart';

TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPage();
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
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    elevation: 10,
                    child: TextField(
                      controller: passwordController,
                      showCursor: true,
                      cursorColor: Colors.black,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Username or Email',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(20.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        hintStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    elevation: 10,
                    child: TextField(
                      controller: passwordController,
                      cursorColor: Colors.black,
                      obscureText: true,
                      obscuringCharacter: '*',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(20.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        hintStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 20, 10, 5),
                    child: const Text(
                      'Forgot your password?',
                      style: TextStyle(fontSize: 15),
                    )),
                Row(children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 5, 10, 5),
                    child: const Text(
                      'Don`t have an account?',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ]),
                Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      const Text('Click ', style: TextStyle(fontSize: 15)),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(238, 157, 61, 206),
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('here'),
                      ),
                      const SizedBox(
                        child: Text(
                          'to sign up.',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
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
                                fixedSize: const Size(150, 60),
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
                                fixedSize: const Size(150, 60),
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
                              Navigator.pushNamed(context, app);
                            }),
                      ))
                    ],
                  ),
                )
              ],
            )));
  }
}
