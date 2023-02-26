import 'package:flutter/material.dart';
import 'package:united/components/leaderboard_box.dart';
import 'package:united/components/profile_description.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePage();
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Profile',
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
                padding: const EdgeInsets.all(10),
                height: 230,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(
                                '../../../assets/images/person.png'),
                          ),
                        ),
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                              color: Color.fromARGB(255, 217, 217, 217),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'vas99',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                        width: 260,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const ProfileDescription(
                                    width: 200,
                                    height: 30,
                                    description: 'Contributor level 10',
                                    color: Color.fromARGB(255, 217, 217, 217)),
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                      height: 30,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            bottomLeft: Radius.circular(10.0)),
                                        color:
                                            Color.fromARGB(255, 217, 217, 217),
                                      ),
                                      alignment: Alignment.center,
                                      child: const Icon(Icons.badge)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  ProfileDescription(
                                      width: 130,
                                      height: 30,
                                      description: 'Score 4.37/5',
                                      color:
                                          Color.fromARGB(255, 217, 217, 217)),
                                  ProfileDescription(
                                      width: 100,
                                      height: 30,
                                      description: 'Top 5%',
                                      color: Color.fromARGB(255, 217, 217, 217))
                                ]),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                ProfileDescription(
                                    width: 200,
                                    height: 30,
                                    description: 'Computer Science',
                                    color: Color.fromARGB(255, 217, 217, 217))
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 50,
                                  width: 100,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Followers\n1145',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Reviews\n24',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                ),
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
                        Tab(text: 'About', icon: Icon(Icons.calculate)),
                        Tab(text: 'Statistics', icon: Icon(Icons.numbers)),
                        Tab(text: 'Reviews', icon: Icon(Icons.reviews)),
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
              ])),
            ])));
  }
}
