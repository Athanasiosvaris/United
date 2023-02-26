import 'package:flutter/material.dart';
import 'package:united/components/leaderboard_box.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  State<Leaderboard> createState() => _Leaderboard();
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Welcome Dimitris',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 89, 61, 167),
        ),
        backgroundColor: const Color.fromARGB(255, 202, 196, 208),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                    color: const Color.fromARGB(255, 154, 130, 219),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 40, bottom: 20),
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
                              const Text(
                                'Your ranking :\n 1st',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              Image.asset(
                                'images/Giorgos.png',
                              ),
                              const Text(
                                'Your points:\n 150',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              const Divider(
                color: Color.fromARGB(255, 106, 105, 105),
                thickness: 1,
              ),
              SizedBox(
                height: 80,
                child: AppBar(
                  backgroundColor: const Color.fromARGB(255, 202, 196, 208),
                  bottom: TabBar(
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      controller: _tabController,
                      tabs: const <Widget>[
                        Tab(text: 'Math', icon: Icon(Icons.calculate)),
                        Tab(text: 'Physics', icon: Icon(Icons.public)),
                        Tab(text: 'Chem', icon: Icon(Icons.science)),
                        Tab(text: 'Coding', icon: Icon(Icons.computer))
                      ]),
                ),
              ),
              Expanded(
                  child:
                      TabBarView(controller: _tabController, children: <Widget>[
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(children: const <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '1',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '2',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '3',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '4',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '5',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '6',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '7',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '8',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '9',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                    ]),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(children: const <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '1',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '2',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '3',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '4',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '5',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '6',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '7',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '8',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '9',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                    ]),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(children: const <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '1',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '2',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '3',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '4',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '5',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '6',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '7',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '8',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '9',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                    ]),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(children: const <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '1',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '2',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '3',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '4',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '5',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '6',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                        imagePath: '../../../assets/images/Dimi.png',
                        number: '7',
                        name: 'Giorgos Vlachopoulos',
                        score: '150',
                      ),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/thanasis.png',
                          number: '8',
                          name: 'Athanasios Varis',
                          score: '130'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                      LeaderboardBox(
                          imagePath: '../../../assets/images/Giorgos.png',
                          number: '9',
                          name: 'Dimitrios Vasios',
                          score: '100'),
                      Divider(
                        color: Color.fromARGB(255, 106, 105, 105),
                        thickness: 1,
                      ),
                    ]),
                  ),
                ),
              ])),
            ])));
  }
}
