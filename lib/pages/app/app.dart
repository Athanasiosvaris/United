import 'package:flutter/material.dart';
import 'package:united/pages/app/home_page.dart';
import 'package:united/pages/app/leaderboard_maths.dart';
import 'package:united/pages/app/discover_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _App createState() => _App();
}

class _App extends State<App> {
  final _pages = const [
    HomePage(),
    DiscoverPage(),
    leaderboard_maths(),
    // ProfilePage()
  ];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 196, 208),
      body: _pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
          backgroundColor: Color.fromARGB(83, 122, 122, 122),
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
