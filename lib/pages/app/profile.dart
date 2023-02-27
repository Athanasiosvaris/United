import 'package:flutter/material.dart';
import 'package:united/components/profile_description.dart';
import 'package:united/components/profile_panel.dart';
import 'package:united/components/description.dart';

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
        body: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage('assets/images/person.png'))),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ProfileDescription(
                          description: 'vass99',
                          color: Color.fromARGB(255, 217, 217, 217))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ProfileDescription(
                              description: 'Contributor level 10',
                              color: Color.fromARGB(255, 217, 217, 217)),
                          Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0)),
                                  color: Color.fromARGB(255, 217, 217, 217),
                                ),
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(4),
                                child: const Icon(Icons.badge)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            ProfileDescription(
                                description: 'Score 135',
                                color: Color.fromARGB(255, 217, 217, 217)),
                            ProfileDescription(
                                description: 'Top 5%',
                                color: Color.fromARGB(255, 217, 217, 217))
                          ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          ProfileDescription(
                              description: 'Computer Science',
                              color: Color.fromARGB(255, 217, 217, 217))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
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
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: const Divider(
              color: Color.fromARGB(255, 106, 105, 105),
              thickness: 1,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 65,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      color: Color.fromARGB(255, 234, 221, 255),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          alignment: Alignment.bottomCenter,
                          child: const Icon(
                            Icons.emoji_emotions,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          alignment: Alignment.topCenter,
                          child: const Text(
                            'Follow',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 65,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      color: Color.fromARGB(255, 234, 221, 255),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          alignment: Alignment.bottomCenter,
                          child: const Icon(
                            Icons.reviews_rounded,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          alignment: Alignment.topCenter,
                          child: const Text(
                            'Review',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 65,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      color: Color.fromARGB(255, 234, 221, 255),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          alignment: Alignment.bottomCenter,
                          child: const Icon(
                            Icons.message,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          alignment: Alignment.topCenter,
                          child: const Text(
                            'Message',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: const Divider(
              color: Color.fromARGB(255, 106, 105, 105),
              thickness: 1,
            ),
          ),
          SizedBox(
            height: 80,
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 56, 30, 114),
              bottom: TabBar(
                  indicatorColor: Colors.white,
                  labelColor: Colors.black,
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                        icon: Icon(
                          Icons.calculate,
                          color: Colors.white,
                        ),
                        child: Text(
                          'About',
                          style: TextStyle(color: Colors.white),
                        )),
                    Tab(
                        icon: Icon(Icons.numbers, color: Colors.white),
                        child: Text('Statistics',
                            style: TextStyle(color: Colors.white))),
                    Tab(
                        icon: Icon(Icons.reviews, color: Colors.white),
                        child: Text('Reviews',
                            style: TextStyle(color: Colors.white))),
                  ]),
            ),
          ),
          Expanded(
              child: Container(
            color: const Color.fromARGB(255, 246, 237, 255),
            child: TabBarView(controller: _tabController, children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ProfilePanel(title: 'City', subtitle: 'Athens'),
                                ProfilePanel(
                                    title: 'University',
                                    subtitle:
                                        'School of Electrical Engineering, NTUA'),
                                ProfilePanel(
                                    title: 'Email',
                                    subtitle: 'dimitrvas99@gmail.com'),
                                ProfilePanel(
                                    title: 'LinkedIn',
                                    subtitle:
                                        'https://www.linkedin.com/in/dv99/')
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Description(title: 'Interests')),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ProfilePanel(
                                    title: 'Fields',
                                    subtitle:
                                        'Computer Science\nElectrical Engineering'),
                                ProfilePanel(
                                    title: 'Favoutite Courses',
                                    subtitle:
                                        'Algorithms\nHuman Computer Interaction\nVLSI\nNeural Networks'),
                                ProfilePanel(
                                    title: 'Hobbies',
                                    subtitle: 'Guitas\nBasketball\nMovies'),
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Description(title: 'Projects')),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ProfilePanel(
                                    length: 250,
                                    title: 'Prom Racing',
                                    subtitle:
                                        'Participated in Prom Racing from 2020 to 2022 as an electrical engineer'),
                                ProfilePanel(
                                    title: 'HCI Project',
                                    length: 250,
                                    subtitle: 'Created a prototype app'),
                                ProfilePanel(
                                    title: 'Algorithms',
                                    length: 250,
                                    subtitle:
                                        'Solved interesting algorithmic challenges'),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ProfilePanel(title: 'Grade', subtitle: '7.8'),
                                ProfilePanel(
                                    title: 'Total Courses Passed',
                                    subtitle: '45'),
                                ProfilePanel(
                                    title: 'Completion Rate', subtitle: '80%'),
                                ProfilePanel(
                                    title: 'Total Score', subtitle: '135')
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Description(title: 'Grade Progression')),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/images/grades_white.png')),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Description(title: 'Reviews')),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          height: 200,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/images/reviews_white.png')),
                              shape: BoxShape.rectangle),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Description(title: 'Athanasios Varis')),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ProfilePanel(
                                    length: 250,
                                    title: 'Great Teacher',
                                    subtitle:
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac est diam. Phasellus interdum orci nec lacus malesuada facilisis. Nunc nec sapien libero. Aliquam non elit sem. Phasellus placerat sodales malesuada. Maecenas porttitor justo sed pellentesque tincidunt. Nullam quis sem leo. Duis eget molestie neque.')
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child:
                            const Description(title: 'Giorgos Vlachopoulos')),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ProfilePanel(
                                    title: 'Great Teacher',
                                    length: 250,
                                    subtitle:
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac est diam. Phasellus interdum orci nec lacus malesuada facilisis. Nunc nec sapien libero. Aliquam non elit sem. Phasellus placerat sodales malesuada. Maecenas porttitor justo sed pellentesque tincidunt. Nullam quis sem leo. Duis eget molestie neque.')
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Description(title: 'Dimitris Vasios')),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ProfilePanel(
                                    title: 'Great Teacher',
                                    length: 250,
                                    subtitle:
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac est diam. Phasellus interdum orci nec lacus malesuada facilisis. Nunc nec sapien libero. Aliquam non elit sem. Phasellus placerat sodales malesuada. Maecenas porttitor justo sed pellentesque tincidunt. Nullam quis sem leo. Duis eget molestie neque.')
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child:
                            const Description(title: 'Giannis Papapopoulos')),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ProfilePanel(
                                    title: 'Great Teacher',
                                    length: 250,
                                    subtitle:
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac est diam. Phasellus interdum orci nec lacus malesuada facilisis. Nunc nec sapien libero. Aliquam non elit sem. Phasellus placerat sodales malesuada. Maecenas porttitor justo sed pellentesque tincidunt. Nullam quis sem leo. Duis eget molestie neque.')
                              ],
                            )),
                      ),
                    ),
                  ])),
            ]),
          )),
        ]));
  }
}
