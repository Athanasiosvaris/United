import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _App createState() => _App();
}

class _App extends State<App> {
  final _pages = const [
    App(),
    // DiscoverPage(),
    // LeaderBoardPage(),
    // ProfilePage()
  ];
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
      body: _pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
          destinations: const <Widget>[
            NavigationDestination(label: 'Home', icon: Icon(Icons.home)),
            NavigationDestination(label: 'Discover', icon: Icon(Icons.explore)),
            NavigationDestination(
                label: 'Leaderboard',
                icon: Icon(
                  Icons.leaderboard,
                )),
            NavigationDestination(
                label: 'Profile',
                icon: Icon(
                  Icons.person,
                ))
          ],
          onDestinationSelected: (int index) {
            setState(() {
             currentPageIndex = index;
            });
          }),
    );
  }
}
