import 'package:flutter/material.dart';
import 'package:united/pages/app/home_page.dart';
import 'package:united/pages/app/leaderboard.dart';
import 'package:united/pages/app/discover_page.dart';
import 'package:united/pages/app/profile.dart';
// import 'package:kommunicate_flutter/kommunicate_flutter.dart';

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
    Leaderboard(),
    ProfilePage()
  ];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 196, 208),
      body: _pages[currentPageIndex],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     try {
      //       dynamic conversationObject = {
      //         'appId':
      //             '8f0684bd6fd683384b4b1d62b50457e0', // The [APP_ID](https://dashboard.kommunicate.io/settings/install) obtained from kommunicate dashboard.
      //       };
      //       dynamic result = await KommunicateFlutterPlugin.buildConversation(
      //           conversationObject);
      //       // ignore: avoid_print
      //       print("Conversation builder success : " + result.toString());
      //     } on Exception catch (e) {
      //       print("Conversation builder error occurred : " + e.toString());
      //     }
      //   },
      //   backgroundColor: const Color.fromARGB(255, 201, 215, 202),
      //   child: const Icon(Icons.chat),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(
          backgroundColor: const Color.fromARGB(255, 98, 91, 113),
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            NavigationDestination(
                label: 'Discover',
                icon: Icon(
                  Icons.explore,
                  color: Colors.white,
                )),
            NavigationDestination(
                label: 'Leaderboard',
                icon: Icon(
                  Icons.leaderboard,
                  color: Colors.white,
                )),
            NavigationDestination(
                label: 'Profile',
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
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
