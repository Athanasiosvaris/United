import 'package:flutter/material.dart';
import 'package:united/pages/registration/signup/signup_page.dart';

class leaderboard_maths extends StatefulWidget {
  const leaderboard_maths({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _leaderboard_maths createState() => _leaderboard_maths();
}

class _leaderboard_maths extends State<leaderboard_maths> {
  int? sexChoice = 0;
  List<String> sex = ["Maths", "Physics", "Chem", "Coding"];

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
                color: const Color.fromARGB(255, 89, 61, 167),
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
                color: const Color.fromARGB(255, 89, 61, 167),
              ),
              Row(
                children: <Widget>[
                  Container(
                      height: 120,
                      width: 202,
                      color: const Color.fromARGB(255, 89, 61, 167),
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
                    color: const Color.fromARGB(255, 89, 61, 167),
                    child: const Icon(
                      Icons.accessible_forward,
                      size: 50,
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 203,
                    color: const Color.fromARGB(255, 89, 61, 167),
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
                thickness: 1,
              ),
              const SizedBox(
                //Etsi vazo empty space
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
                alignment: Alignment.center,
                child: Wrap(
                  spacing: 5.0,
                  children: List<Widget>.generate(
                    4,
                    (int index) {
                      return ChoiceChip(
                        label: Text(
                            style: const TextStyle(fontSize: 20), sex[index]),
                        selected: sexChoice == index,
                        elevation: 10,
                        selectedColor: const Color.fromARGB(255, 227, 199, 240),
                        backgroundColor: Colors.white,
                        onSelected: (bool selected) {
                          setState(() {
                            sexChoice = selected ? index : null;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
              ),
              // ignore: prefer_const_literals_to_create_immutables
              Expanded(
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '1.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.accessible_forward,
                      size: 50,
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Giorgos Vlachopoulos',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Roboto",
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '150',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Serif",
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Expanded(
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '2.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.accessible_forward,
                      size: 50,
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Athanasios Varis',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '120',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Expanded(
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '3.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.accessible_forward,
                      size: 50,
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Dimitrios Vasios',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '110',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Expanded(
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '3.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.face,
                      size: 50,
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Dimitrios Vasios',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '110',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ])));
  }
}
