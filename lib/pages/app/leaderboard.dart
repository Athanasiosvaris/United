import 'package:flutter/material.dart';
import 'package:united/components/leaderboard_box.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Leaderboard createState() => _Leaderboard();
}

class _Leaderboard extends State<Leaderboard>
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
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Container(
                  color: const Color.fromARGB(255, 204, 125, 228),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(top: 40, bottom: 40),
                        alignment: Alignment.center,
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
                        padding: const EdgeInsets.only(top: 40, bottom: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                                color: Color.fromARGB(255, 204, 125, 228),
                                child: const Text(
                                  'Your ranking :\n 1st',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                )),
                            Container(
                              color: Color.fromARGB(255, 204, 125, 228),
                              child: Image.asset(
                                'images/Giorgos.png',
                              ),
                            ),
                            Container(
                              color: Color.fromARGB(255, 204, 125, 228),
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
                      ),
                    ],
                  )),
              const Divider(
                color: Color.fromARGB(255, 106, 105, 105),
                thickness: 1,
              ),
              SizedBox(
                height: 80,
                child: AppBar(
                  bottom:
                      TabBar(controller: _tabController, tabs: const <Widget>[
                    Tab(text: 'Math', icon: Icon(Icons.calculate)),
                    Tab(text: 'Physics', icon: Icon(Icons.public)),
                    Tab(text: 'Chemistry', icon: Icon(Icons.science)),
                    Tab(text: 'Coding', icon: Icon(Icons.computer))
                  ]),
                ),
              ),
              Expanded(
                  child:
                      TabBarView(controller: _tabController, children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(children: const <Widget>[
                    LeaderboardBox(
                      number: '1',
                      name: 'Giorgos Vlachopoulos',
                      score: '150',
                    ),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                    LeaderboardBox(
                        number: '2', name: 'Athanasios Varis', score: '130'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                    LeaderboardBox(
                        number: '3', name: 'Dimitrios Vasios', score: '100'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(children: const <Widget>[
                    LeaderboardBox(
                        number: '1',
                        name: 'Giorgos Vlachopoulos',
                        score: '150'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                    LeaderboardBox(
                        number: '2', name: 'Athanasios Varis', score: '130'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                    LeaderboardBox(
                        number: '3', name: 'Dimitrios Vasios', score: '100'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(children: const <Widget>[
                    LeaderboardBox(
                        number: '1',
                        name: 'Giorgos Vlachopoulos',
                        score: '150'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                    LeaderboardBox(
                        number: '2', name: 'Athanasios Varis', score: '130'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                    LeaderboardBox(
                        number: '3', name: 'Dimitrios Vasios', score: '100'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(children: const <Widget>[
                    LeaderboardBox(
                        number: '1',
                        name: 'Giorgos Vlachopoulos',
                        score: '150'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                    LeaderboardBox(
                        number: '2', name: 'Athanasios Varis', score: '130'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                    LeaderboardBox(
                        number: '3', name: 'Dimitrios Vasios', score: '100'),
                    Divider(
                      color: Color.fromARGB(255, 106, 105, 105),
                      thickness: 1,
                    ),
                  ]),
                ),
              ])),
            ])));
  }
}
