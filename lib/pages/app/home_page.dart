// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 196, 208),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Welcome Dimitris',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            backgroundColor: const Color.fromARGB(255, 89, 61, 167)),
        body: SingleChildScrollView(
          //SingleChildScrollView == Widget to scroll down  as much as I need to view everything
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          color: Colors.grey,
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Container(color: Colors.grey, width: 50)
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    height: 200,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                            width: 100,
                            height: 100,
                            color: Colors.purple,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "7.2!!!\n Average",
                                textAlign: TextAlign.center,
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 150,
                            height: 100,
                            color: Colors.purple,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Congrats!!!\n You belong to the 15% of the university",
                                textAlign: TextAlign.center,
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15),
                              ),
                            )
                            // ignore: prefer_const_constructors

                            )
                      ],
                    ),
                  )
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 101, 98, 108),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 70,
                    height: 20,
                    child: Text(
                      "Activity",
                      textAlign: TextAlign.center,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 52, 56),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 600,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.local_library_rounded,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Athanasios Varis ranked at top 10\n Say congrats to him",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 52, 56),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 600,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.local_library_rounded,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Athanasios Varis ranked at top 10\n Say congrats to him",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 52, 56),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 600,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.local_library_rounded,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Athanasios Varis ranked at top 10\n Say congrats to him",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 101, 98, 108),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 200,
                    height: 20,
                    child: Text(
                      "Recommended profiles",
                      textAlign: TextAlign.center,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 52, 56),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 600,
                    height: 50,
                    child:
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 89, 61, 167),
                              ),
                              child: Center(
                                child: Text(
                                  'A',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Athanasios Varis",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 52, 56),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 600,
                    height: 50,
                    child:
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 89, 61, 167),
                              ),
                              child: Center(
                                child: Text(
                                  'G',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Giorgos Vlachopoulos",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 52, 56),
                      borderRadius:
                          BorderRadius.circular(10), // Set the radius to 10
                    ),
                    width: 600,
                    height: 50,
                    child:
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 89, 61, 167),
                              ),
                              child: Center(
                                child: Text(
                                  'D',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Dimitris Vasios",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
