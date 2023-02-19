import 'package:flutter/material.dart';
import 'package:united/signup_page.dart';

//TextEditingController nameController = TextEditingController();
//TextEditingController passwordController = TextEditingController();

class leaderboard_maths extends StatefulWidget {
  const leaderboard_maths({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _leaderboard_maths createState() => _leaderboard_maths();
}

class _leaderboard_maths extends State<leaderboard_maths> {
  // final nameController = TextEditingController();
  // final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 196, 208),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                color: Color.fromARGB(255, 89, 61, 167),
                child: const Text(
                  'Leaderboard',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              Container(
                height: 50,
                color: Color.fromARGB(255, 89, 61, 167),
              ),
              Row(
                children: <Widget>[
                  Container(
                      height: 120,
                      width: 202,
                      color: Color.fromARGB(255, 89, 61, 167),
                      child: const Text(
                        'Your ranking :\n 1st',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                  Container(
                      height: 120,
                      width: 202,
                      color: Color.fromARGB(255, 89, 61, 167),
                      child: const Text(
                        'Icon symbol',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                  Container(
                    height: 120,
                    width: 203,
                    color: Color.fromARGB(255, 89, 61, 167),
                    child: const Text(
                      'Your points:\n 150',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
              // ignore: prefer_const_constructors
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
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
                    color: Color.fromARGB(255, 14, 77, 192),
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
              const SizedBox(
                //Etsi vazo empty space
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 60),
                      elevation: 10,
                      shape: const StadiumBorder(),
                      backgroundColor: const Color.fromARGB(255, 89, 61, 167)),
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
            ])));
  }
}
