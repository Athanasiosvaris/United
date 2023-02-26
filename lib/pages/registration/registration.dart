import 'package:flutter/material.dart';
import 'package:united/routes.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _Registration();
}

class _Registration extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 196, 208),

        // ignore: prefer_const_constructors
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                const SizedBox(
                  //Etsi vazo empty space
                  height: 50.00,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //Center Row contents horizontally
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50.00,
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
                Container(
                  height: 300.00,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.house,
                    size: 150,
                  ),
                ),
                Container(
                    height: 80,
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 5,
                          shape: const StadiumBorder(),
                          backgroundColor:
                              const Color.fromARGB(255, 89, 61, 167)),
                      child: const Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, signup);
                      },
                    )),
                Container(
                    height: 80,
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            shape:
                                const StadiumBorder(), //Etsi kano to button rechtangle with circular
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255)),
                        child: const Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, signin);
                        })),
              ],
            )));
  }
}
