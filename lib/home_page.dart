import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int currentPageIndex = 0;
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
      body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: const SizedBox(width: 200, height: 50),
              )
            ],
          )),
      bottomNavigationBar: NavigationBar(
          destinations: const <Widget>[
            NavigationDestination(
                label: 'Home', icon: Icon(Icons.home, color: Colors.white60)),
            NavigationDestination(
                label: 'Discover',
                icon: Icon(Icons.explore, color: Colors.white60)),
            NavigationDestination(
                label: 'Leaderboard',
                icon: Icon(
                  Icons.leaderboard,
                  color: Colors.white60,
                )),
            NavigationDestination(
                label: 'Profile',
                icon: Icon(
                  Icons.person,
                  color: Colors.white60,
                ))
          ],
          backgroundColor: const Color.fromARGB(255, 73, 69, 79),
          elevation: 10,
          onDestinationSelected: (int index) {
            setState(() {
              switch (index) {
                case 0:
                case 1:
                case 2:
                case 3:
              }
            });
          }),
    );
  }
}
