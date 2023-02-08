import 'package:flutter/material.dart';
import 'package:united/signup_page.dart';
import 'main.dart';

TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class Signin_page extends StatefulWidget {
  const Signin_page({Key? key}) : super(key: key);

  @override
  _Signin_page createState() => _Signin_page();
}

class _Signin_page extends State<Signin_page> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 220, 220),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                SizedBox(
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
                    Icon(
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
                SizedBox(
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
                SizedBox(
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
                      fillColor: Color.fromARGB(238, 157, 61, 206),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
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
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
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
                      foregroundColor: Color.fromARGB(238, 157, 61, 206),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Signup_page()));
                    },
                    child: Text('here'),
                  ),
                  Container(
                    child: const Text(
                      'to sign up.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ]),
                SizedBox(
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
                                    StadiumBorder(), //Etsi kano to button rechtangle with circular
                                backgroundColor:
                                    Color.fromARGB(238, 157, 61, 206)),
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
                      color: Color.fromARGB(255, 240, 220, 220),
                    ),
                    Container(
                        height: 50,
                        width: 200,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape:
                                    StadiumBorder(), //Etsi kano to button rechtangle with circular
                                backgroundColor:
                                    Color.fromARGB(238, 157, 61, 206)),
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
                                      builder: (context) => Signup_page()));
                            }))
                  ],
                )
              ],
            )));
  }
}
