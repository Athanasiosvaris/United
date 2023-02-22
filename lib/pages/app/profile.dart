// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:united/components/leaderboard_box.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 196, 208),
      appBar: AppBar(),
      body: SingleChildScrollView(
        //SingleChildScrollView == Widget to scroll down  as much as I need to view everything
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 100,
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Color.fromARGB(180, 102, 204, 241),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Icon(
                                    Icons.add_reaction_outlined,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Follow",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: Color.fromARGB(180, 102, 204, 241),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Icon(
                                    Icons.reviews,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Review",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Expanded(child: Container()),
                          Container(
                            width: 100,
                            height: 100,
                            color: Color.fromARGB(180, 102, 204, 241),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Icon(
                                    Icons.message_rounded,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Message",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              SizedBox(height: 50),
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(Icons.home_work_outlined)),
                            Text('Athens'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.school_outlined),
                            ),
                            Text(
                                'School of Electrical & Computer engineering, NTUA '),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.mail_outline),
                            ),
                            Text('dimitrisv@hotmail.com'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.facebook_outlined),
                            ),
                            Text('https://'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
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
                      "Interests",
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(Icons.home_work_outlined)),
                            Text('Athens'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.school_outlined),
                            ),
                            Text(
                                'School of Electrical & Computer engineering, NTUA '),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.mail_outline),
                            ),
                            Text('dimitrisv@hotmail.com'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.facebook_outlined),
                            ),
                            Text('https://'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
